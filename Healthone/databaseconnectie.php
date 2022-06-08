<?php

try {
    $db = new PDO("mysql:host=localhost;dbname=crosstrainer", "root", "");
} catch (PDOException $e) {
    die("Error!: " . $e->getMessage());
}
?>