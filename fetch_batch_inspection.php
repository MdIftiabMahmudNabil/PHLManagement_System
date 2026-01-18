<?php
include 'db_connection.php'; 


$sql = "SELECT batchID, inspectionRemarks FROM tbl_batch_inspection";
$result = $conn->query($sql);

$remarks = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $remarks[] = $row;
    }
}


header('Content-Type: application/json');
echo json_encode($remarks);

$conn->close();
?>
