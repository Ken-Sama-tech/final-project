<?php
include('../conn/conn.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM accounts";

    $result = $conn->query($sql);

    $row = $result->fetch_assoc();
    if ($username === $row['username']) {
        $sql = "SELECT * FROM accounts WHERE username = '$username'";
        $result = $conn->query($sql);
        $row = $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            $_SESSION['logged_in'] = true;
            echo 'logged in';
        } else {
            echo 'Invalid Password';
        }
    } else if ($username !== $row['username']) {
        echo 'No such user found';
    }
}
