<?php
include ("databaseconnectie.php");

?>




<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Healthone</title>
</head>
<body>
<img src="./Foto/healthonelogo.png" alt="logo" style="width:355px;">
<div class="healthOnebg">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Sportcenter</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav"
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sportapparaat</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Registreren</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div>
    <div>
        <img class="bg-image" src="./foto/Background-gym.jpg" alt="">
    </div>
</div>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item"><a href="#">Catagories</a></li>
        <li class="breadcrumb-item"<<a href="#">Crosstrainer</a></li>
    </ol>
</nav>
<div class="row">

<?php

try {
    $db = new PDO("mysql:host=localhost;dbname=crosstrainer", "root", "");
    $query = $db->prepare("SELECT * FROM crosstrainer");
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as &$data) {
        echo "<div class='col-md-2'>";
        echo "<h1>".$data["merk"] . " ";
        echo $data["type"] . " ";
        echo $data["prijs"] . "</h1>";
        
        echo " </div>";
    }
} catch (PDOException $e) {
    die("Error!: " . $e->getMessage());
}

?>

<!---->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
<!--    <div class="col-md-2">-->
<!--        <h1>hello</h1>-->
<!--        <img class="img-fluid" src="./foto/Background-gym.jpg">-->
<!--    </div>-->
</div>
<footer class="footer">
    <div class="footer-center">
        <small style="color:grey" class="copyright">Afdeling software development Tinwerf 10, 2544 ED Den Haag.</small>
    </div><!--End container-->
</footer><!--End footer 2-->
</body>
</html>