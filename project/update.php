<?php
if (isset($_POST['update'])) {
    session_start();
   $email = $_SESSION['email'];
    $password = $_SESSION['password'];
    $firstname = $_POST['fname'];//email  phone    company  des bio
    $last = $_POST['lastname'];
  //  $email = $_POST['email'];
    $phone = $_POST['phone'];
    $company = $_POST['company'];
    $bio = $_POST['bio'];
    $description = $_POST['des'];
    $img=$_POST['img'];
    echo $description;
//  password

   // $property_id=$_SESSION['email'];
//    $old = $_POST['old'];
//    $new = $_POST['new'];
 //   $confirm = $_POST['confirm'];
    //



    $servername = "localhost";
    $username = "root";
    $password_db = "";
    $dbname = "moviedb";

    $conn = new mysqli($servername, $username, $password_db, $dbname);

    $sql = "UPDATE `singpage_up` SET `name`='$firstname',`phone`='$phone',`bio`='$bio',`company`='$company',`lastname`='$last',`designation`='$description',`photo`='$img' WHERE email='$email'";

    //
    $sql1 = $conn->query("SELECT password FROM singpage_up WHERE email = '$email'");
    $row = mysqli_fetch_array($sql1);
    //print_r($row['password']);

   // $query=mysqli_query($db,$stmt);
    if (($conn->query($sql) === TRUE) ) {
        // echo "Registration successful";
        //  echo "<p>Hello, Connection successful !</p>";

       header("Location: account.php");
      //*  echo $old;
        //echo $sql1;
      //*  if ($old === $row['password']) {
      //      echo "yes";
      //  } else {
      //      echo "no";
      //  }
    }
   else{
       echo "not success !!!!!!!!";
   }
   ///





    mysqli_close($conn);
}
if(isset($_POST['update1'])){
    session_start();
    $email = $_SESSION['email'];
    $password = $_SESSION['password'];
    $old = $_POST['old'];
    $new = $_POST['new'];
    $confirm = $_POST['confirm'];
    $servername = "localhost";
    $username = "root";
    $password_db = "";
    $dbname = "moviedb";

    $conn = new mysqli($servername, $username, $password_db, $dbname);
    $sql1 = $conn->query("SELECT password FROM singpage_up WHERE email = '$email'");
    $row = mysqli_fetch_array($sql1);

        echo $old;
        print_r($row['password']);

          if ($old === $row['password']) {
              //new equal confirm
              if($new === $confirm){

                  $sqlnew = "UPDATE `singpage_up` SET `password`='$new',`confirmpassword`='$confirm' WHERE email='$email'";
                  $sqlnew1 = "UPDATE `login` SET `password`='$new' WHERE email='$email'";
                  $sqlnewadmin = "UPDATE `adminapp` SET `password`='$new' WHERE email='$email'";
                  if (($conn->query($sqlnew) === TRUE) &&  ($conn->query($sqlnew1) === TRUE) ) {
                      header("Location: account.php");
                      echo "well done ";
                      echo "good job";
                  }
                  else{
                      echo "not connect";
                  }

               //   echo "equal yes true";
              }
              else{
                  echo "not equal confirm and new ";
              }

            //  echo "yes";
         } else {
             echo "no";
          }

    mysqli_close($conn);

}

?>