<?php

function personajes($conn){
    $sqlquery = "SELECT * FROM personajes";
    $result = $conn->query($sqlquery);
    return $result->fetch_all(MYSQLI_ASSOC);
}


function listar_todo($conn, $tabla){
    $sqlquery = "SELECT * FROM " . $tabla . ";";
    $result = $conn->query($sqlquery);
    return $result->fetch_all(MYSQLI_ASSOC);
}

function categoria_particular($conn, $tabla, $id){
    $sqlquery = "SELECT * FROM " . $tabla . " WHERE id= " . $id . ";";
    $result = $conn->query($sqlquery);
    return $result->fetch_all(MYSQLI_ASSOC);
}

function menu($conn){
    $sqlquery = "SELECT items FROM menu";
    $result = $conn->query($sqlquery);
   //return mysqli_fetch_assoc($result);
   return $result->fetch_all(MYSQLI_ASSOC);
}


function desa($conn) {
    $sql = "SELECT distinct nombre_equipo FROM creditos";
    $result = mysqli_query($conn, $sql);
    return mysqli_fetch_assoc($result);
}



function buscar($conn, $termino_busqueda){
    $termino_busqueda = $conn->real_escape_string($termino_busqueda);
    $sqlPersonaje = "SELECT 'personajes' as tabla, id, nombre, descripcion, nombre_actor, biografia, descripcion_fisica, ruta_imagen, ruta_imagen2 FROM personajes WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";
    $sqlPeliculas = "SELECT 'peliculas'  as tabla, id, nombre, nombre_escritor, nombre_director, duracion, fecha, sinapsis_peli from peliculas  WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";
    $sqlVehiculos = "SELECT 'vehiculos'  as tabla, id, nombre, descripcion, fuente_poder, destino, ruta_imagen FROM vehiculos WHERE LOWER (nombre) LIKE '%$termino_busqueda%' ";

        // 2 - Ejecutar las consultas y convirtiendo en array associativo (ORM )
    $resultPersonajes = $conn->query($sqlPersonaje)->fetch_all(MYSQLI_ASSOC);
    $resultPeliculas= $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);
    $resultVehiculos = $conn->query($sqlVehiculos)->fetch_all(MYSQLI_ASSOC);
      
       // 3- Combinar las 4 tablas 
    $resultado = array_merge($resultPersonajes,$resultPeliculas, $resultVehiculos);
    return $resultado;
}



?>
