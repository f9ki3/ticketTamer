var options = {
    chart: {
        type: 'bar'
    },
    series: [{
        name: 'sales',
        data: [30, 40, 45, 50, 49, 60, 70, 91, 125],
        color: '#FF0000' // Red color
    }],
    xaxis: {
        categories: ['Jan 1', 'Jan 2', 'Jan 3', 'Jan 4', 'Jan 5', 'Jan 6', 'Jan 7', 'Jan 8', 'Jan 9']
    }
};

var chart = new ApexCharts(document.querySelector("#chart"), options);

chart.render();


    