<?php
if(isset($_GET['mid']))
{
    echo $_GET['mid'];
    echo $_GET['uid'];
    $conn = new mysqli('localhost' ,'root' , '' , 'moviedb');
    $query = "INSERT INTO faviorat (u_id, m_id) VALUES ('".$_GET['uid']."', '".$_GET['mid']."');";
    $REQ = mysqli_query($conn,$query);
    header("location:http://localhost/f1/filmer/filmer/project/Description/description.php?id=".$_GET['mid']);
}
?>