<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Cambiar segun la hoja de estilo css-->
    <link rel="stylesheet" type="text/css" href="../../css/estilo.css">
    
    <!--Aqui Falta Script para validar la longitud de la contraseña-->
    <script src="../../js/script.js"></script>
    
    <title>RegistrarUsuario</title>
</head>
  <body class="login-body">
    <!--El formulario funciona gracias a la llamada de "proceso_registrouser.php"-->
      <form class='login-form' enctype="multipart/form-data" action="../../llamadas/proceso_registrouser.php" method="post">
      <div class="flex-row">
        <label for="username"><b>Nombre de usuario: &nbsp;&nbsp;&nbsp;</b></label>
        <!--Lo que se indique en "name", debe ser igual que lo indicado en el request del proceso_registrouser.php-->
        <input id="username" class="lf--input" type="text" placeholder="Ingrese el nombre de usuario" name="nombre" required>
      </div>
      <div class="flex-row">
        <label for="password"><b>Password: &nbsp;&nbsp;&nbsp;</b></label>
        <input id="password" class="lf--input" type="password" placeholder="Ingrese su contraseña" name="contraseña" required>
      </div>
      <div class="flex-row">
        <label for="nombres"><b>Correo &nbsp;&nbsp;&nbsp;</b></label>
        <input id="nombres" class="lf--input" type="text" placeholder="Ingrese su nombre completo" name="correo" required>
      </div>
      <input class="lf--submit" type="submit" value="Registrarse">
    </form>
  </body>
</html>