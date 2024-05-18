$(document).ready(function() {
    $.ajax({
        url: '../server/get_sales_monthly.php',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var monthly = data.map(function(item) {
                return item.monthly;
            });

            let formattedAmounts = monthly.map(function(number) {
                return Number(number).toLocaleString('en-PH', {
                    style: 'currency',
                    currency: 'PHP'
                });
            });
        
            // Set the formatted amount text
            $('#monthly_sales').text(formattedAmounts.join(", "));
            
            
        },
        error: function(xhr, status, error) {
            $('#sales-data').html('Error: ' + xhr.status + ' - ' + xhr.statusText);
        }
    });
});
