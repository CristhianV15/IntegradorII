<!--Perfil del veterinario (deriva o esta incluido de su pagina principal)-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina de veterinario</title>
</head>
<body>

<!--Codigo php para hacer la conexión a la bd y mostrar los datos del usuario
Falta implementarlo y solo es necesario ponerlo en la pagina principal y los demas lo heredan con el include-->
<?php
    require('../../controlador/conexion.php');
    $conn = conectar();
  //  $id = $_REQUEST['id'];
?>

<!--Codigo para obtener la sesion del usuario ingresado-->
<?php		
    session_start();
    if(!isset($_SESSION['usuario'])) { //Se busca si hay un envio con el nombre 'usuario'
        header("location:../login/login.php"); //Localizacion del envio
    }
?>

<h1> Veterinario : <?=$_SESSION['usuario']?></h1> <!--Se abre codigo php para invocar a la sesion del 'usuario'-->

</body>
</html>