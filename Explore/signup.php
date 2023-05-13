<?php
require 'dbconnect.php';
    $email=$_POST['email2'];
    $password=$_POST['password2'];
    $hash=password_hash($password,PASSWORD_DEFAULT);
    $username=$_POST['name2'];


    $existSql = "SELECT * FROM `login` WHERE username = '$username'";
    $result = mysqli_query($connection, $existSql);
    $numExistRows = mysqli_num_rows($result);
    if($numExistRows > 0){
        echo '<script>alert("This Username is already taken.")</script>';
    header("location: index.php");
    }

    $existSql = "SELECT * FROM `login` WHERE Email = '$email'";
    $result = mysqli_query($connection, $existSql);
    $numExistRowsemail = mysqli_num_rows($result);
    if($numExistRowsemail > 0){
        echo '<script>alert("This Email is already taken.")</script>';
    header("location: index.php");
    }

    $sql="INSERT INTO `login`(`id`, `username`, `Email`, `Password`) VALUES (NULL,'$username','$email','$hash')"; 
    $result=mysqli_query($connection,$sql);   
?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="login2.css">
    <link rel="icon" type="image/x-icon" href="images/Logo.jpg" style="border-radius:500px">
</head>
<body>
    <section class="forms-section">
        <h1 class="section-title">Login & Signup Forms</h1>
        <div class="forms">
          <div class="form-wrapper is-active">
            <button type="button" class="switcher switcher-login">
              Login
              <span class="underline"></span>
            </button>
            <form class="form form-login" action="signin.php" method="post">
              <fieldset>
                <legend>Please, enter your email and password for login.</legend>
                
                <div class="input-block">
                  <label for="login-email">Username</label>
                  <input id="login-email" type="text" name="username" required>
                </div>
                <div class="input-block">
                  <label for="login-password">Password</label>
                  <input id="login-password" type="password" name="password" required>
                </div>
              </fieldset>
              <button type="submit" class="btn-login">Login</button>
            </form>
          </div>
          <div class="form-wrapper">
            <button type="button" class="switcher switcher-signup">
              Sign Up
              <span class="underline"></span>
            </button>
            <form class="form form-signup" action="signup.php" method="post">
              <fieldset>
                <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                <div class="input-block">
                  <label for="signup-username">Username</label>
                  <input id="signup-email" type="text" name="name2" required>
                </div>
                <div class="input-block">
                  <label for="signup-email">E-mail</label>
                  <input id="signup-email" type="email" name="email2" required>
                </div>
                <div class="input-block">
                  <label for="signup-password">Password</label>
                  <input id="signup-password" type="password" name="password2" required>
                </div>
              </fieldset>
              <button type="submit" class="btn-signup">Sign Up</button>
            </form>
          </div>
        </div>
      </section>
      <script src="login2.js"></script>
</body>
</html>