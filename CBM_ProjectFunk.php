<?php

$name = $_POST["name"];
$age = $_POST["age"];
$gender = $_POST["gender"];
$budget = $_POST["budget"];
$result = 0;


$search = "SELECT * FROM cbm_project WHERE  preis <= $budget && age <= $age ORDER BY RAND()
LIMIT 1";


try {
    $data_bank = new PDO(
        "mysql:dbname=test;host=localhost",
        "root",       // username 
        ""           // password
    );

   
    $result = $data_bank->query($search);
    $antwort = $result->fetchAll(PDO::FETCH_ASSOC);
    $data_bank = null;  // macht variabel frei


    foreach ($antwort as $line) {
    }
    
} catch (PDOException $search) {
    echo $search->getMessage();
}

