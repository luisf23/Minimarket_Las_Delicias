<?php

        include_once("../../../Libraries/Core/Conexion.php");

        $con = new Conexion();
        $pdo = $con->getConexion();

        if (!empty($_POST['name-product']) and !empty($_POST['precio']) and  
        !empty($_POST['descripcion']) and !empty($_POST['existencias'])){ 
                $nombrePro = ucwords(strtolower($_POST['name-product']));
                $precioPro = $_POST['precio'];
                $descripcionPro = strtolower($_POST['descripcion']);
                /* $proveedor = ucwords(strtolower($_POST['proveedor']));
                $uMedida = ucwords(strtolower($_POST['u-m'])); */
                $existencias = $_POST['existencias'];


                $sql = "INSERT INTO producto_aseo (nom_product,precio,descripcion,existencias) 
                        VALUES (:nombre, :precio,:descripcion , :existencias)";

                $stm = $pdo->prepare($sql);
                $stm->bindParam(':nombre', $nombrePro);
                $stm->bindParam(':precio', $precioPro);
                $stm->bindParam(':descripcion', $descripcionPro);
                $stm->bindParam(':existencias', $existencias);
                $stm->execute();

                header("Location:aseo.php")
        ?>
                <p style="display:none;">El producto se ah agregado satisfactoriamente</p>
        <?php
        }else{
        ?>
                <p style="display:none;">Por favor complete los campos correctamente</p>
        <?php
        }
        /* if($resultado = $stm->rowCount()){
                $response['ok'] = true;
                $response['message'] = "Producto registrado satisfactoriamente.";
                } else {
                $response['ok'] = false;
                $response['message'] = "Error al registrar el producto.";
                }; */

        /* echo json_encode($response); */