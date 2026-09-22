<?php
    // Optional local configuration override (e.g. for custom credentials)
    $local_config = __DIR__ . '/config.local.php';
    if (file_exists($local_config)) {
        include($local_config);
    }

    // Default configuration (Railway Cloud MySQL fallback + environment variable support)
    $server   = getenv('MYSQLHOST') ?: (getenv('DB_HOST') ?: (isset($server) ? $server : 'shortline.proxy.rlwy.net'));
    $user     = getenv('MYSQLUSER') ?: (getenv('DB_USER') ?: (isset($user) ? $user : 'root'));
    $password = getenv('MYSQLPASSWORD') ?: (getenv('DB_PASS') ?: (isset($password) ? $password : 'ooywPxbJVNDvOUTsrjEhySqkJrmtdiUm'));
    $db       = getenv('MYSQLDATABASE') ?: (getenv('DB_NAME') ?: (isset($db) ? $db : 'railway'));
    $port     = (int)(getenv('MYSQLPORT') ?: (getenv('DB_PORT') ?: (isset($port) ? $port : 36111)));

    // Support Railway MYSQL_URL / DATABASE_URL connection string format
    $db_url = getenv('MYSQL_URL') ?: (getenv('DATABASE_URL') ?: (isset($db_url) ? $db_url : null));
    if ($db_url) {
        $parsed = parse_url($db_url);
        if ($parsed) {
            $server   = $parsed['host'] ?? $server;
            $user     = $parsed['user'] ?? $user;
            $password = $parsed['pass'] ?? $password;
            $db       = isset($parsed['path']) ? ltrim($parsed['path'], '/') : $db;
            if (isset($parsed['port'])) {
                $port = (int)$parsed['port'];
            }
        }
    }

    $conn = @mysqli_connect($server, $user, $password, $db, $port);

    if (!$conn) {
        error_log("Database connection error: " . mysqli_connect_error());

        $is_ajax = (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') 
                   || (isset($_SERVER['HTTP_ACCEPT']) && strpos($_SERVER['HTTP_ACCEPT'], 'application/json') !== false)
                   || (basename($_SERVER['PHP_SELF']) == 'login-backend.php');

        if ($is_ajax) {
            header('Content-Type: application/json');
            echo json_encode([
                'status' => 'error',
                'message' => 'Database connection failed. Please verify Railway MySQL credentials.'
            ]);
            exit();
        }

        die("<div style='font-family:sans-serif;padding:40px;text-align:center;'><h2>Database Connection Error</h2><p>" . htmlspecialchars(mysqli_connect_error()) . "</p></div>");
    }
?>