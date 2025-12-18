<?php
// includes/conexion.php

if ($_SERVER['SERVER_NAME'] == 'localhost') {
    // Configuración Local
    $servidor = 'localhost';
    $usuario = 'root';
    $password = '';
    $basededatos = 'blog_master';
} else {
    // Configuración Servidor Real
    // Cargamos el archivo que Git va a ignorar
    require_once 'db_production.php';

    $servidor = DB_SERVER;
    $usuario = DB_USER;
    $password = DB_PASS;
    $basededatos = DB_NAME;
}

$db = mysqli_connect($servidor, $usuario, $password, $basededatos);
mysqli_query($db, "SET NAMES 'utf8'");

if (!isset($_SESSION)) {
    session_start();
}
