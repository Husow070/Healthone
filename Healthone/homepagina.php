<?php
include ("databaseconnectie.php");
global $db;
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
            <a class="navbar-brand" href="homepagina.php">Sportcenter</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav"
                <li class="nav-item">
                    <a class="nav-link" href="catagories.php">Sportapparaat</a>
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
        <li class="breadcrumb-item"><a href="homepagina.php">Home</a></li>
        <li class="breadcrumb-item"><a href="catagories.php">Catagories</a></li>
    </ol>
</nav>
<div class="welcome-page">
    <h2>Sportcenter Healthone</h2>
    <p>Fit en Gezond zijn is geen vanzelfsprekendheid. We moeten er zelf wat voor doen. Goede, gezonde voeding is hiervoor de basis. Bewegen hoort hier ook bij. <br>
        Regelmatig bewegen zorgt voor een goede doorbloeding en draagt bij aan ontspanning van lichaam en geest. Sporten is goed voor sterkere spieren en voor <br>
        de conditie.Sportcenter Healthone heeft verschillende sportapparaten om mee te kunnen werken aan je conditie.

    </p>
</div>
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        <a class="text-dark">Afdeling software development Tinwerf 10, 2544 ED Den Haag</a>
    </div>
</footer>
</body>
</html>