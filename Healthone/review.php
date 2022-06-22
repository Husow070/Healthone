<?php
include("databaseconnectie.php");
global $db
?>
<?php
if (isset($_POST['verzenden'])) {
    $name = filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING);
    $message = filter_input(INPUT_POST, "message", FILTER_SANITIZE_STRING);
    $score = filter_input(INPUT_POST, "score", FILTER_SANITIZE_NUMBER_INT);
    $product = $_GET["id"];
    $date = date("Y-m-d H:i:s");
    // opslaan in db
    try{
        $query = $db->prepare("INSERT INTO review(name, message, score,product_id,date) VALUES (:Fname, :message, :score,:product_id, :date) ");
        $query->bindParam("Fname", $name);
        $query->bindParam("message", $message);
        $query->bindParam("score", $score);
        $query->bindParam("product_id", $product);
        $query->bindParam("date", $date);
        if ($query->execute()) {
            echo "Review geplaatst";
        } else {
            echo "Er is een Fout opgestreden!";
        }
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
    } catch(PDOException $e){
        die("error!: " . $e->getMessage());
    }
} else {
    $name = "";
    $message= "";
    $score= "";
    $product="";
    $date= "";


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
    <br>
    <label>message</label>
    <input type="text" name="message">
    <br>
    <div>
        <select name="score">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>
    </div>
    <input type="submit" name="verzenden" value="Verzenden">
</form>

























