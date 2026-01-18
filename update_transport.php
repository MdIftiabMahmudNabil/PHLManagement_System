<?php
include 'db_connection.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $batchID = $_POST['batchID'];
    $newTransportID = $_POST['newTransportID'];
    $newTransportLoadAmount = $_POST['newTransportLoadAmount'];

    $sql = "UPDATE tbl_harvest_batch 
            SET transportID = ?, transportLoadAmount = ? 
            WHERE batchID = ?";
    $stmt = $conn->prepare($sql);

    if ($stmt) {
        $stmt->bind_param("sis", $newTransportID, $newTransportLoadAmount, $batchID);

        if ($stmt->execute()) {
            echo json_encode([
                "success" => true,
                "message" => "Transport details updated successfully."
            ]);
        } else {
            echo json_encode([
                "success" => false,
                "message" => "Error updating record: " . $stmt->error
            ]);
        }

        $stmt->close();
    } else {
        echo json_encode([
            "success" => false,
            "message" => "Error preparing statement: " . $conn->error
        ]);
    }

    $conn->close();
}
?>
