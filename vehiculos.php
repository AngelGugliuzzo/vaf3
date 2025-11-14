 
 <?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";
$tabla = $_GET["categoria"] ? $_GET["categoria"]  : FALSE;
$id = $_GET["id"] ? $_GET["id"] : FALSE;
$vehiculos= categoria_particular($conn, $tabla, $id);


/* echo "<pre>";
    var_dump($personaje);
echo "</pre>"; */


//INSERT INTO vehiculos (id, nombre, descripcion, fuente_poder, destino, ruta_imagen) VALUES
?>

<?php require "partials/header.php"   ?>

<main class="container">

    <?php foreach ($vehiculos as $p) {  ?>
        <div class="card mb-3 mt-5 mx-auto" style="max-width: 1000px;">
            <div class="row g-0">
                <div class="col-md-4">
                    <a href="vehiculos2.php?categoria=vehiculos" >
                    <img src="img/vehiculos/<?= $p['ruta_imagen'] ?>" class="img-fluid rounded-start" alt="<?= $p['ruta_imagen'] ?>">
                     </a>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><b>Nombre del Vehículo : </b>  <b><?= $p['nombre'] ?></b> </h5>
                        <p class="card-text"><b>Descripción del Vehículo : </b> <?= $p['descripcion'] ?></p>
                        <p class="card-text"> <b>Fuente de Poder del Vehículo : </b>  <?= $p['fuente_poder'] ?></p>
                        <p class="card-text"><b>Destino del Vehículo : </b> <?=$p['destino'] ?></p>
                        
                       <!-- <a href="index.php" class="btn btn-warning">Volver</a>-->
                         <a href="vehiculos2.php?categoria=vehiculos" class="btn btn-warning">VOLVER</a>
                    </div>
                </div>
            </div>
        </div>
    <?php }   ?>


</main>

<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php"?>

