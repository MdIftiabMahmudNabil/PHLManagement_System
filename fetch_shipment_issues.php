<?php
require_once 'db_connection.php';

$sql = "SELECT 
            batchID, 
            issueFromTime, 
            issueToTime, 
            issueProblem, 
            issueStatus 
        FROM tbl_harvest_batch_issue 
        WHERE stageIssue = 'Shipment'";

$result = $conn->query($sql);

if ($result) {
    $issues = [];
    while ($row = $result->fetch_assoc()) {
        $issues[] = $row;
    }
    header('Content-Type: application/json');
    echo json_encode($issues);
} else {
    echo json_encode(['error' => 'Failed to fetch issues: ' . $conn->error]);
}

$conn->close();
?>
