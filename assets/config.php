<?php
    // Optional local configuration override (e.g. for Railway credentials)
    $local_config = __DIR__ . '/config.local.php';
    if (file_exists($local_config)) {
        include($local_config);
    }

    // Default configuration (supports Railway environment variables & local XAMPP fallback)
    $server   = getenv('MYSQLHOST') ?: (getenv('DB_HOST') ?: (isset($server) ? $server : 'localhost'));
    $user     = getenv('MYSQLUSER') ?: (getenv('DB_USER') ?: (isset($user) ? $user : 'root'));
    $password = getenv('MYSQLPASSWORD') ?: (getenv('DB_PASS') ?: (isset($password) ? $password : ''));
    $db       = getenv('MYSQLDATABASE') ?: (getenv('DB_NAME') ?: (isset($db) ? $db : '_sms'));
    $port     = (int)(getenv('MYSQLPORT') ?: (getenv('DB_PORT') ?: (isset($port) ? $port : 3306)));

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
        // In local development or if not connected, log error
        error_log("Database connection error: " . mysqli_connect_error());
        if (!file_exists(__DIR__ . '/../errors/error.html')) {
            die("Database connection failed. Please check your Railway or local MySQL settings.");
        }
        header('Location: ../errors/error.html');
        exit();
    }
?>