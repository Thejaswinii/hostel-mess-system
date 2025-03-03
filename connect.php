<?php
$host = "sql201.infinityfree.com";  // Database host
$username = "if0_38434055";  // Database username
$password = "F6ebjHoht6LasEG";  // Database password
$dbname = "if0_38434055_user_management";  // Database name

$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['reg_no'])) {
    $reg_no = $_POST['reg_no'];
    $name = $_POST['name'];
    $ph_no = $_POST['ph_no'];
    $mail = $_POST['mail'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $acc_type = $_POST['acc_type'];

    // Insert query
    $query = "INSERT INTO users (reg_no, name, ph_no, mail, password, dob, gender, acc_type) 
              VALUES ('$reg_no', '$name', '$ph_no', '$mail', '$password', '$dob', '$gender', '$acc_type')";

    if ($conn->query($query) === TRUE) {
        echo "success";  // Return success message
    } else {
        echo "Error: " . $conn->error;
    }

    $conn->close();
}
?>