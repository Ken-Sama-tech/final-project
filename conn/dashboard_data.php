<?php
include('conn.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $grade_lvl = $_POST['gradelvl'];

    $sql = "SELECT student_info.*, articles.*, articlesections.*, sanctions.* 
    FROM student_info 
    JOIN articles 
    JOIN articlesections
    JOIN sanctions 
    WHERE student_info.gradeLevel = '$grade_lvl' 
    AND articles.articleID = student_info.articleID
    AND articlesections.articlesectionID = student_info.articleSectionID
    AND sanctions.sanctionID = student_info.sanctionID";

    $result = $conn->query($sql);

    $data = array();

    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }

    echo json_encode($data);
}
