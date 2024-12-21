<?php
require_once 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $shipmentID = $data['shipmentID'];
    $newStatus = $data['newStatus'];

    $sql = "UPDATE tbl_shipment SET status = ? WHERE shipmentID = ?";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        echo json_encode(['success' => false, 'message' => 'SQL preparation failed: ' . $conn->error]);
        exit;
    }

    $stmt->bind_param('ss', $newStatus, $shipmentID);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Shipment status updated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error updating shipment status: ' . $stmt->error]);
    }

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}
?>
