<?php

try {
    $db = new PDO("mysql:host=localhost;dbname=crosstrainer", "root", "");
    $query = $db->prepare("SELECT * FROM crosstrainer");
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as &$data) {
        echo $data["merk"] . " ";
        echo $data["type"] . " ";
        echo $data["prijs"] . " ";
    }
} catch (PDOException $e) {
    die("Error!: " . $e->getMessage());
}
?>