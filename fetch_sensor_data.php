<?php
include 'db_connection.php'; 


$sql = "SELECT sensorReadTime AS timestamp, 
               sensorReadTemp AS temperature, 
               sensorReadHumidity AS humidity, 
               sensorReadLight AS light, 
               sensorReadMotion AS motion
        FROM tbl_sensor_reading"; 

$result = $conn->query($sql);

$sensorData = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $sensorData[] = $row;
    }
}


header('Content-Type: application/json');
echo json_encode($sensorData);

$conn->close();
?>
