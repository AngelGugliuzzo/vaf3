<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";

//cqapturar lo que viene por url, con la supervariable $_get

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

//var_dump($tabla)

$categorias = listar_todo($conn, $tabla);

/*echo "<pre>";
var_dump($categorias); 
echo "<pre>";*/

//INSERT INTO temporales (id, nombre, fecha , sinapsis_peli, ruta_imagen) VALUES
?>

<?php require "partials/header.php" ?>

<main>
    <!--bootstrap trbabaja en 4x3creamos preview para cada tabla, porque todas tienen  el nombre nombre en la tabla, -->
    <h1 class="text-center" ><u> Líneas Temporales<u></h1>
    <h2 class= "text-align" ><u>Viaje en el Tiempo<u></h2>
    <br>
<h3>La línea de tiempo de Volver al Futuro se caracteriza por una única línea temporal que se va modificando con cada viaje al pasado. Cuando Marty McFly altera eventos en 1955, como la forma en que sus padres se conocen, la línea de tiempo original se reemplaza por una versión nueva y mejorada de 1985. La trilogía explora estas alteraciones a través de la interacción de Marty con sus padres, la interferencia de Biff Tannen y los viajes de Doc Brown al pasado, creando un bucle de causa y efecto que altera el futuro. </h3>

    <div class="container">
        <div class="row">
            <?php foreach ($categorias as $c) { ?>

                <!--<div class="text-white col-4 mt-4 mb-4">-->
                <div class="text-white col-4 mt-4 mb-4">  <!--bootstrap trbabaja en 4x3-->

                    <div class="style= width: 18rem;"><!--ancho 18rem-->

                    <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>">
                        <img height="250px" src="img/<?=$tabla?>/<?= $c['ruta_imagen']?>" class="card-img-top" alt="...">
                    </a>    
                                 
                    <div class="card-body">


                   <!-- <h5 class="card-title  "><?= $c['nombre']?></h5>-->
                    <h5 class="card-title  "><?= $c['fecha']?></h5>


                   <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>-->
                    <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>" class="btn btn-warning">ver mas</a>
  </div>
</div>

                </div>
            <?php } ?>

        </div>
    </div>


</main>
<a href="temporales2.php?categoria=temporales" class="btn btn-warning">VOLVER A TEMPORALES ▲</a>
<a href="creditos2.php?categoria=creditos"class="btn btn-warning">IR A CREDITOS ▶</a>

<?php require "partials/boton_navegacion.php"?>

<?php require "partials/footer.php" ?>




