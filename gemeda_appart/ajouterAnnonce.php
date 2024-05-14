<?php
require_once "inc/functions.inc.php";



if (!empty($_POST)) { 
    // debug($_POST);
    
    $postal_code = isset($_POST['postal_code']) ? $_POST['postal_code'] : '';

    $_POST['photo'] = htmlspecialchars($_POST['photo']);
    $_POST['title'] = htmlspecialchars($_POST['title']);
    $_POST['description'] = htmlspecialchars($_POST['description']);
    $postal_code =  $_POST['postal_code'];
    $_POST['city'] = htmlspecialchars($_POST['city']);
    // $type = $_POST['type'];
    $price  = (float) $_POST['price'];

    // if ($type != 'achat' && $type != 'location') {
    //     $message= 'Invalid value for type';
    // } else {
        $pdo = conne();
        $sql = "INSERT INTO advert(photo, title, description, postal_code , city,  price, reservation_message ) VALUES (:photo, :title, :description, :postal_code, :city, :price, :reservation_message )"; 

        $request= $pdo->prepare($sql);
        $request->execute(array(
            ':photo' => $_POST['photo'],
            ':title' => $_POST['title'],
            ':description' => $_POST['description'],
            ':postal_code' => $_POST['postal_code'],
            ':city' => $_POST['city'],
            // ':type' => $type,
            ':price' => $_POST['price'],
            ':reservation_message' => isset($_POST['reservation_message']) ? $_POST['reservation_message'] : NULL,
        )
     );
    
}


$title = "Ajouter annonce";
require_once "inc/header.inc.php";
?>


<main>
<h2>Ajouter une annonce</h2>
<section class=" ajoutAnnonce">

      <form method="post" action="" class="w-50 mx-auto p-4 mb-4">

        <div class="p-3 col-sm-12">
            <label for="photo">Photo</label>
            <br>
            <input class="form-control" name="photo" type="file" id="photo" value="">
        </div>
        <div class="p-3 col-sm-12">
            <label for="title">Titre de l'annonce</label>
            <input type="text" name="title" id="title" class="form-control" value="">
        </div>
        <div class="p-3 col-sm-12">
            <label for="description">Description de l'annonce</label>
            <input type="text" name="description" id="description" class="form-control" row="10">
        </div>
        <div class="p-3 col-sm-12">
            <label for="postal_code">Code postal</label>
            <input type="number" name="postal_code" id="postal_code" class="form-control" value="">
        </div>
        <div class="p-3 col-sm-12">
            <label for="city">Ville</label>
            <input type="text" name="city" id="city" class="form-control" value="">
        </div>
        <!-- <div class="p-3 col-sm-12">
            <label for="type" class="form-label">Type de l'annonce</label>
            <select name="type" id="type" class="form-select">
                <option value="">------</option>
                <option value="achat">Achat</option>
                <option value="location">Location</option>
            </select> -->
        </div>
        <div class="p-3 col-sm-12">
            <label for="price">Prix</label>
            <input type="text" name="price" id="price" class="form-control" value="">
        </div>

        <input type="submit" value="Ajouter un article" class="btn btn-primary">
      </form>

</section>

</main>