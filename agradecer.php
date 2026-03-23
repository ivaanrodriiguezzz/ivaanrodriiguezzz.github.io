<?php
    //Conectamos con la datos de la base de datos
    require 'configdb.php';  

    //Al llamar a esta funcion conectamos con la base de datos
    function conectar(){
        $conexion = new mysqli(SERVIDOR,USUARIO,PASSWORD,BBDD);
        $conexion->set_charset("utf8");
        return $conexion;
    }

    function mostrarAlumnos(){
        $conexion=conectar();

        //Creamos una variable con la consulta
        $sql="SELECT NIA, nombre FROM Alumnos";

        //Lo que este dentro del parentesis se realizara como consulta
        $resultado=$conexion->query($sql);

        //Mientras fila sea true sigue ejecutando
        while($fila=$resultado->fetch_array()){
            //<option value="01">Juan</option>
            echo '<option value="'.$fila["NIA"].'">'.$fila["nombre"].'</option>';
        }

        //Cerramos conexion con la base de datos
        $conexion->close();
    }

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Iván Rodríguez Gómez-Landero">
        <link rel="stylesheet" href="estilos.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Encode+Sans+SC:wght@100..900&display=swap" rel="stylesheet">
        <title>Enviar Un Agradecimiento</title>
    </head>
    <body>
        
        <!-- Imagen -->
        <header>
            <img src="foto.png" alt="Jesuitas.png">
        </header>

        <!-- Titulo -->
        <h1><span class="mayuscula">E</span>NVIAR UN <span class="mayuscula">A</span>GRADECIMIENTO</h1>
        
        <!-- Linea -->
        <hr id="linea2">

        <!-- Menu -->
        <nav class="menu">
            <a href="EnviarAgradecimiento.html" class="boton_transparente activo">Agradecer</a>
            <a href="RecibirAgradecimiento.html" class="boton_transparente">Recibir</a>
            <a href="logout.php" class="boton_transparente">Cerrar sesión</a>
        </nav>

        <!-- Formulario -->
        <form class="formulario" method="POST" action="iniciodesesion.php">
            
            <!-- Destinatario -->
            <label for="usuario">Para: </label>
            <select name="usuario" id="usuario" required>
                <?php
                   mostrarAlumnos();
                ?>
            </select><br><br>

            <!-- Mensaje -->
            <label for="Mensaje">Mensaje: </label><br>
            <textarea id="Mensaje" name="Mensaje" placeholder="Escribe aquí tu mensaje de agradecimiento..." required></textarea><br>

            <!-- Botón de envío -->
            <input type="submit" value="Enviar" id="Enviar">

        </form>
    </body>
</html>