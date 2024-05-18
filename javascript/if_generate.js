$(document).ready(function() {
    // jQuery selector for the input field and the button
    var $plateInput = $('#plate_no');
    var $timeIn = $('#timeIn');
    var $timeOut = $('#timeOut');
    var $generateBtn = $('#generateBtn');

    // Function to check if timeOut is greater than or equal to timeIn
    function isTimeOutGreater() {
        var timeIn = new Date($timeIn.val());
        var timeOut = new Date($timeOut.val());
        return timeOut >= timeIn;
    }

    // Function to disable or enable the generate button based on timeIn and timeOut
    function updateGenerateBtnState() {
        var timeInVal = $timeIn.val();
        var timeOutVal = $timeOut.val();

        if (timeInVal === timeOutVal) {
            // If timeIn and timeOut are equal, disable the generate button
            $generateBtn.prop('disabled', true);
        } else {
            // Otherwise, enable the generate button if timeOut is greater than or equal to timeIn
            $generateBtn.prop('disabled', !isTimeOutGreater());
        }
    }

    // Add input event listeners for plate input, timeIn, and timeOut
    $plateInput.on('input', updateGenerateBtnState);
    $timeIn.on('input', updateGenerateBtnState);
    $timeOut.on('input', updateGenerateBtnState);

    // Initially, update the generate button state
    updateGenerateBtnState();
});
