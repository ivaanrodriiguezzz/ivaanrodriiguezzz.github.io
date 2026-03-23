<?php
    require 'configdb.php';
    session_start();

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
        <title>Recibir Agradecimientos</title>
    </head>
    <body>

        <!-- Imagen -->
        <header>
            <img src="foto.png" alt="Jesuitas.png">
        </header>

        <!-- Titulo -->
        <h1><span class="mayuscula">A</span>GRADECE EN <span class="mayuscula">C</span>OMPAÑIA</h1>

        <!-- Linea -->
        <hr id="linea2">

        <!-- Menu -->
        <nav class="menu">
            <a href="EnviarAgradecimiento.html" class="boton_transparente">Agradecer</a>
            <a href="Recibir.html" class="boton_transparente activo">Recibir</a>
            <a href="logout.php" class="boton_transparente">Cerrar sesión</a>
        </nav>

        <!-- Titulo de Contenedor -->
        <h2 class="titulo">Para Pablo</h2>

        <!-- Contenedor -->
        <div class="contenedor">

            <!-- Tarjeta de la izquierda -->
            <div class="jesuita">

                <!-- Imagen de Jesuita-->
                <img src="jesuita.jpg" alt="Jesuita">
                <h3>Jesuita:</h3>
                <p>Acompaño con la escucha,<br>sirviendo con el corazón</p>
            </div>

            <!-- Mensaje -->
            <div class="mensaje">
                <p>
                    <strong>Gracias Pablo</strong> por tu generosidad,
                    por estar siempre dispuesto a escuchar y
                    por brindarme tu apoyo incondicional.
                </p>
                <p class="final">¡Eres una gran compañía!</p>
            </div>
        </div>
    </body>
</html>