<?php //Inicio codigo php
 
//Función conexion: cambiar "" en caso de tener contraseña

function conectar() {
    $conn= mysqli_connect ("127.0.0.1", "root", "", "probandojsf");
    return $conn; 
}

//Función de listado de producto
function listarProducto($conn) {
    $sql="select idProducto, categoria.NombreCategoria, Nombre from producto INNER JOIN categoria ON producto.CatProducto = 	categoria.CatProducto";
    $res= mysqli_query($conn, $sql);
    $vec=array();
    while($f= mysqli_fetch_array($res))
        $vec[]=$f;
    return $vec;
}

//Para el logeo hay 3 estados : administrador, usuario y veterinario, la validación se hace en proceso_logeo.php
function validarUsuario($usu,$pas,$conn){
    $sql="select estado from usuarios where nombre='$usu' and contraseña='$pas'";
    $res=mysqli_query($conn, $sql) or die(mysqli_error($conn));
    $fila = mysqli_fetch_row($res);
    return $fila[0];
}
?>