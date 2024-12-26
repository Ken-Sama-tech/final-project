<?php

$host = 'localhost';
$name = 'root';
$pass = '';
$db = 'student_record';

try {
    $conn = mysqli_connect($host, $name, $pass, $db);
} catch (mysqli_sql_exception) {
    echo 'Cannot Connect to the Sever';
}
