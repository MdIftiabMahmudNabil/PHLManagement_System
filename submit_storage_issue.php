<?php
require_once 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $batchID = $_POST['batchID'];
    $issueStartTime = $_POST['issueStartTime'];
    $issueEndTime = $_POST['issueEndTime'];
    $describeIssue = $_POST['describeIssue'];
    $issueStatus = $_POST['issueStatus'];

    $sql = "INSERT INTO tbl_harvest_batch_issue 
            (batchID, stageIssue, issueFromTime, issueToTime, issueProblem, issueStatus)
            VALUES (?, 'Storage', ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        echo json_encode(['success' => false, 'message' => 'SQL preparation failed: ' . $conn->error]);
        exit;
    }

    $stmt->bind_param('sssss', $batchID, $issueStartTime, $issueEndTime, $describeIssue, $issueStatus);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Issue reported successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Error reporting issue: ' . $stmt->error]);
    }

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}
?>
