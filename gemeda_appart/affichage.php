<?php

require_once "inc/functions.inc.php";


$id_advert = $_GET['id_advert'] ?? null;

$pdo = conne();
$sql = "SELECT * FROM advert WHERE id_advert = :id_advert";
$request = $pdo->prepare($sql);
$request->bindValue(':id_advert', $id_advert, PDO::PARAM_INT);
$request->execute();

$announce = $request->fetch(PDO::FETCH_ASSOC);


$title = "Details";
require_once "inc/header.inc.php";

?>

<main class="container mt-5 mb-5">
    <h1>Le Bon Appart</h1>
    <article class="row d-flex justify-content-center w-50">
        <?php if ($announce) { ?>
        <div class="col mt-3 indexImg">
            <img src="<?= htmlspecialchars($announce['photo']) ?>" alt="..." width="50">
            <div>
                <h5><?= htmlspecialchars($announce['title']) ?></h5>
                <p><?= htmlspecialchars(substr($announce['description'], 0, 150)) ?></p>
                <a href="affichage.php?action=update&id_advert=<?= htmlspecialchars($announce['id_advert']) ?>" class="w-25 m-auto btn btn-primary">Réservée</a>
            </div>
        </div>
        <?php } else { ?>
        <p>Advert not found!</p>
        <?php } ?>
    </article>
</main>

</body>
</html>
