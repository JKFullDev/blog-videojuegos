# 🎮 Blog de Videojuegos - PHP Puro

Este proyecto es un Sistema de Gestión de Contenidos (CMS) completo desarrollado desde cero utilizando **PHP nativo** bajo una arquitectura modular. Permite la gestión de usuarios, categorías y entradas de blog sobre videojuegos.

## 🚀 Tecnologías Utilizadas

* **Lenguaje:** PHP 8 (Sin frameworks, código nativo).
* **Base de Datos:** MySQL / MariaDB.
* **Frontend:** HTML5, CSS3 (Estilos propios).
* **Servidor:** Apache (XAMPP/WAMP recomendado).

## ✨ Funcionalidades Principales

* **Sistema de Usuarios:**
    * Registro y Login de usuarios (con cifrado de contraseñas `password_hash`).
    * Edición de datos de perfil.
    * Gestión de sesiones segura.
* **Gestión de Contenido (CRUD):**
    * Crear, editar y eliminar entradas de blog.
    * Crear categorías nuevas.
* **Navegación:**
    * Buscador interno de entradas.
    * Filtrado de entradas por categoría.
    * Listado de últimas entradas y paginación.
* **Seguridad:**
    * Protección contra inyección SQL (`mysqli_real_escape_string`).
    * Validación de formularios en servidor.
    * Control de acceso a rutas privadas.

## 📂 Estructura del Proyecto

El código ha sido refactorizado para separar la lógica de la vista:

```text
/proyecto-php
├── acciones/           # Controladores (Lógica de negocio: Login, Guardar, Borrar...)
├── assets/             # Recursos estáticos (CSS, Fuentes, Imágenes)
├── includes/           # Fragmentos de vista reutilizables (Cabecera, Lateral, Conexión)
├── database.sql        # Script de importación de la Base de Datos
└── [vistas]            # Archivos .php de visualización (index, entradas, etc.)