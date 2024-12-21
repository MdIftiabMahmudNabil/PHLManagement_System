<?php
require_once 'db_connection.php';

if (isset($_GET['format']) && in_array($_GET['format'], ['pdf', 'doc'])) {
    $format = $_GET['format'];

    $sql = "SELECT 
                hb.batchID,
                (hb.transportLoadAmount - hb.transportUnloadAmount) AS lossAmount,
                hbi.issueProblem AS lossCause
            FROM tbl_harvest_batch AS hb
            LEFT JOIN tbl_harvest_batch_issue AS hbi 
                ON hb.batchID = hbi.batchID AND hbi.stageIssue = 'Transportation'";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $reportContent = "<h1>Transportation Loss Report</h1>";
        $reportContent .= "<table border='1'>";
        $reportContent .= "<tr><th>Batch ID</th><th>Loss Amount</th><th>Cause of Loss</th></tr>";

        while ($row = $result->fetch_assoc()) {
            $reportContent .= "<tr>
                <td>{$row['batchID']}</td>
                <td>{$row['lossAmount']}</td>
                <td>" . ($row['lossCause'] ?: 'No issue reported') . "</td>
            </tr>";
        }
        $reportContent .= "</table>";

        if ($format === 'pdf') {
            require_once 'dompdf/autoload.inc.php';
            $dompdf = new Dompdf\Dompdf();
            $dompdf->loadHtml($reportContent);
            $dompdf->setPaper('A4', 'portrait');
            $dompdf->render();
            $dompdf->stream('Transportation_Loss_Report.pdf');
        } elseif ($format === 'doc') {
            header("Content-type: application/vnd.ms-word");
            header("Content-Disposition: attachment;Filename=Transportation_Loss_Report.doc");
            echo $reportContent;
        }
    } else {
        echo "No data found for the report.";
    }

    $conn->close();
} else {
    echo "Invalid request.";
}
?>
