<?php
include('../conn/conn.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/dashboard.css">
    <title>Document</title>
</head>

<body>
    <!-- navbar-->
    <?php
    require_once('../navbar/navbar.php');
    ?>

    <div class="container">
        <div class="boxes__container">
            <div class="box">
                <h2 class="grade">grade 7</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 7'";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {

                        $rows = $result->fetch_all();
                        echo  count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
            <div class="box">
                <h2 class="grade">grade 8</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 8'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $rows = $result->fetch_all();

                        echo count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
            <div class="box">
                <h2 class="grade">grade 9</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 9'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $rows = $result->fetch_all();

                        echo count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
            <div class="box">
                <h2 class="grade">grade 10</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 10'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $rows = $result->fetch_all();

                        echo count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
            <div class="box">
                <h2 class="grade">grade 11</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 11'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $rows = $result->fetch_all();
                        echo count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
            <div class="box">
                <h2 class="grade">grade 12</h2>
                <p class="violation__count">
                    <?php
                    $sql = "SELECT * FROM student_info WHERE gradeLevel = 'grade 12'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        $rows = $result->fetch_all();

                        echo count($rows);
                    } else {
                        echo 0;
                    }
                    ?>
                </p>
            </div>
        </div>
        <div class="grade__table--container">
            <table id="each__grade--table">
                <tr class="table__row">
                    <th class="each__grade--theading">Learner Reference Number</th>
                    <th class="each__grade--theading">Name</th>
                    <th class="each__grade--theading">Grade Level</th>
                    <th class="each__grade--theading">Violation</th>
                    <th class="each__grade--theading">Violation Section</th>
                    <th class="each__grade--theading">Sanction</th>
                </tr>
                <tbody id="grade__tbody--here">

                </tbody>
            </table>
        </div>
    </div>
    <!-- modals here-->

    <!-- script section-->
    <script src="../script/dashboard.js"></script>
    <script src="../script/login.js"></script>
    <script src="../script/navbar.js" defer></script>
</body>

</html>