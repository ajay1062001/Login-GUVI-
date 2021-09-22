<?php
require_once "config.php";

$id=$_SESSION["id"];
$que="SELECT * FROM users WHERE id ='$id'";
$res1 = mysqli_query($connection, $que);
while ($data = mysqli_fetch_array($res1)) {
    $user=$data['username'];
    $usertype=$data['usertype'];
    $fullname=$data['fullname'];
    $email=$data['email'];
    $age=$data['age'];
   $phone=$data['phone'];
   $created=$data['created_at'];
}

?>