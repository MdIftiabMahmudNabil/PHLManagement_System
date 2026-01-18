<?php
include 'db_connection.php'; 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $batchID = $_POST['batchID'];
    $remarks = $_POST['remarks'];

    $sql = "INSERT INTO tbl_batch_inspection (batchID, inspectionRemarks) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $batchID, $remarks);

    if ($stmt->execute()) {
        echo "Inspection remark added successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
