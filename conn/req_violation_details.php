<?php

include('conn.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $article = $_POST['article'];
    $section = $_POST['section'];
    $sanction = $_POST['sanction'];

    $sql = "SELECT articles.articleDescription, articlesections.articleSectionDescription, sanctions.sanction FROM articles JOIN articlesections JOIN sanctions WHERE articles.articleID = $article AND articlesections.articleSectionID = $section AND sanctions.sanctionID = $sanction";

    $result = $conn->query($sql);

    $row = $result->fetch_assoc();

    echo json_encode($row);
}
