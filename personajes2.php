<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";
$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;
$categorias = listar_todo($conn, $tabla);
?>
<?php require "partials/header.php" ?>

<main>
   
    <h1 class="text-center" > guia de <?=$tabla?></h1>

    <div class="container">
        <div class="row">
            <?php foreach ($categorias as $c) { ?>

                <!--<div class="text-white col-4 mt-4 mb-4">-->
                <div class="text-white col-4 mt-4 mb-4">  <!--bootstrap trbabaja en 4x3-->

                    <div class= style="width: 18rem;"><!--ancho 18rem-->
                    <img height="400px" src="img/<?=$tabla?>/<?= $c['ruta_imagen']?>" class="card-img-top" alt="<?=$c['nombre']?>">
                    <div class="card-body">


                    <h5 class="card-title  "><?= $c['nombre']?></h5>

                    <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>" class="btn btn-warning">ver mas</a>
  </div>
</div>

                </div>
            <?php } ?>

        </div>
    </div>


</main>

<?php require "partials/boton_navegacion.php"?>

<?php require "partials/footer.php" ?>




