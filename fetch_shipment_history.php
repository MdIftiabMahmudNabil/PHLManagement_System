<?php
include 'db_connection.php';

header('Content-Type: application/json');

$sql = "SELECT shipmentID, retailShopID, status, deliveryTime, actions, feedback 
        FROM tbl_shop_shipment 
        WHERE status != 'Pending'";

$result = $conn->query($sql);

$data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data);

$conn->close();
?>
