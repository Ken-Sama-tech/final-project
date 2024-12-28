<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    session_unset();
    session_destroy();
    $current_page = $_POST['current_page'];

    echo $current_page;
    header("Location: {$current_page}");
    exit;
}

header('Location: ../mainpage/index.php');
exit;
