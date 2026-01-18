<?php
include 'db_connection.php'; 


$sql = "SELECT * FROM tbl_farm";
$result = $conn->query($sql);

$farms = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $farms[] = $row;
    }
}


header('Content-Type: application/json');
echo json_encode($farms);

$conn->close();
?>
