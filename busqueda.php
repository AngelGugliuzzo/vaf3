<?php
require_once "utils/db_connection.php";
require_once "utils/funciones.php";


//operador ternario
$termino_busqueda = $_GET['q'] ? $_GET['q'] : '';

//var_dump($termino_busqueda);

$resultados = [];

if ($termino_busqueda) {
    //si hay termino de la busqueda , llamamos a la funcion buscar
    $resultados = buscar($conn, $termino_busqueda);
}

?>

<?php require "partials/header.php"   ?>

<main class="container">
    <h1 class="text-center">Resultados de busqueda</h1>

    <?php if ($termino_busqueda && !empty($resultados)) { ?>

        <div class="row">
            <?php foreach ($resultados as $c) { ?>
                <div class="col-4 mt-4 mb-4">
                    <div class="card" style="width: 18rem;">
                        <img height="400px" src="img/<?= $c['tabla'] ?>/<?= $c['ruta_imagen'] ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?= $c['nombre'] ?></h5>

                            <a href="<?= $c['tabla'] ?>.php?categoria=<?= $c['tabla'] ?>&id=<?= $c['id'] ?>" class="btn btn-warning">Ver Mas</a>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>


    <?php }elseif($termino_busqueda){  ?>
           <p class="text-center text-success fs-3"> No se encontraron resultados para el termino busqueda: <?= $termino_busqueda ?> </p>  
    <?php }else { ?>
             <p class="text-center text-success fs-3"> El campo de busqueda no puede estar vacio </p>  
    <?php } ?>
</main>


<?php require "partials/boton_navegacion.php"?>
<?php require "partials/footer.php"?>
