<?php
require_once 'db_connection.php';

$sql = "SELECT shipmentID, status FROM tbl_shipment";

$result = $conn->query($sql);

if ($result) {
    $shipments = [];
    while ($row = $result->fetch_assoc()) {
        $shipments[] = $row;
    }
    header('Content-Type: application/json');
    echo json_encode($shipments);
} else {
    echo json_encode(['error' => 'Failed to fetch shipment statuses: ' . $conn->error]);
}

$conn->close();
?>
