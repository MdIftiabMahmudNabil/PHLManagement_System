<?php
require_once 'db_connection.php';

$sql = "SELECT batchID, stageIssue, issueFromTime, issueToTime, issueProblem, issueStatus 
        FROM tbl_harvest_batch_issue 
        WHERE stageIssue = 'Processing'";
$result = $conn->query($sql);

$issues = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $issues[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode($issues);

$conn->close();
?>
