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
    <link rel="stylesheet" href="../css/std_directory.css">
    <title>Document</title>
</head>

<body>
    <!-- navbar-->
    <?php
    require_once('../navbar/navbar.php');
    ?>
    <div class="container">

    </div>
    <!--smodals here-->

    <!-- script section-->
    <script src="../script/std_directry.js"></script>
    <script src="../script/login.js"></script>
    <script src="../script/navbar.js" defer></script>
</body>

</html>