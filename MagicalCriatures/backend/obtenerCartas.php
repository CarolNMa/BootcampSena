<?php
header('Content-Type: application/json');
include 'bd.php';

$sql = "SELECT * FROM carta ORDER BY RAND() LIMIT 8";
$result = $conexion->query($sql);

$cartas = [];

<<<<<<< HEAD
=======


>>>>>>> 6f04e1d232a8cf868aba56d66ff66299d59da070
if ($result && $result->num_rows > 0) {
    while ($fila = $result->fetch_assoc()) {
        $numero = $fila['numero'];
        $ultimaLetra = strtoupper(substr($numero, -1));
        $grupoClase = "";

       
        if (in_array($ultimaLetra, ['A', 'H'])) {
            $grupoClase = 'grupo-1';
        } elseif (in_array($ultimaLetra, ['B', 'G'])) {
            $grupoClase = 'grupo-2';
        } elseif (in_array($ultimaLetra, ['C', 'F'])) {
            $grupoClase = 'grupo-3';
        } elseif (in_array($ultimaLetra, ['D', 'E'])) {
            $grupoClase = 'grupo-4';
        } else {
            $grupoClase = 'grupo-default';
        }

      
        $fila['grupoClase'] = $grupoClase;

        $cartas[] = $fila;
    }

    echo json_encode($cartas);
} else {
    echo json_encode(["error" => "No se encontraron cartas"]);
}
?>
