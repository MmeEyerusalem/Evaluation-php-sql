<?php

require_once "inc/functions.inc.php";

// conne();

$message = "";

$pdo = conne();
$sql= ("SELECT* FROM advert ORDER BY id_advert DESC LIMIT 15");
$request = $pdo->prepare($sql);
$request->execute();

if (isset($_GET['id_advert']) == ':id_advert') {

   header("location:" . RACINE_SITE . "affichage.php");
}

$title = "Acceuil";
require_once "inc/header.inc.php";
?>






    <main class="container mt-5 mb-5">
        <h1>Le Bon Appart</h1>
        <article class="row d-flex justify-content-center">
            <?php while($announce = $request->fetch(PDO::FETCH_ASSOC)){?>
            
            <div class="col-6 mt-3 indexImg">
            
                <img src=<?=$announce['photo']?> alt= "..." width="50">
            
                <div>
                <h5><?= $announce['title'] ?></h5>
                <p><?= substr($announce['description'], 0, 150) ?></p>
                <a href="affichage.php?action=update&id_advert=<?= $announce['id_advert'] ?>" class="w-25 m-auto btn btn-primary">Affiche</a>
                </div>
            </div>
            <?php
            }
            ?>
        </article>
    </main>
    
</body>
</html>