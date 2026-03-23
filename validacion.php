<?php
    require 'configdb.php';
    session_start();

    $usuario = $_POST["usuario"];
    $password = $_POST["password"];

    $conexion = new mysqli(SERVIDOR, USUARIO, PASSWORD, BBDD);
    $conexion->set_charset("utf8");

    $sql="SELECT NIA FROM Alumnos WHERE usuario='".$usuario."' AND password='".$password."';";

    $resultado=$conexion->query($sql);

    if($resultado->num_rows > 0){

        $fila = $resultado->fetch_array();
        
        $_SESSION["NIA"] = $fila["NIA"];

        header("Location: agradecer.php");
        exit();
    }

    $conexion->close();

?>