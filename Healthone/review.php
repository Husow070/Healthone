<?php
include("databaseconnectie.php");
global $db
?>
<?php

if (isset($_POST['verzenden'])) {
    $name = filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING);
    $message = filter_input(INPUT_POST, "message", FILTER_SANITIZE_STRING);
    $score = $_POST["score"];

    // opslaan in db
    try{
        $query = $db->prepare("INSERT INTO reviews(name, message, score) VALUES (:Fname, :message, :score) ");
        $query->bindParam("name", $name);
        $query->bindParam("message", $message);
        $query->bindParam("score", $score);
        if ($query->execute()) {
            echo "De Nieuwe gegevens zijn toegevoegd.";
        } else {
            echo "Er is een Fout opgestreden!";
        }
    } catch(PDOException $e){
        die("error!: " . $e->getMessage());
    }
} else {
    $name = "";
    $message= "";
    $score= "";
}
?>
<style type="text/css">
    label {
        float: left;
        display: block;
        width: 150px;
    }

    input {
        display: block;
    }

    input[type="radio"], input[type="checkbox"] {
        display: inline;
    }
</style>
<form method="post" action="">

    <label>name</label>
    <input type="text" name="name">
    <label>message</label>
    <input type="text" name="message">
    <br>
    <div>
        <select name="stars">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
    </div>
    <input type="submit" name="verzenden" value="Verzenden">
</form>

























