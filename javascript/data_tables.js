$(document).ready(function () {
    // Fetch data using AJAX
    $.ajax({
        url: '../server/transaction_data.php',
        dataType: 'json',
        success: function (data) {
            // Populate DataTable with fetched data
            $('#transactionTable').DataTable({
                data: data,
                columns: [
                    { data: 'id' },
                    { data: 'transaction_code' },
                    { data: 'ticket_date' },
                    { data: 'ticket_plate_no' },
                    { data: 'ticket_date_start' },
                    { data: 'ticket_date_end' },
                    { data: 'ticket_no_hours' },
                    { data: 'ticket_rate' },
                    { data: 'ticket_total_amount' },
                    { data: 'ticket_qr_code' }
                ]
            });
        }
    });
});