<?php
include 'bd.php';
header('Content-Type: application/json');


$check = $conexion->query("SELECT * FROM sala WHERE estado = 'activa'");
if ($check->num_rows > 0) {
    echo json_encode(["status" => "ocupada"]);
    exit;
}

$fechaInicio = date('Y-m-d H:i:s');
$query = $conexion->prepare("INSERT INTO sala (fecha_Inicio, estado) VALUES (?, 'activa')");
$query->bind_param("s", $fechaInicio);
$query->execute();

$sala_id = $conexion->insert_id;

echo json_encode([
    "status" => "creada",
    "sala_id" => $sala_id
]);
?>