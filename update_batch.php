<?php
include 'db_connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $batchID = $_POST['batchID'];
    $newStorageID = $_POST['newStorageID'];
    $newStoredInitialAmount = $_POST['newStoredInitialAmount'];
    $currentTime = date("Y-m-d H:i:s");

    $sql = "UPDATE tbl_harvest_batch 
            SET storageID = ?, storedInitialAmount = ?, storedInitialTime = ? 
            WHERE batchID = ?";
    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("siss", $newStorageID, $newStoredInitialAmount, $currentTime, $batchID);

        if ($stmt->execute()) {
            echo json_encode([
                "success" => true,
                "message" => "Batch details updated successfully.",
                "batchID" => $batchID,
                "newStorageID" => $newStorageID,
                "newStoredInitialAmount" => $newStoredInitialAmount
            ]);
        } else {
            echo json_encode([
                "success" => false,
                "message" => "Error updating record: " . $stmt->error
            ]);
        }

        $stmt->close();
    } else {
        echo json_encode([
            "success" => false,
            "message" => "Error preparing statement: " . $conn->error
        ]);
    }

    $conn->close();
}
?>
