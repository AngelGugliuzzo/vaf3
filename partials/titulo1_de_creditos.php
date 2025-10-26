<?php
$creditos = listar_todo($conn,$tabla);
 $e = desa($conn);
 ?>

<?php
//echo"<pre>";
 //var_dump($e);
//echo "<pre>"; segun el var dump, estoy devoviendo un arrayden tro de un aray, cabio el fetch all o pongo $e[0][nombre_equipo]?>

     <h1 class="text-center mb-5 fw-bold">Nuestros Integrantes :<?=$e['nombre_equipo']?></h1>
