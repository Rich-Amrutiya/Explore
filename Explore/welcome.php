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
    <title>Explore Happiness</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <header>    
    <p style="color: red;"> <?php echo $_SESSION['username']; ?></p>
        <nav>        
            <ul>
                <li><a href="#">Home</a></li>
                <!-- <li><a href="#">Destinations</a></li> -->
                <li><a href="#">International</a></li>
                <li><a href="#">Our India</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="random-image">
            <script src="script.js"></script>
            <h1>Welcome Explore Happiness </h1>
            <p>Discover the world with us!</p>
            <a href="#" class="button">Explore</a>
        </section>

        <section id="testimonials">
            <h2>Recent Customers</h2>
            <div class="testimonial">
                <p>"I had an amazing trip to Europe thanks to Explore Happiness. Their staff was very helpful and
                    knowledgeable, and the itinerary they prepared for me was perfect."</p>
                <p class="author">- Vaibhav Dhanani</p>
            </div>
            <div class="testimonial">
                <p>"I highly recommend Explore Happiness. They helped me plan a romantic getaway with my partner and
                    everything was flawless."</p>
                <p class="author">- Rich Amrutiya</p>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Travel Agency Company Explore Happiness. All rights reserved.</p>
    </footer>
</body>

</html>