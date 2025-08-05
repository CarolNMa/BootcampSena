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

<<<<<<< HEAD
// Preparar y ejecutar consulta
=======

>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
$stmt = $conexion->prepare("SELECT nombre FROM usuario WHERE id_sala = ?");
$stmt->bind_param("i", $idSala);
$stmt->execute();
$result = $stmt->get_result();

<<<<<<< HEAD
// Construir respuesta
=======

>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
$jugadores = [];
$numero = 1;
while ($row = $result->fetch_assoc()) {
    $jugadores[] = [
        'numero' => $numero++,
        'nombre' => $row['nombre'],
    ];
}

<<<<<<< HEAD
// Enviar respuesta
=======

>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
echo json_encode([
    "status" => "success",
    "jugadores" => $jugadores
]);

$stmt->close();
$conexion->close();
?>