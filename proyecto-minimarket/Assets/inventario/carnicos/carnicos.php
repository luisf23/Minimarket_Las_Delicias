<!-- conect database -->
<?php
    require_once("../../../Libraries/Core/Conexion.php");
    include_once("agregar-producto-carnicos.php");

    $con = new Conexion();
    $pdo = $con->getConexion();
    
?>
<!-- HTML -->
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Productos e Inventario</title>
<!-- Estilo CSS -->
<link rel="stylesheet" href="../abarrotes/abarrotes.css">
<!-- import BOOTSRAP -->
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<!-- ICONS -->
<script src="https://kit.fontawesome.com/2d587aad81.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- iconos de inicio.. -->
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="home" viewBox="0 0 16 16">
            <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
        </symbol>
        <symbol id="speedometer2" viewBox="0 0 16 16">
            <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
            <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
        </symbol>
        <symbol id="table" viewBox="0 0 16 16">
            <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
        </symbol>
        <symbol id="people-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
        </symbol>
        <symbol id="grid" viewBox="0 0 16 16">
            <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
        </symbol>
    </svg>

<!-- TEXT BG INFO CAMBIA EL COLOR DEL LADO IZQUIERDO .. -->

<main class="d-flex flex-nowrap">
    <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark" style="width: 280px;">
        <a class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
        <svg class="bi pe-none me-2" width="40" height="32"></svg>
        <object data="../../brand/logo2.svg" width="200" height="250"></object>
        </a>
        <hr>
    <!-- Cambiar class active para mostar la ventana actual-->
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="#" class="nav-link " style="color:#fff;" aria-current="page">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#home"/></svg>
                Inicio
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"/></svg>
                Facturas
                </a>
            </li>
            <li>
                <a href="#" class="nav-link active text-white">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
                Inventario
            </a>
            </li>
            <li>
                <a href="clientes.php" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
                Clientes
                </a>
            </li>
            <li>
                <a href="../../proveedores.php" class="nav-link text-white">
                <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
                Proveedores
                </a>
            </li>
        </ul>
        <hr>
        <!-- div para ventana desplegable de usuario.. -->
        <div class="dropdown">
            <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="Assets/img/usuario.png" alt="" width="32" height="32" class="rounded-circle me-2">
            <strong>Usuario</strong>
            </a>

            <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                <li><a class="dropdown-item" href="#">Registro</a></li>
                <li><a class="dropdown-item" href="#">Configuracion</a></li>
                <li><a class="dropdown-item" href="#">Perfil</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="\BACK\PHP\sesion.php">Cerrar Sesión</a></li>
            </ul>
        </div>
    </div>

    <div class="b-example-divider b-example-vr"></div>

    <div class="principal" >
        <h1>Inventario</h1>
        <nav class="nav-inventario">
            <ul class="barra-nav-inventario">
                <li class="inventario-nav-li"><i class=""></i><a href="#">Carnicos</a></li>
                <li class="inventario-nav-li"><i class=""></i><a href="../lacteos/lacteos.php">Lacteos</a></li>
                <li class="inventario-nav-li"><i class=""></i><a href="../abarrotes/abarrotes.php">Abarrotes</a></li>
                <li class="inventario-nav-li"><i class=""></i><a href="../aseo/aseo.php">Aseo (Personal/Hogar)</a></li>
                <li class="inventario-nav-li"><i class=""></i><a href="../bebidas/bebidas.php">Bebidas</a></li>
            </ul>
        </nav>
    <section class="container-table" >
        <table class="table">
            <thead>
                <tr class="fila-titulo-btn">
                    <th class="fila-titulo" colspan="5">Inventario de Carnicos</th>
                    <th class ="fila-btn" colspan= "3">
                        <button class="btn_agregar-product" id="btn_agregar-product">Agregar Producto</button>
                    </th>
                </tr>
                <tr class="fila">
                    <th class="fila-encabezado">#</th>
                    <th class="fila-encabezado">Producto</th>
                    <th class="fila-encabezado">Precio</th>
                    <th class="fila-encabezado descrip">Descripcion</th>
                    <th class="fila-encabezado">Proveedor</th>
                    <th class="fila-encabezado medida">U_M</th>
                    <th class="fila-encabezado">Exist.</th>
                    <th class="fila-encabezado">Info...</th>
                </tr>
            </thead>    
            <?php

            $query = "SELECT id_product, nom_product, precio, descripcion,
            id_proveedor,id_unid_medida, existencias FROM producto_carnicos";

            $stm = $pdo->query($query);
            $rowcount = $stm->rowCount();
            $datos = $stm->fetchAll(PDO::FETCH_ASSOC);

            if($rowcount > 0){
                
                foreach($datos as $data){
            ?>
                    <tbody>
                        <tr class="filaP">
                            <td class="fila-p"> <?php echo $data['id_product']; ?> </td>
                            <td class="fila-p"> <?php echo $data['nom_product']; ?></td>
                            <td class="fila-p"> <?php echo $data['precio']; ?></td>
                            <td class="fila-p"> <?php echo $data['descripcion']; ?></td>
                            <td class="fila-p"> <?php echo $data['id_proveedor']; ?></td>
                            <td class="fila-p medida"> <?php echo $data['id_unid_medida']; ?></td>
                            <td class="fila-p"> <?php echo $data['existencias']; ?></td>
                            <td class="fila-p"><a href="#">Ver mas</a></td>
                        </tr>
                    </tbody>
            <?php
                }
            }
            ?>
        </table>
        <div class="overlay" id="overlay">
            <div class="popup" id="popup">
                <a href="#" id="btn_cerrar-popup" class="btn_cerrar-popup"><i class="fas fa-times"></i></a>
                <h2>Agregar Producto</h2>
                <hr class="popup-hr">
                <form action="carnicos.php" method="post" class="form-popup" id="form-popup">
                    <div id="grupo_name-product">
                        <label class="popup-label" for="name-product">Nombre del producto:</label>
                        <input class="popup-input" type="text" name="name-product">
                        <p class="mensaje-error">El nombre del producto debe contener menos de 30 caracteres y no puede contener simbolos.</p>
                    </div>
                    <div id="grupo_precio">
                        <label class="popup-label" for="precio">Precio del producto:</label>
                        <input class="popup-input" type="number" name="precio">
                        <p class="mensaje-error">El precio del producto solo puede contener numeros y el simbolo: | , | (coma). </p>
                    </div>   
                    <div id="grupo_descripcion">
                        <label class="popup-label" for="descripcion">Descripcion del producto:</label>
                        <input class="popup-input" type="text-area" name="descripcion">
                        <p class="mensaje-error">La descripcion no puede contener simbolos y debe contener menos de 80 caracteres.</p>
                    </div>
                        <!-- <label class="popup-label" class="popup-input" for="stock">Proveedor del producto:</label>
                        <input class="popup-input" type="text" name="proveedor">
                        <label class="popup-label" class="popup-input" for="name-product">Unidad de medida del producto</label>
                        <input class="popup-input" type="text" name="u-m"> -->
                    <div id="grupo_existencias">
                        <label class="popup-label" for="existencias">Cantidad de existencias:</label>
                        <input class="popup-input" type="number" name="existencias">
                        <p class="mensaje-error">El campo existencias solo puede contener numeros.</p>
                    </div>
                    <div>
                        <input class="popup-btn" type="submit" value="Agregar">
                    </div>
                    <p id="error-enviar" class="error-enviar"> Por favor complete los campos correctamente.</p>
                </form>
            </div>
        </div>
    </section>
    </div>
</main>

<script src="../abarrotes/validar-agregar-pro.js"></script>
<script src="../../js/inventario-popup.js"></script>
<script src="../../js/bootstrap.bundle.min.js"></script>
<script src="../../js/inicio.js"></script>
</body>
</html>
