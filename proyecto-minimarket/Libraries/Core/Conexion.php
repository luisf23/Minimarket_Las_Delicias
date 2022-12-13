<?php

class Conexion {
    const BD_HOST = "localhost";
    const BD_NAME = "minimarket";
    const BD_USERNAME = "root";
    const BD_PASSWORD = "";
    

    public function getConexion() {
        $host = self::BD_HOST;
        $namedb = self::BD_NAME;
        $user = self::BD_USERNAME;
        $passw = self::BD_PASSWORD;

        $connectionString ="mysql:host=".$host.";dbname=".$namedb.";charset=utf8";
        try{
            $conect = new PDO($connectionString,$user,$passw);
            $conect -> setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo "conexión exitosa";
        }
        catch(PDOException $e) {
            $conect = 'Error de conexión';
            echo "ERROR: " . $e->getMessage();
        }
        return $conect;
    }
};


