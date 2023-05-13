
<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: index.php");
    exit;
}

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Explore - The Happiness</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
    <link rel="icon" type="image/x-icon" href="Logo.jpg" style="border-radius:500px">
    <link rel="stylesheet" href="style.css">
	<style>


        .main_pac{
            height: 400px;
            width: 400px;
            border-radius: 15px;
            float:  left;
            margin-left: 75px;
    border: 1px solid rgb(212, 240, 222);
    margin-top : 80px;
           

        }
        .main_pac:hover{
            box-shadow: 10px 10px 11px rgba(33,33,33,0.7); 
        }

        .main_pac_1
        {
            width: 399px;
            height: 340px;
            position: relative;
            overflow: hidden;            
        }

        .row
        {
            width: 400px;
            height: 60px;
            float: left;
            /* border-left: 5px solid rgb(206, 218, 206) ;
            border-right:5px solid rgb(206, 218, 206) ;
            border-bottom: 5px solid rgb(206, 218, 206);
            border-radius: 0px 0px 15px 15px; */
            margin-left: 5px ;

        }

        
        .col-6
        {
            font-size: 125%;
        }

        .col-4
        {
            text-align: center;
            justify-content: center;
        }


        .carousel-inner img{
            width: 400px;
            height: 340px;
            border-radius: 15px;
            /* transition: width 2s , height 2s;
            transform: 2s; */
            /* position: relative; */
            float: left;
        }


	</style>
</head>
<body>

<header>
    
        <nav>
          <div class="logo">
                <img src="images/Logo.jpg">
                <p  style="color: red;"> <?php echo $_SESSION['username']; ?></p></div>
                <ul>   
                <li><a href="home.php">Home</a></li>
                <!-- <li><a href="#">Destinations</a></li> -->
                <li><a href=international.php>International</a></li>
                <li><a href=domestic.php>Domestic</a></li>
                <li><a href="contact/contact us.html">Contact</a></li>
            </ul>
        </nav>
    </header>

    <?php
        require 'dbconnect.php';
        $sql = "SELECT id,image1, image2, image3, price, place_name, duration, link FROM international_package";
        $result = $connection->query($sql);
        $i=1;
        
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $_SESSION['id']=$row["id"];


        echo "<div class=\"main_pac\">";
                echo "<div class=\"main_pac_1\">";

          echo "<div id=\"carousel1\" class=\"carousel slide\" data-ride=\"carousel\">";
          
               echo "<div class=\"carousel-inner\">";
               echo $i++;
               echo "<a href=\"" . $row["link"] . "?&id=".$row["id"] ."\">";
                  echo "<div class=\"carousel-item active\">";
                    echo "<img src=\"" . $row["image1"] . "\" alt=\"\">";
                  echo"</div>";
                  echo "<div class=\"carousel-item\">";
                    echo "<img src=\"" . $row["image2"] . "\" alt=\"\">";
                  echo "</div>";
                  echo "<div class=\"carousel-item\">";
                    echo "<img src=\"" . $row["image3"] . "\" alt=\"\">";
                  echo "</div>";
                echo "</a>";
               echo "</div>";
             echo "</div>";

       echo " </div>";

        echo "<div class=\"row\">";
          echo "<div class=\"col-4\"><b><i>".$row["place_name"]."</i></b></div>";
          echo "<div class=\"col-4\">Price: <br><b>&#8377 ".$row["price"]."</b></div>";
          echo "<div class=\"col-4\">Duration:<br>". $row["duration"]."</div>";

      echo "</div>";
   echo "</div>";



            }
        } else {
            echo "No images found.";
        }
    ?>
    


</body>
</html>


