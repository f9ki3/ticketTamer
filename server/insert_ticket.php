<?php
// Include database configuration
include '../config/config.php';

// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve POST data
    $transaction_code = 1212;
    $ticket_date = date("Y-m-d H:i:s"); // Use the current date and time
    $ticket_plate_no = $_POST['plate_no'];
    $ticket_date_start = $_POST['time_in'];
    $ticket_date_end = $_POST['time_out'];
    $ticket_no_hours = $_POST['hours'];
    $ticket_rate = $_POST['rate'];
    $ticket_total_amount = $_POST['total_bill'];
    $ticket_qr_code = $_POST['vehicle_id']; // Assuming vehicle_id is used for QR code

    // Prepare and bind the SQL statement
    $stmt = $conn->prepare("INSERT INTO `transaction` (`transaction_code`, `ticket_date`, `ticket_plate_no`, `ticket_date_start`, `ticket_date_end`, `ticket_no_hours`, `ticket_rate`, `ticket_total_amount`, `ticket_qr_code`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("issssssss", $transaction_code, $ticket_date, $ticket_plate_no, $ticket_date_start, $ticket_date_end, $ticket_no_hours, $ticket_rate, $ticket_total_amount, $ticket_qr_code);

    // Execute the statement
    if ($stmt->execute()) {
        // If insertion is successful, return success message
        echo "Transaction inserted successfully.";
    } else {
        // If insertion fails, return error message
        echo "Error: " . $stmt->error;
    }

    // Close the statement
    $stmt->close();
} else {
    // If request method is not POST, return error message
    echo "Error: Invalid request method.";
}

// Close the database connection
$conn->close();
?>
