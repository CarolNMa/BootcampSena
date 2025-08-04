<?php
$conexion = new mysqli("localhost", "root", "", "juego_Carta");

if ($conexion->connect_error) {
    header('Content-Type: application/json');
    die(json_encode([
        "status" => "error",
        "message" => "Conexión fallida: " . $conexion->connect_error
    ]));
}
?>