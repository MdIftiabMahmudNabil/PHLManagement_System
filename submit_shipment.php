<?php
require_once 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $shipmentID = $_POST['shipmentID'];
    $transportID = $_POST['transportID'];
    $retailShopID = $_POST['retailShopID'];
    $shipmentDate = $_POST['shipmentDate'];
    $deliveryDate = $_POST['deliveryDate'];
    $loadAmount = $_POST['loadAmount'];
    $loadTime = $_POST['loadTime'];
    $unloadAmount = $_POST['unloadAmount'] ?? null;
    $unloadTime = $_POST['unloadTime'] ?? null;

    $sql = "INSERT INTO tbl_shipment 
            (shipmentID, transportID, retailShopID, shipmentDate, deliveryDate, loadAmount, loadTime, unloadAmount, unloadTime, status)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'Pending')";

    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        echo json_encode(['success' => false, 'message' => 'SQL preparation failed: ' . $conn->error]);
        exit;
    }

    $stmt->bind_param('sssssssss', $shipmentID, $transportID, $retailShopID, $shipmentDate, $deliveryDate, $loadAmount, $loadTime, $unloadAmount, $unloadTime);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Shipment initiated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error initiating shipment: ' . $stmt->error]);
    }

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}
?>
