<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password_db = "";
$dbname = "moviedb";

$conn = mysqli_connect($servername, $username, $password_db, $dbname);

// Retrieve user details from the form
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$lastname = $_POST['lastname'];
$password = $_POST['password'];

// Insert user details into the database
$sql = "INSERT INTO singpage_up (name, email, phone, lastname, password, confirmpassword) VALUES ('$name', '$email', '$phone', '$lastname' ,'$password','$password')";
$sql1 = "INSERT INTO login ( email , password) VALUES ( '$email', '$password')";
if ((mysqli_query($conn, $sql)) && (mysqli_query($conn, $sql1))) {
    // Redirect user back to the view users page
    header('Location: view_users.php');
} else {
    echo "Error: " . mysqli_error($conn);
    exit();
}

mysqli_close($conn);
?>