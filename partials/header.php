<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> VOLVER AL FUTURO </title>
  <!--1 link css-->

<link rel="stylesheet" href="css/estilos.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  
  <!--2 custom css-->
  <link rel="stylesheet" href="css/estilos.css">


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!--favicon-->
  <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">


</head>

<body>

  <body style="background-color: black;">
    <nav class="navbar navbar-expand-lg" style="background-color: #58A0C8 ;">

      <!-- <nav class="navbar navbar-expand-lg bg-body-tertiary"> este es el color cambiar-->


      <div class="container-fluid">



        <a class="navbar-brand"><img src="img/peliculas/logovaf7.png" class="d-block w-100" alt="..."> </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">

              <a class="nav-link " aria-current="page" href="index.php">INICIO</a> <!--nav-link active-->
            </li>

            <li class="nav-item">
              <a class="nav-link" href="peliculas2.php?categoria=peliculas">PELÍCULAS</a>

            <li class="nav-item">
              <a class="nav-link" href="personajes2.php?categoria=personajes">PERSONAJES</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="vehiculos2.php?categoria=vehiculos">VEHÍCULOS</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="temporales2.php?categoria=temporales">LINEAS TEMPORALES</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="creditos2.php?categoria=creditos">CRÉDITOS</a>
            </li>


          </ul>


          <form action="busqueda.php" method="GET" class="d-flex" role="search">
            <input class="form-control me-2" type="search" name="q" placeholder="Search" aria-label="Search" />
            <button class="btn btn-outline-success" type="submit">BUSCAR</button>
                
          </form>
        </div>
      </div>
    </nav>
     <h1 class="mt-5 text-center">VOLVER AL FUTURO</h1>
     <!--<h2 style="color: #FF0000;" class="mt-5 text-center">AVISO DE SPOILER : ESTO ES SOLO UN ADELANTO DE LA PELÍCULA, SE ACONSEJA VERLA PARA ENTEDERLA, ¡¡¡¡PORQUE ESTÁ BUENISIMA!!!! </h2>-->