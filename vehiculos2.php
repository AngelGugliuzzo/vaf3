<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";

//cqapturar lo que viene por url, con la supervariable $_get

$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

//var_dump($tabla)

$categorias = listar_todo($conn, $tabla);


?>


<?php require "partials/header.php" ?>


<!-- INSERT INTO vehiculos (id, nombre, descripcion, fuente_poder, destino, ruta_imagen) VALUES-->

<main>
    <!--bootstrap trbabaja en 4x3creamos preview para cada tabla, porque todas tienen  el nombre nombre en la tabla, -->
    <h1 class="text-center" >  <?=$tabla?></h1>

    <p></p>


    <div class="container">
        <div class="row">
            <?php foreach ($categorias as $c) { ?>
                <div class="col-4 mt-4 mb-4">  <!--bootstrap trbabaja en 4x3-->

                    <div class= style="width: 18rem;"><!--ancho 18rem-->

                        <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>">
                            <img height="300px" src="img/<?=$tabla?>/<?=$c['ruta_imagen']?>" class="card-img-top" alt="<?=$c['ruta_imagen']?>">
                        </a>

                    <div class="card-body">
                        
                    <h5 class="card-title text-white"><?= $c['nombre']?></h5>

                   <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>-->
                    <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>" class="btn btn-warning">ver mas</a>
  </div>
</div>

                </div>
            <?php } ?>

        </div>
    </div>


</main>
<a href="vehiculos2.php?categoria=vehiculos" class="btn btn-warning">VOLVER A VEHICULOS▲</a> 
<a href="temporales2.php?categoria=temporales" class="btn btn-warning">IR A TEMPORALES ▶</a>

<?php require "partials/boton_navegacion.php"?>

<?php require "partials/footer.php" ?>


