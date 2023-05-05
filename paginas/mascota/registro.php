<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <!--Formulario para registro de los datos de una mascota, falta implementar combo con tabla de raza y especie-->
    <body class="login-body">
      <form class='login-form' enctype="multipart/form-data" action="../../llamadas/proceso_registromascota.php" method="post">
      <br><br>
      <div class="flex-row">
        <label for="username"><b>"Nombre de usuario sin variable" &nbsp;&nbsp;&nbsp;</b></label>
      </div>
      <div class="flex-row">
        <label for="password"><b>Nombre de la mascota</b></label>
        <input id="password" class="lf--input" type="text" placeholder="Ingrese nombre de la mascota" name="nombre" required>
      </div>
      <div class="flex-row">
        <label for="foto"><b>Foto: &nbsp;&nbsp;&nbsp;</b></label>
        <input id="foto" class="lf--input" type="file" name="foto">
      </div>
      <input class="lf--submit" type="submit" value="Registrar mascota">
    </form>
  </body>
</html>