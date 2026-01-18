<?php
include 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $batchID = $_POST['batchID'];

    
    $sql = "SELECT * FROM tbl_harvest_batch WHERE batchID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $batchID);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $data = $result->fetch_assoc();


        $totalLoss = $data['harvestedAmount'] - $data['processedFinalAmount'];


        $harvestLoss = $data['harvestedAmount'] - $data['transportLoadAmount'];
        $transportLoss = $data['transportLoadAmount'] - $data['transportUnloadAmount'];
        $handlingLoss = $data['transportUnloadAmount'] - $data['storedInitialAmount'];
        $storageLoss = $data['storedInitialAmount'] - $data['storedFinalAmount'];
        $processingLoss = $data['processedInitialAmount'] - $data['processedFinalAmount'];

        $losses = [
            "Harvest Loss" => $harvestLoss,
            "Transport Loss" => $transportLoss,
            "Handling Loss" => $handlingLoss,
            "Storage Loss" => $storageLoss,
            "Processing Loss" => $processingLoss
        ];
        arsort($losses); 
        $stageWithMostLoss = key($losses);


        $report = [
            "batchID" => $data['batchID'],
            "totalLoss" => $totalLoss,
            "stageWithMostLoss" => $stageWithMostLoss,
            "actionsTaken" => "Actions recorded in logs." 
        ];
        echo json_encode($report);
    } else {
        echo json_encode(["error" => "Batch ID not found."]);
    }

    $stmt->close();
    $conn->close();
}
?>
