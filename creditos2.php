<?php require_once "utils/db_connection.php"?>
<?php require_once "utils/funciones.php"?>

<?php
$tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;

 $creditos = listar_todo($conn,$tabla);

 //INSERT INTO creditos (id, nombre_equipo, nombre_desarrollador, fecha_nacimiento, dir_mail, ruta_imagen) VALUES
?>

<?php require "partials/header.php" ?>


 <main>
    <!--bootstrap trbabaja en 4x3creamos preview para cada tabla, porque todas tienen  el nombre nombre en la tabla, -->
    <h1 class="text-center" >  <?=$tabla?></h1>

    <p></p>


    <div class="container">
        <div class="row">
            <?php foreach ($creditos as $c) { ?>
                <div class="col-4 mt-4 mb-4">  <!--bootstrap trbabaja en 4x3-->

                    <div class= style="width: 18rem;"><!--ancho 18rem-->
                    <!--<img height="400px" src="img/<?=$tabla?>/<?=$c['ruta_imagen']?>" class="card-img-top" alt="<?=$c['ruta_imagen']?>">-->
                    <div class="card-body">

                    <h5 class="card-title text-white"><?= $c['nombre_desarrollador']?></h5>

                  

                   <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>-->
                    <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $c['id'] ?>" class="btn btn-warning">Ver Mas</a>
  </div>
</div>

                </div>
            <?php } ?>

        </div>
    </div>


</main>

<?php require "partials/boton_navegacion.php"?>

<?php require "partials/footer.php" ?>


  
  