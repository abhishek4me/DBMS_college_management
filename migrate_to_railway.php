<?php
/**
 * Migration Script to Railway MySQL Database
 * 
 * Usage:
 *   php migrate_to_railway.php [connection_url_or_empty_for_interactive]
 * 
 * Example:
 *   php migrate_to_railway.php "mysql://root:password@roundhouse.proxy.rlwy.net:12345/railway"
 */

echo "=========================================================\n";
echo "       Cavatta College Management - Railway Migration     \n";
echo "=========================================================\n\n";

$sql_file = __DIR__ . '/database/railway_sms_migration.sql';
if (!file_exists($sql_file)) {
    die("Error: Migration SQL file not found at: $sql_file\n");
}

$db_url = isset($argv[1]) ? $argv[1] : (getenv('MYSQL_URL') ?: getenv('DATABASE_URL'));

if (!$db_url) {
    echo "Enter your Railway MySQL Connection URL (e.g. mysql://root:pass@host:port/railway)\n";
    echo "or press Enter to specify individual credentials: ";
    $input = trim(fgets(STDIN));
    if (!empty($input)) {
        $db_url = $input;
    }
}

if ($db_url) {
    $parsed = parse_url($db_url);
    if (!$parsed || !isset($parsed['host'])) {
        die("Error: Invalid MySQL Connection URL format.\n");
    }
    $host = $parsed['host'];
    $port = isset($parsed['port']) ? (int)$parsed['port'] : 3306;
    $user = $parsed['user'] ?? 'root';
    $pass = $parsed['pass'] ?? '';
    $dbname = isset($parsed['path']) ? ltrim($parsed['path'], '/') : 'railway';
} else {
    echo "Railway Host (e.g. roundhouse.proxy.rlwy.net): ";
    $host = trim(fgets(STDIN));
    echo "Railway Port (e.g. 12345): ";
    $port = (int)trim(fgets(STDIN));
    echo "Railway User (default 'root'): ";
    $user = trim(fgets(STDIN)) ?: 'root';
    echo "Railway Password: ";
    $pass = trim(fgets(STDIN));
    echo "Railway Database Name (default 'railway'): ";
    $dbname = trim(fgets(STDIN)) ?: 'railway';
}

echo "\nConnecting to Railway MySQL at $host:$port (Database: $dbname)...\n";
$mysqli = @new mysqli($host, $user, $pass, $dbname, $port);

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error . "\n");
}

echo "Connected successfully to Railway MySQL!\n";
echo "Importing migration SQL...\n";

$sql_content = file_get_contents($sql_file);
if ($mysqli->multi_query($sql_content)) {
    do {
        if ($result = $mysqli->store_result()) {
            $result->free();
        }
    } while ($mysqli->more_results() && $mysqli->next_result());
    
    if ($mysqli->errno) {
        echo "Warning during execution: " . $mysqli->error . "\n";
    } else {
        echo "\n>>> Database migration completed successfully! <<<\n";
    }
} else {
    echo "Error executing migration SQL: " . $mysqli->error . "\n";
}

// Ask to write config.local.php
echo "\nWould you like to save these credentials to assets/config.local.php? (y/n): ";
$save = trim(fgets(STDIN));
if (strtolower($save) === 'y' || strtolower($save) === 'yes') {
    $config_content = "<?php\n";
    $config_content .= "// Railway MySQL Configuration\n";
    $config_content .= "\$server   = " . var_export($host, true) . ";\n";
    $config_content .= "\$port     = " . var_export($port, true) . ";\n";
    $config_content .= "\$user     = " . var_export($user, true) . ";\n";
    $config_content .= "\$password = " . var_export($pass, true) . ";\n";
    $config_content .= "\$db       = " . var_export($dbname, true) . ";\n";
    $config_content .= "?>\n";
    file_put_contents(__DIR__ . '/assets/config.local.php', $config_content);
    echo "Saved credentials to assets/config.local.php successfully!\n";
}

$mysqli->close();
echo "Done.\n";
?>
