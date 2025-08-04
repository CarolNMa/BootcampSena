<?php
include 'bd.php';
header('Content-Type: application/json');


$check = $conexion->query("SELECT * FROM sala WHERE estado = 'activa' LIMIT 1");

if ($check->num_rows === 0) {
    echo json_encode(["status" => "error", "message" => "No hay una sala activa."]);
    exit;
}

$fechaFin = date('Y-m-d H:i:s');


$query = $conexion->prepare("UPDATE sala SET estado = 'cerrada', fecha_Fin = ? WHERE estado = 'activa'");
$query->bind_param("s", $fechaFin);

if ($query->execute()) {
    echo json_encode(["status" => "cerrada"]);
} else {
    echo json_encode(["status" => "error", "message" => "No se pudo cerrar la sala."]);
}
?>