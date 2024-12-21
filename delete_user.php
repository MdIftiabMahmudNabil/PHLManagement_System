<?php
include 'db_connection.php'; 
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];

    $query = "DELETE FROM tbl_user WHERE id=$id";

    if ($conn->query($query)) {
        echo "User deleted successfully.";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>
