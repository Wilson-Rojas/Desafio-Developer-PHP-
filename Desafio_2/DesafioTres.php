<?php

header("Content-Type: application/json");
require_once 'Database.php';

if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    http_response_code(405);
    echo json_encode(["error" => "Mwtodo no permitido"]);
    exit;
}

if (!isset($_GET['id'])) {
    http_response_code(400);
    echo json_encode(["error" => "Falta el parametro 'id'"]);
    exit;
}

$id_lote = $_GET['id'];

try {
    Database::setDB();
    $cnx = Database::getConnection();

    $stmt = $cnx->prepare("SELECT * FROM debts WHERE id = :id");
    $stmt->bindValue(':id', $id_lote, SQLITE3_TEXT);
    $result = $stmt->execute();

    $lotes = [];

    while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
        // Convertir campos a tipos correctos
        $row['id'] = (int)$row['id'];
        $row['lote'] = (int)$row['lote'];
        $row['precio'] = (int)$row['precio'];
        $row['clientID'] = is_numeric($row['clientID']) ? (int)$row['clientID'] : $row['clientID'];
        $row['vencimiento'] = $row['vencimiento'] ?? null;

        $lotes[] = $row;
    }
    echo json_encode($lotes);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(["error" => "Error interno: " . $e->getMessage()]);
}
