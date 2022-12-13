<?php

require_once("Config/Config.php"); 
require_once("Helpers/Helpers.php");
$url= !empty($_GET['url']) ? $_GET['url']: 'home/home';
$arrUrl = explode("/", $url);
$controller = $arrUrl[0];
$method = $arrUrl[0];
$params = "";
if (!empty($arrUrl[1])) {
    if ($arrUrl[1] != "") { 
        $method = $arrUrl[1];
    }
}
if (!empty($arrUrl[2])) {
    if ($arrUrl[2] != "") {
        for ($i = 2; $i < count($arrUrl); $i++) {
        $params = $arrUrl[$i] . ',';
        }
      $params = trim($params, ',');
    }
}
require_once("Libraries/Core/Autoload.php"); 
require_once("Libraries/Core/Load.php");

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- CSS ITERNO -->
    <link rel="stylesheet" href="FRONT/CSS/index.css">
    <!--Bootstrap JAVASCRIPT-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Mercado</title>
  </head>
  <body class="text-center">
    <!-- PHP -->
    <main class="form-signin">
      
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="FRONT/IMG/IMG4.png" class="d-block w-40" alt="FRONT/IMG/IMG4.png" id="imgcarrusel" width="300px" height="200px">
            </div>
            <div class="carousel-item">
              <img src="FRONT/IMG/IMG6.png" class="d-block w-40" alt="FRONT/IMG/IMG6.png" id="imgcarrusel" width="300px" height="200px">
            </div>
            <div class="carousel-item">
              <img src="FRONT/IMG/IMG7.png" class="d-block w-40" alt="FRONT/IMG/IMG7.png" id="imgcarrusel" width="300px" height="200px">
            </div>
            <div class="carousel-item">
              <img src="FRONT/IMG/IMG8.png" class="d-block w-40" alt="FRONT/IMG/IMG8.png" id="imgcarrusel" width="300px" height="200px">
            </div>
            <div class="carousel-item">
              <img src="FRONT/IMG/IMG9.png" class="d-block w-40" alt="FRONT/IMG/IMG9.PNG" id="imgcarrusel" width="300px" height="200px">
            </div>
            </div>
          </div>
        </div>
        <form method="post" action="<?php $_SERVER ["PHP_SELF"]; ?>">
        <h1 class="h3 mb-3 fw-normal">Por favor ingrese</h1>
    
        <div class="form-floating mb-2">
          <input type="login" name="login" class="form-control" id="floatingInput" placeholder="usuario">
          <label for="floatingInput">Usuario</label>
        </div>
        <div class="form-floating mb-2" >
          <input type="password" name="pass" class="form-control" id="floatingPassword" placeholder="Contraseña">
          <label for="floatingPassword">Contraseña</label>
        </div>
    
        <div class="checkbox mb-3">
          <label>
            <input type="checkbox" value="remember-me"> Recuerdame
          </label>
        </div>
        <?php echo $mensaje; ?>
        <button class="w-100 btn btn-lg btn-primary mb-3" type="submit" name="ingreso">Ingresar</button>
        <button class="w-100 btn btn-lg btn-secondary" type="reset">Borrar</button>
        <p class="mt-5 mb-3 text-muted">2022</p>
      </form>
    </main>



  </body>
</html>

