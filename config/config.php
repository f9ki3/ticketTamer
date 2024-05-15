<?php
// Database credentials
$host = 'localhost'; // or your database host
$dbname = 'TicketTamer';
$username = 'root';
$password = '';

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// echo "Connected successfully";

// Close connection
$conn->close();
?>
