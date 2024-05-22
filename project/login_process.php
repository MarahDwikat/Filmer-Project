<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "moviedb";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Get the username and password from the login form
$usernamee = $_POST['email'];
$password = $_POST['password'];

// Query the database to check if the user exists
$sql = "SELECT * FROM login WHERE email = '$usernamee' AND password = '$password'";
$sql1 = "SELECT * FROM adminapp WHERE email = '$usernamee' AND password = '$password'";
$result = mysqli_query($conn, $sql);
$result1 = mysqli_query($conn,$sql1);

// Check if the query returned any rows
if ((mysqli_num_rows($result) > 0) || (mysqli_num_rows($result1) > 0) ) {
    // User exists, redirect to home page
  //header("Location: index.php");


    session_start();
    //  $_SESSION['message'] = $success_message;
    $_SESSION['email'] = $usernamee;
    $_SESSION['password'] = $password;
    //header('Location: account.php');
    // exit;
if(($usernamee == "ibtisamkharrosheh@gmail.com" ) && ($password == "adminibtisam") ){
    header('Location: Home/home.php');
}
else{
    echo "<p>Hello, Connectionssssss !</p>";
    header('Location: Home/home.php');
}




    // echo "<p>Hello, Connectionssssss !</p>";
} else {
    // User does not exist, show error message
    echo "Invalid username or password.";
}

// Close the database connection
mysqli_close($conn);
?>
