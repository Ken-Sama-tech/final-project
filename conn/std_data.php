<?php

include('conn.php');

$sql = "SELECT * FROM student_info";

$result = $conn->query($sql);

$data = array();

while ($rows = $result->fetch_assoc()) {
    $data[] = $rows;
}

echo json_encode($data);
