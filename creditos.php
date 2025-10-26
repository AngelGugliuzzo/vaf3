<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";
$tabla = $_GET["categoria"] ? $_GET["categoria"]  : FALSE;
$id = $_GET["id"] ? $_GET["id"] : FALSE;
$creditos= categoria_particular($conn, $tabla, $id);


/* echo "<pre>";
    var_dump($personaje);
echo "</pre>"; */

//INSERT INTO creditos (id, nombre_equipo, nombre_desarrollador, fecha_nacimiento, dir_mail, ruta_imagen) VALUES

?>

<?php require "partials/header.php"   ?>

<main class="container">

    <?php foreach ($creditos as $p) {  ?>
        <div class="card mb-3 mt-5 mx-auto" style="max-width: 1000px;">
            <div class="row g-0">
                <div class="col-md-4">
                  <!--  <img src="img/creditos/<?= $p['ruta_imagen'] ?>" class="img-fluid rounded-start" alt="<?= $p['ruta_imagen'] ?>">-->
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><b>GRUPO : </b><?= $p['nombre_equipo'] ?></h5>
                        <p class="card-text"><b> NOMBRE DEL INTEGRANTE : </b> <?= $p['nombre_desarrollador'] ?></p>
                        <p class="card-text"> <b>Dirección de mail : </b>  <?= $p['dir_mail'] ?></p>
                       
                        
                         <a href="creditos2.php?categoria=creditos" class="btn btn-warning">VOLVER</a>
                    </div>
                </div>
            </div>
        </div>
    <?php }   ?>


</main>

<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php"?>

