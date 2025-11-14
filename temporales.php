<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";
$tabla = $_GET["categoria"] ? $_GET["categoria"]  : FALSE;
$id = $_GET["id"] ? $_GET["id"] : FALSE;
$personajes= categoria_particular($conn, $tabla, $id);


/* echo "<pre>";
    var_dump($personaje);
echo "</pre>"; */


//INSERT INTO temporales (id, nombre_pelicula, fecha , sinapsis_peli, ruta_imagen) VALUES
?>

<?php require "partials/header.php"   ?>

<main class="container">

    <?php foreach ($personajes as $p) {  ?>
        <div class="card mb-3 mt-5 mx-auto" style="max-width: 1000px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="img/temporales/<?= $p['ruta_imagen'] ?>" class="img-fluid rounded-start" alt="<?= $p['ruta_imagen'] ?>">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                      <!--  <h5 class="card-title"><b>Años</b><?= $p['nombre_pelicula'] ?></h5>-->
                        <p class="card-text"><b>Fecha : </b> <?= $p['fecha'] ?></p>
                        <p class="card-text"> <b>Resumen : </b>  <?= $p['sinapsis_peli'] ?></p>
                       
                        
                       <!-- <a href="index.php" class="btn btn-warning">Volver</a>-->
                         <a href="temporales2.php?categoria=temporales" class="btn btn-warning">◀ Volver A Lineas Temporales</a>
                    </div>
                </div>
            </div>
        </div>
    <?php }   ?>


</main>
<!--<a href="temporales2.php?categoria=temporales" class="btn btn-warning">VOLVER A TEMPORALES</a>-->
<a href="creditos2.php?categoria=creditos" class="btn btn-warning">IR A CREDITOS ▶</a>

<!--<?php require "partials/boton_navegacion.php"?>-->

<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php"?>

