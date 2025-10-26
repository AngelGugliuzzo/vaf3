<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";

//cqapturar lo que viene por url, con la supervariable $_get

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

$id = $_GET["id"] ? $_GET["id"] : FALSE;

$personaje=categoria_particular($conn, $tabla, $id);

echo"<pre>";
 var_dump($personaje);
echo "<pre>";


//echo "<pre>";
 // var_dump($menu);
  //echo "<pre>";


?>

<?php require "partials/header.php" ?>

<?php require "partials/footer.php" ?>



?>
