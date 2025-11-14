<?php

function personajes($conn){
    $sqlquery = "SELECT * FROM personajes";
    $result = $conn->query($sqlquery);
    return $result->fetch_all(MYSQLI_ASSOC);
}

function personaje_guia($conn){
    $sqlquery= "SELECT id FROM personajes";
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


/*function buscar($conn, $termino_busqueda){
    $termino_busqueda = $conn->real_escape_string($termino_busqueda);
    $sqlTemporales ="SELECT 'temporales' as tabla, id, fecha, sinapsis_peli, ruta_imagen FROM temporales WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";
    $sqlPersonaje = "SELECT 'personajes' as tabla, id, nombre, descripcion, nombre_actor, biografia, descripcion_fisica, ruta_imagen, ruta_imagen2 FROM personajes WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";
    $sqlPeliculas = "SELECT 'peliculas'  as tabla, id, nombre, nombre_escritor, nombre_director, duracion, fecha, sinapsis_peli from peliculas  WHERE LOWER(nombre) LIKE '%$termino_busqueda%' ";
    $sqlVehiculos = "SELECT 'vehiculos'  as tabla, id, nombre, descripcion, fuente_poder, destino, ruta_imagen FROM vehiculos WHERE LOWER (nombre) LIKE '%$termino_busqueda%' ";

        // 2 - Ejecutar las consultas y convirtiendo en array associativo (ORM )
    $resultTemporales = $conn->query($sqlTemporales)->fetch_all(MYSQLI_ASSOC);   
    $resultPersonajes = $conn->query($sqlPersonaje)->fetch_all(MYSQLI_ASSOC);
    $resultPeliculas= $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);
    $resultVehiculos = $conn->query($sqlVehiculos)->fetch_all(MYSQLI_ASSOC);
      
       // 3- Combinar las 4 tablas 
    $resultado = array_merge($resultPersonajes,$resultPeliculas, $resultVehiculos, $resultTemporales);
    return $resultado;}*/

    function buscar($conn, $termino_busqueda){
    // 1. Sanitizar el término de búsqueda
    // Utilizamos LOWER() en MySQL para insensibilidad a mayúsculas/minúsculas.
    // También concatenamos los comodines '%' para buscar el término en cualquier parte de la cadena.
    $termino_busqueda_escaped = $conn->real_escape_string($termino_busqueda);
    $termino_like = "%" . strtolower($termino_busqueda_escaped) . "%";

    // 2. Definir las consultas SQL mejoradas
    // Se agregan múltiples campos en la cláusula WHERE usando OR y la función LOWER()

    // Para temporales:
     //LOWER(fecha) LIKE '$termino_like' OR     esto va en el where,  fecha en el select
     // fecha LIKE  '$termino_like'
    $sqlTemporales = "
        SELECT 'temporales' as tabla, id, sinapsis_peli, ruta_imagen,
        WHERE 
            LOWER(sinapsis_peli) LIKE '$termino_like' 
    ";

    // Para personajes:
    $sqlPersonaje = "
        SELECT 'personajes' as tabla, id, nombre, descripcion, nombre_actor, biografia, descripcion_fisica, ruta_imagen 
        FROM personajes 
        WHERE 
            LOWER(nombre) LIKE '$termino_like' OR 
            LOWER(descripcion) LIKE '$termino_like' OR 
            LOWER(nombre_actor) LIKE '$termino_like' OR 
            LOWER(biografia) LIKE '$termino_like' OR 
            LOWER(descripcion_fisica) LIKE '$termino_like'
    ";

    // Para peliculas:
    $sqlPeliculas = "
        SELECT 'peliculas' as tabla, id, nombre, ruta_imagen, nombre_escritor, nombre_director, sinopsis_peli
        FROM peliculas 
        WHERE 
            LOWER(nombre) LIKE '$termino_like' OR 
            LOWER(nombre_escritor) LIKE '$termino_like' OR 
            LOWER(nombre_director) LIKE '$termino_like' OR 
            LOWER(sinopsis_peli) LIKE '$termino_like'
    ";

    // Para vehiculos:
    $sqlVehiculos = "
        SELECT 'vehiculos' as tabla, id, nombre, ruta_imagen, descripcion, fuente_poder, destino
        FROM vehiculos 
        WHERE 
            LOWER(nombre) LIKE '$termino_like' OR 
            LOWER(descripcion) LIKE '$termino_like' OR 
            LOWER(fuente_poder) LIKE '$termino_like' OR 
            LOWER(destino) LIKE '$termino_like'
    ";

    // 3. Ejecutar las consultas y convertir a array asociativo
    $resultPersonaje = $conn->query($sqlPersonaje)->fetch_all(MYSQLI_ASSOC);
    $resultPeliculas = $conn->query($sqlPeliculas)->fetch_all(MYSQLI_ASSOC);
    $resultVehiculos = $conn->query($sqlVehiculos)->fetch_all(MYSQLI_ASSOC);
   // $resultTemporales = $conn->query($sqlTemporales)->fetch_all(MYSQLI_ASSOC); 
    
    // 4. Combinar los resultados de las 4 tablas 
   // $resultado = array_merge($resultPersonaje, $resultPeliculas, $resultVehiculos, $resultTemporales);
    $resultado = array_merge($resultPersonaje, $resultPeliculas, $resultVehiculos);
    
    return $resultado;
}


?>
