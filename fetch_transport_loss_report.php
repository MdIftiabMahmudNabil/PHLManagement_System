<?php
require_once 'db_connection.php';

if (isset($_GET['batchID'])) {
    $batchID = $_GET['batchID'];

    $sql = "SELECT 
                hb.batchID,
                (hb.transportLoadAmount - hb.transportUnloadAmount) AS lossAmount,
                hbi.issueProblem AS lossCause
            FROM tbl_harvest_batch AS hb
            LEFT JOIN tbl_harvest_batch_issue AS hbi 
                ON hb.batchID = hbi.batchID AND hbi.stageIssue = 'Transportation'
            WHERE hb.batchID = ?";

    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        echo json_encode(['error' => 'SQL statement preparation failed: ' . $conn->error]);
        exit;
    }

    $stmt->bind_param('s', $batchID);
    if (!$stmt->execute()) {
        echo json_encode(['error' => 'SQL execution failed: ' . $stmt->error]);
        exit;
    }

    $result = $stmt->get_result();
    if ($result->num_rows === 0) {
        echo json_encode(['error' => 'No data found for the provided Batch ID.']);
        exit;
    }

    $lossData = [];
    while ($row = $result->fetch_assoc()) {
        $lossData[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($lossData);

    $stmt->close();
    $conn->close();
} else {
    echo json_encode(['error' => 'Batch ID not provided.']);
}
?>
