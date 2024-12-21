<?php
require_once 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $batchID = $_POST['batchID'];
    $stageIssue = $_POST['stageIssue'];
    $issueFromTime = $_POST['issueFromTime'];
    $issueToTime = $_POST['issueToTime'];
    $issueProblem = $_POST['issueProblem'];
    $issueStatus = $_POST['issueStatus'];

    $sql = "INSERT INTO tbl_harvest_batch_issue (batchID, stageIssue, issueFromTime, issueToTime, issueProblem, issueStatus) 
            VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param('ssssss', $batchID, $stageIssue, $issueFromTime, $issueToTime, $issueProblem, $issueStatus);

    if ($stmt->execute()) {
        echo "Issue reported successfully.";
    } else {
        echo "Error reporting issue: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
