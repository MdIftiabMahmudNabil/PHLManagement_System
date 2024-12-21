<?php
include 'db_connection.php'; 

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $name = $_POST['username']; 
    $userType = $_POST['userType']; 
    $phone = $_POST['phone']; 
    $email = $_POST['email']; 
    $city = $_POST['city']; 
    $division = $_POST['division']; 
    $zip = $_POST['zip']; 
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT); 


    $query = "INSERT INTO tbl_user (name, user_type, phone, email, city, division, zip_code, password)
              VALUES ('$name', '$userType', '$phone', '$email', '$city', '$division', '$zip', '$password')";

    if ($conn->query($query)) {
        echo "Signup successful. User added to the database.";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>
