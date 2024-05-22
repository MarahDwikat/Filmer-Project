<?php
// check if the email parameter is set
if (isset($_POST['email'])) {
    $email = $_POST['email'];
    $connection = mysqli_connect("localhost", "root", "", "moviedb");

    if (!$connection) {
        http_response_code(500);
        echo 'Database connection error: ' . mysqli_connect_error();
        exit;
    }

    $sql = "DELETE FROM singpage_up WHERE email = '$email'";
    $sql1= "DELETE FROM login WHERE email = '$email'";
    $result = mysqli_query($connection, $sql);
$result1= mysqli_query($connection, $sql1);
    if (!$result) {
        http_response_code(500);
        echo 'Database query error: ' . mysqli_error($connection);
        exit;
    }
    if (!$result1) {
        http_response_code(500);
        echo 'Database query error: ' . mysqli_error($connection);
        exit;
    }
    mysqli_close($connection);

    // send success response
    echo 'User deleted successfully';
} else {
    // send error response
    http_response_code(400);
    echo 'Invalid request';
}
?>