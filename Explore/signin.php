<?php
require 'dbconnect.php';

$count=0;
$username=$_POST['username'];
$password=$_POST['password'];
$sql="SELECT * FROM `login`";
$result=mysqli_query($connection,$sql);

for ($i=0; $i < mysqli_num_rows($result) ; $i++) { 
    $row=mysqli_fetch_array($result);
    if($username===$row['username'] && password_verify($password, $row['password']))
    {
        $count=1;
        session_start();
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;
        // $_SESSION['email']=$email;
        header("location: home.php");
    }
}
if(!$count)
{   
    echo '<script>alert("Email or Password is not correct.")</script>';
    include("index.php");
}
?>
