<?php
  require_once "utils/db_connection.php"; 
  require_once "utils/funciones.php";
  //$personajes  = personajes($conn);
  $tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;
  $peliculas = listar_todo($conn, $tabla);
?>

<?php require "partials/header.php" ?>


<h1 class="mt-2 text-center"><?=$tabla?></h1>


<?php
$i = 0;       // Contador para controlar la alternancia
foreach ($peliculas as $p):
  $i++;
  // Si $i es impar (1, 3, 5...), el texto va primero
  $clase_orden_texto = ($i % 2 != 0) ? 'order-md-1' : 'order-md-1';
  // Si $i es par (2, 4, 6...), el texto va segundo, la imagen va primera (por defecto)
  $clase_orden_imagen = ($i % 2 != 0) ? 'order-md-2' : 'order-md-2';
?>



  <main class="container">
  

    <div class="row featurette d-flex align-items-center my-5 border-bottom pb-4">

        <div class="col-md-6 <?= $clase_orden_texto; ?>">
           <!-- <h2 class="featurette-heading"><?=$tabla?> N° <?=$i; ?></h2>-->
            <p class="lead"><b class="text-white"><?= ($p['nombre']) ?></b></p>
            <a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $p['id'] ?>" class="btn btn-warning">Ver Mas</a>
        </div>
    


      <div class="col-md-6 <?= $clase_orden_imagen; ?>">

       <!--  <img class="img-fluid rounded shadow-lg"
          src="img/peliculas/<?= $p['ruta_imagen'] ?>"
          alt="<?=($p['ruta_imagen'])?>"
          style="object-fit: cover; height: 250px; width:300px;">-->

<a href="<?=$tabla ?>.php?categoria=<?=$tabla ?>&id=<?= $p['id'] ?>">
        <img class="img-fluid rounded shadow-lg"
          src="img/peliculas/<?= $p['ruta_imagen'] ?>"
          alt="<?=($p['ruta_imagen'])?>">
</a>

         <!-- style="object-fit: cover; height: 250px; width:300px;">-->


      </div>

     
    </div>

  </main>

<?php endforeach; ?>




<!--hay que ver como ponerlo dentro de un main--> 
<!-- ===================== TRAILERS DE VOLVER AL FUTURO ===================== -->

    <div class="container mt-5">
        <h2 class="text-center mb-4 text-white">🎬 Trailers de Volver al Futuro</h2>
        <div class="row justify-content-center">
            <div class="col-md-4 mb-4">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/qvsgGtivCgs" title="Volver al Futuro I" allowfullscreen></iframe>
                </div>
                <h5 class="text-center text-white mt-2">Volver al Futuro I</h5>
            </div>

            <div class="col-md-4 mb-4">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/_cBq0XaIUZA?si=K7b3VpAW1F_O6YNb" title="Volver al Futuro II" allowfullscreen></iframe>
                </div>
                <h5 class="text-center text-white mt-2">Volver al Futuro II</h5>
            </div>

            <div class="col-md-4 mb-4">
                <div class="ratio ratio-16x9">
                    <iframe src="https://www.youtube.com/embed/WmBX7CA-AAc?si=pzU9Q_lgSA_QvalD" title="Volver al Futuro III" allowfullscreen></iframe>
                </div>
                <h5 class="text-center text-white mt-2">Volver al Futuro III</h5>
            </div>
        </div>
    </div>
    <!-- ======================================================================= -->

<!--</main>-->
<a href="peliculas2.php?categoria=peliculas" class="btn btn-warning">VOLVER A PELICULAS ▲</a>
<a href="personajes2.php?categoria=personajes"class="btn btn-warning">IR A PERSONAJES ▶</a>
<?php require "partials/boton_navegacion.php"?>

<?php require "partials/footer.php" ?>













