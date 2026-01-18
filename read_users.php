<?php
include 'db_connection.php'; 

$query = "SELECT * FROM tbl_user";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['name']}</td>
                <td>{$row['user_type']}</td>
                <td>{$row['phone']}</td>
                <td>{$row['email']}</td>
                <td>{$row['city']}</td>
                <td>{$row['division']}</td>
                <td>{$row['zip_code']}</td>
                <td>
                    <button class='update-btn' data-id='{$row['id']}'>Update</button>
                    <button class='delete-btn' data-id='{$row['id']}'>Delete</button>
                </td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='8'>No users found.</td></tr>";
}
?>
