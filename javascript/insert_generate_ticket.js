$(document).ready(function() {
    $("#generateBtn").click(function() {
        var plate_no = $("#plate_no").val();
        var timeIn = $("#timeIn").val();
        var timeOut = $("#timeOut").val();
        var rate_id = $("#vehicle").val();
        var rate_id_array = rate_id.split(',');
        var rate = parseFloat(rate_id_array[0]);
        var vehicle_id = rate_id_array[1];

        // Convert time strings to Date objects
        var timeInObj = new Date(timeIn);
        var timeOutObj = new Date(timeOut);

        // Calculate the time difference in milliseconds
        var timeDiff = timeOutObj - timeInObj;

        // Convert milliseconds to hours
        var hours = timeDiff / (1000 * 60 * 60);

        var total_bill = rate * hours.toFixed(2);
        // Display the total hours
        console.log("Plate No:", plate_no);
        console.log("Vehicle Type Id:", vehicle_id);
        console.log("In:", timeIn);
        console.log("Out:", timeOut);
        console.log("Hours", hours); 
        console.log("Rate", rate); 
        console.log("Total:", total_bill); 

        // AJAX request to insert_ticket.php
        $.ajax({
            type: "POST",
            url: "../server/insert_ticket.php",
            data: {
                plate_no: plate_no,
                vehicle_id: vehicle_id,
                time_in: timeIn,
                time_out: timeOut,
                hours: hours,
                rate: rate,
                total_bill: total_bill
            },
            success: function(response) {
                // Handle success response here
                console.log(response);

                alertify.success('Success Generated Ticket');

                $("#plate_no").val("");
                $("#total_amount").text("PHP 0.00");
                $("#details").text("Number of Hours: 0 Rate: 0.00");

                // Populate the ticket details from response
                var ticketHtml = `
                    <div class="shadow border mt-4 rounded rounded-4 p-4 pt-5" style="height: auto">
                        <h3 class="ms-3"><i class="bi me-2 bi-ticket-perforated-fill"></i> PARKING RECEIPT</h3>
                        <hr>
                        <div>
                            <div class="d-flex justify-content-between">
                                <div>
                                    <p class="ms-3 m-0 fw-bolder">Bulacan State University</p>
                                    <p class="ms-3 m-0">Malolos, Bulacan</p>
                                    <p class="ms-3 m-0">bsu@gmail.com</p>
                                    <p class="ms-3 m-0">+63 (93) 696 6612</p>
                                </div>
                                <div>
                                    <p class="me-3 m-0 fw-bolder">Ticket No: ${response.transaction_code}</p>
                                    <p class="me-3 m-0">Date: ${response.ticket_date}</p>
                                    <p class="me-3 m-0">Plate: ${response.ticket_plate_no}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="d-flex flex-row">
                                <div class="w-50">
                                    <p class="ms-3 m-0 fw-bolder">Transaction Details</p>
                                    <p class="ms-3 m-0">From: ${response.ticket_date_start}</p>
                                    <p class="ms-3 m-0">To: ${response.ticket_date_end}</p>
                                    <p class="ms-3 m-0">Type: ${response.parking_name}</p>
                                    <p class="ms-3 m-0">Number of Hours: ${response.ticket_no_hours}</p>
                                    <p class="ms-3 m-0">Hours Rate: ${response.ticket_rate}</p>
                                    <p class="ms-3 m-0 mb-5">Total: PHP ${response.ticket_total_amount}</p>
                                </div>
                                <div class="w-50 ps-5">
                                    <img style="width: 120px" class="ms-2 mt-3" src="../uploads/qrcode.png" alt="">
                                </div>
                            </div>
                        </div>
                        
                    </div>`;
                $("#ticket").html(ticketHtml);

                $('#print').show();
                $('#generateBtn').prop('disabled', true);

            },
            error: function(xhr, status, error) {
                // Handle error here
                console.error(xhr.responseText);
            }
        });
    });
});

