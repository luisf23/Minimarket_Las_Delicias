<?php

        include_once("../Libraries/Core/Conexion.php");

        $con = new Conexion();
        $pdo = $con->getConexion();

        if (!empty($_POST['razonS']) && !empty($_POST['nit']) 
                && !empty($_POST['telefono']) && !empty($_POST['celular'])
                && !empty($_POST['direccion']) && !empty($_POST['correo'])){ 

                $razonSocial = ucwords(strtolower($_POST['razonS']));
                $nit = $_POST['nit'];
                $telefono = $_POST['telefono'];
                $celular = $_POST['celular'];
                $direccion = $_POST['direccion'];
                $correo = strtolower($_POST['correo']);

                $consulta_sql = "INSERT INTO proveedor(nit_proveedor, razon_social, direccion, correo, num_fijo, num_cel) 
                        VALUES (:nit,:razonSocial,:direccion,:correo,:telefono,:celular)";

                $stme = $pdo_prov->prepare($consulta_sql);
                $stme->bindParam(':nit', $nit);
                $stme->bindParam(':razonSocial', $razonSocial);
                $stme->bindParam(':direccion', $direccion);
                $stme->bindParam(':correo', $correo);
                $stme->bindParam(':telefono', $telefono);
                $stme->bindParam(':celular', $celular);
                $stme->execute();

/*header("Location:proveedores.php")*/        ?>
                <p style="display:block;">El producto se ah agregado satisfactoriamente</p>
        <?php
        }else{
        ?>
                <p style="display:block;">Por favor complete los campos correctamente</p>
        <?php
        }