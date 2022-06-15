<?php
    include("databaseconnectie.php");
    global $db
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
        <li class="breadcrumb-item"><a href="homepagina.php">Home</a></li>
        <li class="breadcrumb-item"><a href="catagories.php">Catagories</a></li>
    </ol>
</nav>
<div class="container">
    <div class="row">
        <?php
            //TODO query maken waarbij je alle items ophaalt uit de products tabel waar de
            //TODO category_id gelijk is aan de GET['id']
            $query = $db->prepare("SELECT * FROM products WHERE category_id = :id");
            $query->bindParam("id", $_GET['id']);
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            foreach($result as $catagory) {
                echo "<div class='col-12 col-sm-6 col-md-4'>";
                echo "<a href='detail.php?id=" . $catagory['id'] . "'>";
                echo "<h3>" . $catagory["type"] . " " .$catagory["merk"] ;
                echo "</h3>";
                echo "<img class='image' src='" . $catagory["image"] . "' alt='img'>";
                echo "</div>";
            }
        ?>
    </div>
</div>
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
<footer class="bg-light text-center text-lg-start">
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        <a class="text-dark">Afdeling software development Tinwerf 10, 2544 ED Den Haag</a>
    </div>
</footer>
</body>
</html>