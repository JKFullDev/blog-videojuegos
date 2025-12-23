<?php require_once 'conexion.php'; ?>
<?php require_once 'includes/helpers.php'; ?>

<!DOCTYPE HTML>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <title>Blog de Videojuegos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/css/style.css?v=2">
</head>

<body>
    <header id="cabecera">
        <div id="logo">
            <a href="index.php">
                Blog de Videojuegos
            </a>
        </div>

        <nav id="menu">
            <div id="menu-movil-btn">
                <span>Categorías</span>
            </div>

            <ul id="menu-lista">
                <li>
                    <a href="index.php">Inicio</a>
                </li>
                <?php
                $categorias = conseguirCategorias($db);
                if (!empty($categorias)):
                    while ($categoria = mysqli_fetch_assoc($categorias)):
                ?>
                        <li>
                            <a href="categoria.php?id=<?= $categoria['id'] ?>"><?= $categoria['nombre']; ?></a>
                        </li>
                <?php
                    endwhile;
                endif;
                ?>
                <li>
            </ul>
        </nav>
        <div class="clearfix"></div>
    </header>

    <div id="contenedor">