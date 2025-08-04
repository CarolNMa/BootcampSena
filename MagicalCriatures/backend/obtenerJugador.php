<?php
header('Content-Type: application/json');

include 'bd.php';

$idSala = $_GET['idSala'] ?? null;

if (!$idSala) {
    http_response_code(400);
    echo json_encode([
        "status" => "error",
        "message" => "ID de sala no proporcionado"
    ]);
    exit;
}

// Preparar y ejecutar consulta
$stmt = $conexion->prepare("SELECT nombre FROM usuario WHERE id_sala = ?");
$stmt->bind_param("i", $idSala);
$stmt->execute();
$result = $stmt->get_result();

// Construir respuesta
$jugadores = [];
$numero = 1;
while ($row = $result->fetch_assoc()) {
    $jugadores[] = [
        'numero' => $numero++,
        'nombre' => $row['nombre'],
    ];
}

// Enviar respuesta
echo json_encode([
    "status" => "success",
    "jugadores" => $jugadores
]);

$stmt->close();
$conexion->close();
?>