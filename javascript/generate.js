$(document).ready(function() {
    // Attach click event handler to the "Generate" button
    $("#generateBtn").click(function() {
        // Retrieve values of time-in, time-out, and select element
        var timeIn = $("#timeIn").val();
        var timeOut = $("#timeOut").val();
        var vehicle = $("#vehicle").val();

        // Display the values (you can do anything with these values)
        console.log("Time-In:", timeIn);
        console.log("Time-Out:", timeOut);
        console.log("Vehicle:", vehicle);
    });

    // Reset button click event handler
    $("#resetBtn").click(function() {
        // Reset the input fields
        $("#timeIn").val("");
        $("#timeOut").val("");
        $("#vehicle").val("");
    });
});