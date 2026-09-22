<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
if (!isset($_SESSION['uid'])) {
    header("Location: ../login.php");
    echo "<script>window.location.href='../login.php';</script>";
    exit();
}
?>