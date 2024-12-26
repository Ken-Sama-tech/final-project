<?php

include('conn.php');

$article = $_POST['article'];

try {

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        $sql = "SELECT * FROM articlesections WHERE articleID = '{$article}'";

        $result = $conn->query($sql);

        $data[] = array();

        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        echo json_encode($data);
    }
} catch (mysqli_sql_exception) {
    echo "Fail to Fetch Data(article sections)";
}
