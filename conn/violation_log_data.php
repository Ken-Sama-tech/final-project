<?php

include('conn.php');

$sql = "SELECT student_info.*, articles.*, articlesections.*, sanctions.* 
FROM student_info 
JOIN articles 
JOIN articlesections 
JOIN sanctions 
WHERE articles.articleID = student_info.articleID 
AND articlesections.articleSectionID = student_info.articleSectionID 
AND sanctions.sanctionID = student_info.sanctionID";

$result = $conn->query($sql);

$data = array();

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
};

echo json_encode($data);
