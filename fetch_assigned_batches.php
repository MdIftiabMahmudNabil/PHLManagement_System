<?php
$conn = new mysqli("localhost", "root", "", "postharvest_sys");
$query = "SELECT batchID, storageID, capacity, storedInitialAmount as storedAmount, storedInitialTime as storedTime, 
         (capacity - currentOccupancy) as remainingCapacity 
         FROM tbl_harvest_batch
         JOIN tbl_storage ON tbl_harvest_batch.storageID = tbl_storage.storageID";
$result = $conn->query($query);
$assignedBatches = [];

while ($row = $result->fetch_assoc()) {
    $assignedBatches[] = $row;
}

echo json_encode($assignedBatches);
$conn->close();
?>
