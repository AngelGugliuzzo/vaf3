
<?php
//<!--investigar claudflare-->
// configuraciones de db
//nombre del host-------->localhost
//    "  del usuario------>root   phpmyadmin/cuena de usuario, me da el usuario y password
//contraseña------->vacia, tienen que ir las comillas juntas
// nombre de la bd------>star_wars3

$host = "localhost";
$user = "root";
$password= "";
$database = "vaf3";

//los tratamientos de errores los hacemos con try-catch

try {//crear coneccion instaancia del metodo new mysqli
    $conn = new mysqli($host,$user,$password, $database);

    //configurar configuracion de caracteres utf8, acentos y ñ

    $conn->set_charset("utf8mb4");
    //metodo propio de php, todos los metodos son propios de php

    //echo "conexion exitosa";

} catch (mysqli_sql_exception $e) { //----> el e es una variable que se usa para el mensaje de error
    error_log("error de oneccion con la base");
    die("error de coneccion, intente mas tarde");
}

    
    

