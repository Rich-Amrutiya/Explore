<?php
include("config.php");
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    .profile-section {
  border: 1px solid #444;
  padding: 10px;
}

.profile-section h2 {
  margin-top: 0;
}

.profile-section ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.profile-section li {
  margin-bottom: 10px;
}

.profile-section li strong {
  display: inline-block;
  width: 80px;
  font-weight: bold;
}

.profile-section li span {
  font-weight: normal;
}
h2{
  text-align: center;
}

  </style>
</head>
<body>
  <div class="profile-section">
    <h2>Profile Information</h2>
    <ul>
      <li><strong>Name:<?php echo $username; ?></strong> <span id="name"></span></li>
      <li><strong>Email:<?php echo $email; ?></strong> <span id="email"></span></li>
      <li><strong>Bookings:</strong>
        <ul id="bookings"></ul>
      </li>
    </ul>
  </div>
</body>
</html>

?>