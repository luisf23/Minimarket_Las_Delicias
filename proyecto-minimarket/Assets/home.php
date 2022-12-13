<!-- conect database -->
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Home</title>
<!-- Estilo CSS -->
<link rel="stylesheet" href="css/inicio.css">
<!-- import BOOTSRAP -->
<link href="css/bootstrap.min.css" rel="stylesheet">
    
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
      <object data="Assets/brand/logo2.svg" width="200" height="250"></object>
    </a>
    <hr>
    <!-- Cambiar class active para mostar la ventana actual-->
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="#" class="nav-link active" aria-current="page">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#home"/></svg>
          Inicio
        </a>
      </li>
      <li>
        <a href="#" class="nav-link text-white" >
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#table"/></svg>
          Facturas
        </a>
      </li>
      <li>
        <a href="inventario.php" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
          Productos/Inventario
        </a>
      </li>
      <li>
        <a href="clientes.php" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
          Clientes
        </a>
      </li>
      <li>
        <a href="proveedores.php" class="nav-link text-white">
          <svg class="bi pe-none me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
          Proveedores
        </a>
      </li>
    </ul>
    <hr>
        <!-- div para ventana desplegable de usuario.. -->
    <div class="dropdown">
      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="assets/img/usuario.png" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong>NAME</strong>
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

  
  <div class="container mt-5 mb-5">
        <div class="row g-0">
           <div class="col-md-8 border-right">

            <div class="p-3 bg-white">
             <div class="d-flex justify-content-between align-items-center">
                <h1 class="heading1">Venta articulos</h6>

             </div>



             <!-- lista de tablas articulos -->
             <div class="table-responsive">
             <table class="table">
                <thead>
                    <th>C.Product</th>
                    <th>Nombre</th>
                    <th>Precio</th>  
                    <th></th>
                   

                </thead>

                <tbody>
                    <tr>
                     <td>0052</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                    <tr>
                     <td>0053</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                    <tr>
                     <td>0054</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                   
                    <tr>
                     <td>0051</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                     <tr>
                     <td>0051</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>
                    <tr>
                     <td>0056</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                    <tr>
                     <td>0058</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                     <tr>
                     <td>0058</td>
                     <td>cebolla</td>
                     <td>$140.00</td> 
                    <td><i class="fa fa-ellipsis-v"></i></td>   
                    </tr>

                </tbody>


             </table>


             </div>
              <!-- cuadro para ver el total .. -->
             <div class="col-xl-3 col-md-6 mb-1">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                TOTAL</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                        </div>
                              
                                    </div>
                                </div>
                            </div>
                        </div>
           </div>

           <div class="bg-white border-center p-3">
           <button class="w-100 btn btn-primary btn-lg" type="submit">Facturar</button>
           </div>
                
      </div>


        <!-- cuadro para agregar producto -->
           <div class="col-md-4 p-5" >

  
           <div class="col-md-7 col-lg-8">
            <h4 class="mb-1">Agregar Producto</h4>
            <form>
              <div class="row g-3">
                <div class="col-sm-6">
                </div>
    
                <div class="col-sm-6">
                </div>
    
                <div class="col-12">
                </div>
    
                <div class="col-12">
                  <label for="text" class="form-label">Codigo Producto <span class="text-muted">(Optional)</span></label>
                  <input type="text" class="form-control" id="code_produc" placeholder="Ingrese Codigo Producto">
                </div>
    
                <div class="col-12">
                  <label for="text" class="form-label">Nombre Producto</label>
                  <input type="text" class="form-control" id="name_produc" placeholder="Ingrese nombre de producto" required>
                </div>
    
                <div class="col-md-5">
                  <label for="text" class="form-label">Cantidad</label>
                  <input type="text" class="form-control" id="can_product" placeholder="Cantidad Product" required>
                </div>
    
            <hr class="my-4">
            <button class="w-100 btn btn-danger btn-lg" type="reset">Borrar</button>
            <button class="w-20 btn btn-primary btn-lg" type="submit" id="agregar">agregar</button>
          </form>
          
                    
 
</main>


    <script src="js/bootstrap.bundle.min.js"></script>

      <script src="js/inicio.js"></script>
  </body>
</html>
