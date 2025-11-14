<?php
  require_once "utils/db_connection.php"; 
  require_once "utils/funciones.php";
  $tabla = $_GET["categoria"] ? $_GET["categoria"]  : FALSE;
$id = $_GET["id"] ? $_GET["id"] : FALSE;
$personajes= categoria_particular($conn, $tabla, $id);

//INSERT INTO personajes (id, nombre, descripcion, nombre_actor, biografia, descripcion_fisica,ruta_imagen,ruta_imagen2) VALUES
?>

<?php require "partials/header.php" ?>

<main>

 <link rel="stylesheet" href="css/estilos.css">
  <?php foreach($personajes as $p) { ?>

  <div class="container my-4">

    <!-- TÍTULO en margen IZQUIERDO, arriba -->
    
      <h1  class="mt-2  text-start"><u><?=$p['nombre']?><u></h1>
      <h2 class="mt-2  text-start"><?=$p['nombre_actor']?></h2>

    <!-- PRIMERA SECCIÓN: foto a la izquierda, texto descriptivo a la derecha, botón debajo de la foto -->
    <section class="mb-5">

      <div class="row align-items-start">
        
        <div class="col-12 col-md-4 order-1 order-md-1 text-center text-md-start"> 
          
              <a href="personajes2.php?categoria=personajes">
           <img class="img-fluid rounded shadow-lg" src="img/personajes/<?= $p['ruta_imagen'] ?>">
            </a>
            <!-- <a href="personajes2.php?categoria=personajes" class=" mt-3 btn btn-warning">VOLVER</a> -->
        </div>

      
        <div class="col-12 col-md-8 order-2 order-md-2 mt-3 mt-md-0">
            <p class="lead"><b class="text-white"><?= ($p['descripcion']) ?></b></p>
        </div>

      </div>
    </section>

<!--<img height="400px" src="img/<-->

    <!-- TÍTULO centrado: Biografía -->
    <h2 class="text-center mb-4">Biografía</h2>
     <p class="mt-2 text-center text-white "><?= ($p['biografia'])?></p>


    <!-- SEGUNDA SECCIÓN: texto a la IZQUIERDA, foto a la DERECHA (lo contrario a la presentación de arriba) -->
     <section class="mb-5">
      <h3><u>DESCRIPCION FISICA<u></h3>
      <div class="row align-items-start">
        
         <div class="col-12 col-md-4 order-1 order-md-1 text-center text-md-start">
            <p class="lead"><b class="text-white"><?= ($p['descripcion_fisica']) ?></b></p>
          </div>

        <!-- Columna texto (derecha en pantallas md+) -->
                   <div class="col-12 col-md-8 order-2 order-md-2 mt-3 mt-md-0">
          <!--aca va la descripcion-->
              <!--img height="400px" class="img-fluid rounded shadow-lg" esto redonde la foto, per no le da el tamaño-->
                   <a href="personajes2.php?categoria=personajes">
                  <img height="400px" src="img/personajes/<?= $p['ruta_imagen2'] ?>">
                  </a>
             <!--<a href="personajes2.php?categoria=personajes" class=" mt-3 btn btn-warning">VOLVER</a>-->
         </div>



      </div>
    </section>

  </div>
  <?php } ?>

  </main>
 <a href="personajes2.php?categoria=personajes" class="btn btn-warning">  ◀ VOLVER A LA GUIA</a>
 <a href="vehiculos2.php?categoria=vehiculos"class="btn btn-warning">IR A VEHICULOS ▶</a> 
<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php" ?>
