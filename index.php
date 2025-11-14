

<?php
  require_once "utils/db_connection.php"; 
  require_once "utils/funciones.php";
  $personajes  = personajes($conn);
 // $tabla = $_GET["categoria"] ? $_GET["categoria"] : FALSE;
  //$categorias = listar_todo($conn, $tabla);


?>

<?php require "partials/header.php" ?>


<img src="img/peliculas/vafafiches2.png" class="d-block w-100" alt="...">
<!--<h1 class="mt-5 text-center">VOLVER AL FUTURO</h1>-->
<h1 class="mt-5 text-center">PERSONAJES PRINCIPALES</h1>


<?php
$i = 0;       // Contador para controlar la alternancia
foreach ($personajes as $p):
  $i++;
  // Si $i es impar (1, 3, 5...), el texto va primero
  $clase_orden_texto = ($i % 2 != 0) ? 'order-md-1' : 'order-md-2';
  // Si $i es par (2, 4, 6...), el texto va segundo, la imagen va primera (por defecto)
  $clase_orden_imagen = ($i % 2 != 0) ? 'order-md-2' : 'order-md-1';
?>

  <main class="container">
    
<!--poner text-white antes de row feat....-->
    <div class=" text-white row featurette d-flex align-items-center my-5 border-bottom pb-4">

      <div class="col-md-6 <?= $clase_orden_texto; ?>">

        <h2 class="featurette-heading">PERSONAJE N° <?= $i; ?></h2>
        <p class="lead"><?= ($p['nombre']) ?></p>
        <!--ver que funciona-->
        <a href="personajes2.php?categoria=personajes" class="btn btn-primary">IR A PERSONAJES</a>
       <a href="personajes.php?categoria=personajes&id=<?= $p['id'] ?>" class="btn btn-warning">ver mas</a>
      </div>

  <!--<a href="personajes.php?categoria=personajes&id=<?= $p['id'] ?>">-->
            <div class="col-md-6 <?= $clase_orden_imagen; ?>">
                  <a href="personajes.php?categoria=personajes&id=<?= $p['id'] ?>">
                 <!--<a href="personajes2.php?categoria=personajes">-->
                  <img class="img-fluid rounded shadow-lg"
                  src="img/personajes/<?= $p['ruta_imagen2'] ?>"
                  alt="<?= ($p['nombre']) ?>"
                  style="object-fit: cover; height: 250px; width:300px;">
                </a>

            </div>
 <!-- </a>-->
     
    </div>
  </main>
<?php endforeach; ?>

<a href="peliculas2.php?categoria=peliculas"class="btn btn-warning">IR A PELICULAS ▶</a>


<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php" ?>













