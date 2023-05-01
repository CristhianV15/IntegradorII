<?php
    require '../controlador/conexion.php';
    $con =conectar();

    $usu =$_REQUEST['usuario'];
    $pas =$_REQUEST['contraseña'];
    $status = validarUsuario($usu,$pas,$con);
    if ($status =='administrador') {
        # Se redirige a pagina admin
        session_start();
        $_SESSION['usuario'] = $usu;
        //setcookie("cookie", "$usu", time() + 60 * 2, "/" ,"localhost");
        header("location:../paginas/probando/administrador.php");
    }
    else if ($status =='user') {
        # Se redirige a pagina del cliente - usuario
        session_start();
        $_SESSION['usuario'] = $usu;
        //setcookie("cookie", "$usu", time() + 60 * 2, "/" ,"localhost");
        header("location:../paginas/probando/usuario.php");
        }
    else if($status =='veterinario'){
        # Se redirige a pagina de veterinario
        session_start();
        //setcookie("cookie", "$usu", time() + 60 * 2, "/" ,"localhost");
        header("location:../paginas/probando/veterinario.php");
    }   
    else{
        echo('<script>alert("Usuario o contraseña incorrecta"); window.history.back()</script>');
    }        
?>