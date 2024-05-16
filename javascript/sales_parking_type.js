 // Data for the pie chart
 const pieData = {
    series: [44, 55, 13, 23, 4,],
    labels: ['Motorcycle', 'Tricycle', 'Van', 'Sedan', 'Pickup']
  };

  // Options for the pie chart
  const pieOptions = {
    chart: {
      type: 'pie'
    },
    labels: pieData.labels,
    series: pieData.series,
    responsive: [{
      breakpoint: 480,
      options: {
        chart: {
          width: 200
        },
        legend: {
          position: 'bottom'
        }
      }
    }]
  };

  // Initialize the pie chart with options and data
  const pieChart = new ApexCharts(document.querySelector("#pie"), pieOptions);

  // Render the chart
  pieChart.render();