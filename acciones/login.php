<?php
// Iniciar sesión y la conexion a la bdd
require_once '../includes/conexion.php';

// Recoger los datos del formulario
if(isset($_POST)){
    // Borrar error antiguo
    if(isset($_SESSION['error_login'])){
        unset($_SESSION['error_login']);
    }
    
    // Recoger datos formulario
    $email = trim($_POST['email']);
    $password = $_POST['password'];
    
    // Consulta para comprobar credenciales de usuario
    $sql = "SELECT * FROM usuarios WHERE email = '$email'";
    $login = mysqli_query($db, $sql);
    
    if($login && mysqli_num_rows($login)==1){
        $usuario = mysqli_fetch_assoc($login);
        
        // Comprobar la contraseña / cifrar
        $verificado = password_verify($password, $usuario['password']);
        
        if($verificado){
            // Utilizar una sesión para el usuario logueado
            $_SESSION['usuario'] = $usuario;
            
        } else {
            // Si algo falla -> sesion con el fallo
            $_SESSION['error_login'] = "Login incorrecto";
        }
    } else {
        //mensaje de error
        $_SESSION['error_login'] = "Login incorrecto";
        
    }
    
 
}



// Redirigir al index.php
header('Location:../index.php');