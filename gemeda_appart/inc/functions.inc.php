<?php

define("RACINE_SITE", "/evaluation_Eyerusalem/gemeda_appart/");


session_start();


define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS", "");
define("DBNAME", "php_intermediaire_eyerusalem");

function conne()
{

$pdo = new PDO('mysql:host=localhost;dbname=php_intermediaire_eyerusalem;charset=utf8', 'root', '');
$dsn = "mysql:host=" . DBHOST . ";dbname=" . DBNAME . ";charset=utf8";

try {

    $pdo = new PDO($dsn, DBUSER, DBPASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

} catch (PDOException $e) {

    die($e->getMessage());
}

return $pdo;

}
// conne();

//////////////////////////function debug///////////////////////////////
function debug($vari){
    echo '<pre class="alert alert-warning">';
    var_dump($vari);
    echo '</pre>';
}

$title = "";