# 🎮 Blog de Videojuegos - PHP Puro

Este proyecto es un Sistema de Gestión de Contenidos (CMS) completo desarrollado desde cero utilizando **PHP nativo** bajo una arquitectura modular. Permite la gestión de usuarios, categorías y entradas de blog sobre videojuegos.

## 🚀 Tecnologías Utilizadas

* **Lenguaje:** PHP 8 (Sin frameworks, código nativo).
* **Base de Datos:** MySQL / MariaDB.
* **Frontend:** HTML5, CSS3 (Diseño responsivo propio con Flexbox).
* **Servidor:** Apache (XAMPP/WAMP recomendado).
* **Control de Versiones:** Git & GitHub.

## ✨ Funcionalidades Principales

* **Sistema de Usuarios:**
    * Registro y Login seguro (contraseñas cifradas con `password_hash`).
    * Edición de perfil de usuario.
    * Gestión de sesiones y permisos.
* **Gestión de Contenido (CRUD):**
    * Crear, editar y eliminar entradas.
    * Crear nuevas categorías.
* **Navegación:**
    * Buscador de entradas en tiempo real.
    * Filtrado por categorías.
    * Paginación y listado de últimas entradas.
* **Interfaz:**
    * Diseño limpio con menú superior y barra lateral (sidebar).
    * Pie de página "Sticky Footer" (siempre abajo).

## 🧪 Usuarios de Prueba (Demo Data)

El proyecto incluye una base de datos poblada (`blog_master.sql`) con usuarios y contenido de ejemplo para facilitar las pruebas:

| Email | Contraseña |
| :--- | :--- |
| `juan@garcia.com` | `juan` |
| `laura@hernandez.com` | `1234` |
| `pepe@perez.com` | `1234` |

> **Nota:** Puedes usar cualquiera de estos usuarios para iniciar sesión y probar la edición/borrado de sus propias entradas.

## 📂 Estructura del Proyecto

El código ha sido refactorizado separando la lógica de las vistas para un mantenimiento más sencillo:

```text
/proyecto-php
├── acciones/           # Controladores (Login, Registro, Guardar, Borrar...)
├── assets/             # Recursos (CSS, Fuentes, Imágenes)
├── db/                 # Scripts de Base de Datos
│   └── blog_master.sql # Archivo de importación (Estructura + Datos)
├── includes/           # Componentes reutilizables (Cabecera, Sidebar, Pie)
└── [vistas]            # Archivos .php de interfaz (index, entradas, etc.)
```

## 🔧 Instalación Local

1. Clonar el repositorio:
    ```bash
    git clone https://github.com/JKFullDev/blog-videojuegos.git
    ```

2. Base de Datos:

    * Crea una base de datos vacía llamada blog_master en tu gestor (phpMyAdmin, etc.).

    * Importa el archivo db/blog_master.sql incluido en la raíz.

3. Configuración:

    * Verifica includes/conexion.php si tus credenciales de MySQL son diferentes a las estándar (root / sin contraseña).

4. Ejecutar:

    * Abre el navegador en http://localhost/blog-videojuegos (o la ruta donde lo hayas clonado).

## 👤 Autor
Juan Carlos Alonso Hernando

Desarrollador Web Full Stack

https://www.linkedin.com/in/jcah-dev/