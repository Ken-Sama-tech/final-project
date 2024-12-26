<?php

include('conn.php');

$lrn = filter_var(trim($_POST['std__lrn']), FILTER_SANITIZE_NUMBER_INT);
$gradelvl = filter_var(trim($_POST['grade__lvl']), FILTER_SANITIZE_SPECIAL_CHARS);
$lastname = filter_var(trim($_POST['std__lastname']), FILTER_SANITIZE_SPECIAL_CHARS);
$firstname = filter_var(trim($_POST['std__firstname']), FILTER_SANITIZE_SPECIAL_CHARS);
$middlename = filter_var(trim($_POST['std__middlename']), FILTER_SANITIZE_SPECIAL_CHARS);
$extname = filter_var(trim($_POST['std__extname']), FILTER_SANITIZE_SPECIAL_CHARS);
$birthdate = filter_var(trim($_POST['std__bd']), FILTER_SANITIZE_SPECIAL_CHARS);
$sex = filter_var(trim($_POST['std__sex']), FILTER_SANITIZE_SPECIAL_CHARS);
$present_address = filter_var(trim($_POST['present__address']), FILTER_SANITIZE_SPECIAL_CHARS);
$permanent_address = filter_var(trim($_POST['permanent__address']), FILTER_SANITIZE_SPECIAL_CHARS);
$status = filter_var(trim($_POST['status']), FILTER_SANITIZE_SPECIAL_CHARS);
$religion = filter_var(trim($_POST['religion']), FILTER_SANITIZE_SPECIAL_CHARS);
$contact_number = filter_var(trim($_POST['std__number']), FILTER_SANITIZE_SPECIAL_CHARS);
$email = filter_var(trim($_POST['std__email']), FILTER_SANITIZE_EMAIL);
$mother_lastname = filter_var(trim($_POST['mother__lname']), FILTER_SANITIZE_SPECIAL_CHARS);
$mother_firstname = filter_var(trim($_POST['mother__fname']), FILTER_SANITIZE_SPECIAL_CHARS);
$mother_middlename = filter_var(trim($_POST['mother__mname']), FILTER_SANITIZE_SPECIAL_CHARS);
$mother_maiden_name = filter_var(trim($_POST['maiden__name']), FILTER_SANITIZE_SPECIAL_CHARS);
$mother_contact_number = filter_var(trim($_POST['mother__number']), FILTER_SANITIZE_SPECIAL_CHARS);
$father_lastname = filter_var(trim($_POST['father__lname']), FILTER_SANITIZE_SPECIAL_CHARS);
$father_firstname = filter_var(trim($_POST['father__fname']), FILTER_SANITIZE_SPECIAL_CHARS);
$father_middlename = filter_var(trim($_POST['father__mname']), FILTER_SANITIZE_SPECIAL_CHARS);
$father_extname = filter_var(trim($_POST['father__extname']), FILTER_SANITIZE_SPECIAL_CHARS);
$father_contact_number = filter_var(trim($_POST['father__number']), FILTER_SANITIZE_SPECIAL_CHARS);
$article = filter_var(trim($_POST['article']), FILTER_SANITIZE_SPECIAL_CHARS);
$article_section = filter_var(trim($_POST['article__section']), FILTER_SANITIZE_SPECIAL_CHARS);
$sanction = filter_var(trim($_POST['sanction']), FILTER_SANITIZE_SPECIAL_CHARS);

$validated_email = filter_var($email, FILTER_VALIDATE_EMAIL);
$escaped_present_address = mysqli_real_escape_string($conn, $present_address);
$escaped_permanent_address = mysqli_real_escape_string($conn, $permanent_address);


try {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        if (empty($lrn)) {
            echo 'Missing learner reference number';
        } else if (empty($lastname)) {
            echo 'Missing last name';
        } else if (empty($firstname)) {
            echo 'Missing first name';
        } else if (empty($birthdate)) {
            echo 'Missing birh date';
        } else if (empty($present_address)) {
            echo 'Missing present address';
        } else if (empty($contact_number)) {
            echo 'Missing contact number';
        } else {
            if ($validated_email) {
                $sql = "INSERT INTO student_info (`learnerReferenceNumber`, `gradeLevel`, `lastName`, `firstName`, `middleName`, `extensionName`, `birthDate`, `sex`, `presentAddress`, `permanentAddress`, `civilStatus`, `religion`, `contactNumber`, `emailAddress`, `motherLastName`, `motherFirstName`, `motherMiddleName`, `motherMaidenName`, `motherContactNumber`, `fatherLastName`, `fatherFirstName`, `fatherMiddleName`, `fatherExtensionName`, `fatherContactNumber`, `articleID`, `articleSectionID`, `sanctionID`) VALUES($lrn, '$gradelvl', '$lastname', '$firstname', '$middlename', '$extname', '$birthdate', '$sex', '$escaped_present_address', '$escaped_permanent_address', '$status', '$religion', '$contact_number', '$validated_email', '$mother_lastname', '$mother_firstname', '$mother_middlename', '$mother_maiden_name', '$mother_contact_number', '$father_lastname', '$father_firstname', '$father_middlename', '$father_extname', '$father_contact_number', '$article', '$article_section', '$sanction')";

                $result = $conn->query($sql);

                if ($result) {
                    echo 'Data Inserted Successfully';
                } else {
                    echo 'Failed To Insert Data';
                }
            } else {
                echo 'Invalid Email';
            }
        }
    }
} catch (mysqli_sql_exception) {
    echo 'duplicate lrn';
}
