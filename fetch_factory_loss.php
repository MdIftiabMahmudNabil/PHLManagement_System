<?php
require_once 'db_connection.php';

if (isset($_GET['batchID'])) {
    $batchID = $_GET['batchID'];

    $sql = "SELECT 
                batchID, 
                (processedInitialAmount - processedFinalAmount) AS lossAmount, 
                causeLoss 
            FROM tbl_harvest_batch 
            WHERE batchID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('s', $batchID);
    $stmt->execute();
    $result = $stmt->get_result();

    $lossData = [];
    while ($row = $result->fetch_assoc()) {
        $lossData[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($lossData);

    $stmt->close();
    $conn->close();
}
?>
