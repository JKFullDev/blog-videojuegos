<?php
// reset.php 

// 1. CONFIGURACIÓN
$token_secreto = "TU_TOKEN_AQUI";

// 2. SEGURIDAD
if (!isset($_GET['token']) || $_GET['token'] != $token_secreto) {
    die("Acceso denegado. Token incorrecto.");
}

// 3. CONEXIÓN
require_once 'includes/conexion.php';

// 4. LEER EL ARCHIVO SQL
$archivo_sql = 'db/blog_master.sql';

if (!file_exists($archivo_sql)) {
    die("Error: No encuentro el archivo SQL en: $archivo_sql");
}

$sql_content = file_get_contents($archivo_sql);

if (!$sql_content) {
    die("Error: El archivo SQL está vacío.");
}

// Desactivar chequeo de claves foráneas
$sql_content = "SET FOREIGN_KEY_CHECKS = 0;\n" . $sql_content . "\nSET FOREIGN_KEY_CHECKS = 1;";

echo "<h3>Iniciando restauración del sistema...</h3>";

// 5. EJECUTAR LA RESTAURACIÓN
if (mysqli_multi_query($db, $sql_content)) {
    do {
        if ($resultado = mysqli_store_result($db)) {
            mysqli_free_result($resultado);
        }
    } while (mysqli_next_result($db));

    echo "<h2 style='color:green'>¡Sistema restaurado con éxito!</h2>";
    echo "<p>La base de datos ha vuelto a su estado original.</p>";
} else {
    echo "<h2 style='color:red'>Error crítico</h2>";
    echo "<p>MySQL Error: " . mysqli_error($db) . "</p>";
}
