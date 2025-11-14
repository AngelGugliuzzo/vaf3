<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";

$tabla = $_GET["categoria"] ? $_GET["categoria"]  : FALSE;

$id = $_GET["id"] ? $_GET["id"] : FALSE;

 

$peliculas = categoria_particular($conn, $tabla, $id);



//insert into(id, nombre, nombre_escritor, nombre_director, duracion, fecha, sinapsis_peli, foto_peli) VALUES

?>


<?php require "partials/header.php"   ?>

 

<main class="container">

 
    <?php foreach ($peliculas as $p) {  ?>
        
                <div class="card mb-3 mt-5 mx-auto" style="max-width: 1000px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                           
                    <img src="img/peliculas/<?= $p['ruta_imagen'] ?>" class="img-fluid rounded-start" alt="...">
                
                </div>
  
         
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"><?= $p['nombre'] ?></h5>
                        <p class="card-text"><b>Nombre del Escritor : </b> <?= $p['nombre_escritor'] ?></p>
                        <p class="card-text"> <b>Duración : </b>  <?= $p['duracion'] ?></p>
                        <p class="card-text"><b>Año de Estreno : <b><?= $p['fecha'] ?></p>
                        <p class="card-text"><b>Director : <b><?= $p['nombre_director'] ?></p>
                        <p class="card-text"><b>Resumen : <b><?= $p['sinopsis_peli'] ?></p>

                       
                       
                         <a href="peliculas2.php?categoria=peliculas" class="btn btn-warning"> ◀ Volver a Peliculas</a>
<!--(id, nombre, nombre_escritor, nombre_director, duracion, fecha, sinapsis_peli, foto_peli)-->

                    </div>
                </div>
            </div>
        </div>
    <?php }   ?>


</main>

<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php"?>