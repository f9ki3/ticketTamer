$(document).ready(function() {
    $.ajax({
        url: '../server/get_today_sales.php',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var amount = data.map(function(item) {
                return item.amount;
            });

            let formattedAmounts = amount.map(function(number) {
                return Number(number).toLocaleString('en-PH', {
                    style: 'currency',
                    currency: 'PHP'
                });
            });
        
            // Set the formatted amount text
            $('#today_sales').text(formattedAmounts.join(", "));
            
            
        },
        error: function(xhr, status, error) {
            $('#sales-data').html('Error: ' + xhr.status + ' - ' + xhr.statusText);
        }
    });
});
