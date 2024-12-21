<?php
include 'db_connection.php';

header('Content-Type: application/json');

$data = json_decode(file_get_contents('php://input'), true);

$shopShipmentID = $data['shopShipmentID'];
$feedback = isset($data['feedback']) ? $data['feedback'] : null;

$sql = "UPDATE tbl_shop_shipment 
        SET status = 'Delivered', actions = 'Confirmed Receipt', feedback = ? 
        WHERE shopShipmentID = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param('ss', $feedback, $shopShipmentID);

$response = [];
if ($stmt->execute()) {
    $response['success'] = true;
} else {
    $response['success'] = false;
}

echo json_encode($response);

$conn->close();
?>
