<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
//            // Retrieve the values of the form fields
//            $firstname = $_POST["firstname"];
//            $lastname = $_POST["lastname"];
//            $email = $_POST["email"];
//            $password = $_POST["password"];
//
//            // Validate the form data
//            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
//                echo "Invalid email format";
//            } else {
    // Connect to the database
//                $servername = "localhost";
//                $username = "username";
//                $password_db = "password";
    $name= $_POST['name'];
    $emails=$_POST['emails'];
    $password=$_POST['password'];
    $confirm=$_POST['confirm'];


    $servername = "localhost";
    $username = "root";
    $password_db = "";
    $dbname = "moviedb";

    $conn = new mysqli($servername, $username, $password_db, $dbname);

//            $dbname = "sign_in_page";

//                $conn = new mysqli($name, $emails, $password_db, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        echo "<p>Hello, Connection failed !</p>";
    }
if($password == $confirm){      // lastname bio  company  designation

    $sql = "INSERT INTO singpage_up (name, email, password, confirmpassword , phone ,lastname , bio,company ,designation,photo) VALUES ('$name', '$emails', '$password', '$confirm' ,'?','?','?','?','?','?')";
    $sql1 = "INSERT INTO login(email , password) VALUES ('$emails' ,'$password')";
    if (($conn->query($sql) === TRUE) && ($conn->query($sql1) === TRUE)) {
       // echo "Registration successful";
      //  echo "<p>Hello, Connection successful !</p>";

        header("Location: index.php");
// Assume the login is successful
        $success_message = "Login successful! Welcome back.";

// Set the message as a session variable
        session_start();
        $_SESSION['message'] = $success_message;
      //  $_SESSION['email'] = $emails;

    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
else {
  //  alert('Passwords do not match. Please try again.');
    echo "<h1 style='color: blue; width: 50%;'>Registration failed....</h1>";
    echo "<h3 style='color: green; width: 80%;'>please try again  !</h3>";

  //  echo "<h1  style='width: 100px; height: 100px;  color: rebeccapurple; font-family: 'Times New Roman';'>Registration failed</h1>";
  //  echo "<p style='color: rebeccapurple; width: 70px; font-family: 'Times New Roman''>please try again  !</p>";
}
    // Insert the data into the database
   // $sql = "INSERT INTO singpage_up (name, email, password, confirmpassword) VALUES ('$name', '$emails', '$password', '$confirm')";

   // if ($conn->query($sql) === TRUE) {
   //     echo "Registration successful";
   //     echo "<p>Hello, Connection successful !</p>";
   // } else {
   //     echo "Error: " . $sql . "<br>" . $conn->error;
   // }

   // $conn->close();

}
?>
