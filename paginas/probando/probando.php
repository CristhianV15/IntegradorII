<!--Listado de tabla productos 
-->
<?php
    require('../../controlador/conexion.php');
    $conn = conectar();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Listado de productos</h1>
    <?php
        foreach (listarProducto($conn) as $key => $value) {
          
    ?>
        <H1><?=$value[1]?></1>---<?=$value[2]?>
    <?php
        }
    ?>    
    <li>Ir a categorias</li>
</body>
</html>

<!--En este index se hara un crud de prueba con una tabla para aplicarlo a las demas paginas-->