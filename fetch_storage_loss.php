<?php
require 'db_connection.php';

$data = json_decode(file_get_contents('php://input'), true);
$batchID = $data['batchID'];

$sql = "SELECT 
            h.batchID,
            (h.storedInitialAmount - h.storedFinalAmount) AS lossAmount,
            i.issueProblem AS causeOfLoss
        FROM 
            tbl_harvest_batch h
        LEFT JOIN 
            tbl_harvest_batch_issue i
        ON 
            h.batchID = i.batchID AND i.stageIssue = 'Storage'
        WHERE 
            h.batchID = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param('s', $batchID);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);

$stmt->close();
$conn->close();
?>
