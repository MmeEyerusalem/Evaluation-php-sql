<?php
require_once "functions.inc.php";


?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="<?= RACINE_SITE ?>assets/css/style.css">
    <title><?= $title?></title> 
</head>

<body>
    <header class="container-fluide">
            <nav class=" fixed-top bg-light">
                        <ul class="d-flex justify-content-evenly p-3 me-auto mb-2 mb-lg-0">
                        <li class=" ">
                                <a class="" href="<?= RACINE_SITE ?>index.php">Accueil</a>
                            </li>
                            <li class=" ">
                                <a class="" href="<?= RACINE_SITE ?>ajouterAnnonce.php">Ajouter une annonce</a>
                            </li>
                            <li class="">
                                <a class="" href="<?= RACINE_SITE ?>annonces.php">Consulter toutes les annonces</a>
                            </li>
                        </ul>
            </nav>
    </header>