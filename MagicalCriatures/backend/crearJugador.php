<?php
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

require_once 'bd.php';


$json = file_get_contents('php://input');
if (empty($json)) {
    http_response_code(400);
    echo json_encode(['status' => 'error', 'message' => 'No se recibieron datos']);
    exit;
}

$data = json_decode($json, true);
if (json_last_error() !== JSON_ERROR_NONE) {
    http_response_code(400);
    echo json_encode(['status' => 'error', 'message' => 'JSON inválido']);
    exit;
}


if (!isset($data['jugador1']) || empty($data['jugador1'])) {
    http_response_code(400);
    echo json_encode(['status' => 'error', 'message' => 'Faltan datos de jugadores']);
    exit;
}

try {
    global $conexion;

  
    $stmtSala = $conexion->prepare("INSERT INTO sala (fecha_inicio, estado) VALUES (NOW(), 'activa')");
    $stmtSala->execute();
    $idSala = $conexion->insert_id;
    $stmtSala->close();

 
    $stmtUser = $conexion->prepare("INSERT INTO usuario (nombre, id_sala) VALUES (?, ?)");
    $stmtUser->bind_param("si", $nombre, $idSala);

    foreach ($data as $key => $nombre) {
        if (strpos($key, 'jugador') === 0 && !empty($nombre)) {
            $stmtUser->execute();
        }
    }

    $stmtUser->close();

    echo json_encode([
        'status' => 'success',
        'message' => 'Jugadores registrados correctamente',
        'idSala' => $idSala
    ]);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'status' => 'error',
        'message' => 'Error en el servidor: ' . $e->getMessage()
    ]);
}
?>
