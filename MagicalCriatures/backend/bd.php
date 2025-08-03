<?php
$conexion = new mysqli("localhost", "root", " ", "juego_Carta");

if($conexion -> connect_error){
    die("conexion fallida: " . $conexion->connect_error);
}else{
    echo "conexion exitosa";
}

?>