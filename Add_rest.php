<!DOCTYPE html>

<html>

<head>
    <title>CBM_Project</title>
    <meta charset="utf-8">
    <meta name="random" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/CBM_Project.css" type="text/css">

</head>

<body>

    <div class="header">
        <ul>
            <li style="display:inline-block;">
                <a href="CBM_ProjectLogin.php" style="text-decoration:none; color:#ffffff;">
                    <pre>Subscribe  </pre>
                </a>
            </li>
            <li style="display:inline-block;">
                <a href="CBM_ProjectContact.php" style="text-decoration:none; color:#ffffff;">
                    <pre>  Contact us  </pre>
                </a>
            </li>
        </ul>
    </div>

    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>

    <?php

    $a_name = $_POST["a_name"];
    $a_describe = $_POST["a_describe"];
    $a_adress = $_POST["a_adress"];
    $a_kontakt = $_POST["a_kontakt"];
    $a_preis = $_POST["a_preis"];
    $a_age = $_POST["a_age"];




    $sql = "INSERT INTO cbm_project(restaurantname,beschreibung,adress,kontakt,preis,age)" .
        "VALUES (:a_name,:a_describe,:a_adress,:a_kontakt,:a_preis,:a_age)";

    try {
        $a_data_bank = new PDO(
            "mysql:dbname=test;host=localhost",
            "root",
            ""
        );
    ?>

        <h2 class="text3"><?php echo "New restaurant added to database!"; ?></h2>



    <?php



        $eingabe = $a_data_bank->prepare($sql);  // wir bereiten den sql befehl vor

        $eingabe->bindParam(':a_name', $a_name); // verbinden wir die parameter
        $eingabe->bindParam(':a_describe', $a_describe);
        $eingabe->bindParam(':a_adress', $a_adress);
        $eingabe->bindParam(':a_kontakt', $a_kontakt);
        $eingabe->bindParam(':a_preis', $a_preis);
        $eingabe->bindParam(':a_age', $a_age);
        $eingabe->execute();



        $a_data_bank = null;
    } catch (PDOException $e) {
        echo $e->getMessage();
    } ?>


    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>


    <a href="Add_rest.html">
        <h2>One more!</h2>
    </a>

    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>




    <footer>
        <h3>All Rights are not Reserved.</h3>
    </footer>

</body>

</html>

<?php
