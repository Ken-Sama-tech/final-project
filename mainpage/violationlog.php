<!--login modal here-->
<?php
session_start();
if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    require_once('../modals/login.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/violationlog.css">
    <title>Document</title>
</head>

<body>
    <!-- navbar-->
    <?php
    require_once('../navbar/navbar.php');
    ?>
    <div class="container">
        <div class="violation__log--container">
            <nav class="table__navigation">
                <ul class="table__navigation--menu">
                    <li class="table__navigation--items">
                        <input type="search" name="" id="search">
                        <label for="search">search</label>
                    </li>
                    <li class="table__navigation--items">sort</li>
                    <li class="table__navigation--items">filter</li>
                    <li class="table__navigation--items" id="ellipsis">
                        <span class="dot"></span>
                        <span class="dot"></span>
                        <span class="dot"></span>
                    </li>
                </ul>
            </nav>

            <table id="violation__log">
                <th class="thead">id</th>
                <th class="thead">learner reference number</th>
                <th class="thead">grade level</th>
                <th class="thead">student name</th>
                <th class="thead">sex</th>
                <th class="thead">violation</th>
                <th class="thead">violation section</th>
                <th class="thead">sanction</th>
                <tbody id="tbody">

                </tbody>
            </table>
        </div>
    </div>
    <!-- modals here-->
    <!-- script section-->
    <script src="../script/violationlog.js"></script>
    <script src="../script/login.js"></script>
    <script src="../script/navbar.js" defer></script>
</body>

</html>