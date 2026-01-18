<?php
include 'db_connection.php'; 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $user_type = $_POST['user_type']; 
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $city = $_POST['city'];
    $division = $_POST['division'];
    $zip_code = $_POST['zip-code'];
    $password = !empty($_POST['password']) ? password_hash($_POST['password'], PASSWORD_BCRYPT) : null;

    $query = "UPDATE tbl_user 
              SET name='$name', user_type='$user_type', phone='$phone', email='$email', city='$city', division='$division', zip_code='$zip_code'";

    if ($password) {
        $query .= ", password='$password'";
    }

    $query .= " WHERE id=$id";

    if ($conn->query($query)) {
        echo "User updated successfully.";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>
