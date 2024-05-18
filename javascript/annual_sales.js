$(document).ready(function() {
    $.ajax({
        url: '../server/get_sales_annual.php',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var yearly = data.map(function(item) {
                return item.yearly;
            });

            let formattedAmounts = yearly.map(function(number) {
                return Number(number).toLocaleString('en-PH', {
                    style: 'currency',
                    currency: 'PHP'
                });
            });
        
            // Set the formatted amount text
            $('#yearlyfyke').text(formattedAmounts.join(", "));
            
            
        },
        error: function(xhr, status, error) {
            $('#yearlyfyke').html('Error: ' + xhr.status + ' - ' + xhr.statusText);
        }
    });
});
