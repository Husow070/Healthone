<?php
try {
$db = new PDO("mysql:host=localhost;dbname=catagorie", "root", "");
} catch (PDOException $e) {
die("Error!: " . $e->getMessage());
}
?>