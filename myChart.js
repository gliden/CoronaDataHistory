(function () {
	var ctx = document.getElementById('coronaChart').getContext('2d');
	var myLineChart = new Chart(ctx, {
		type: 'line',
		data: null
	});



	var updateRequest = new XMLHttpRequest();
	updateRequest.addEventListener('load', function(event) {
		updateGraph(myLineChart);            
	});

	updateRequest.open("GET", "update.php");
	updateRequest.send('');
	
	function updateGraph(chart) {
		var request = new XMLHttpRequest();
		request.addEventListener('load', function(event) {
			if (request.status >= 200 && request.status < 300) {
				var json = JSON.parse(request.responseText);
				var labels = json[0].data.map(function(e) {
					return e.x;
					}); 
				
				var data = {
					labels: labels,
					datasets: json
				}
				chart.data = data;
				chart.update();
			} else {
				console.warn(request.statusText, request.responseText);
			}
		});
		request.open("GET","get.php?days=30");
		request.setRequestHeader('objectIds', '47,50');
		request.send('');
	}

	// updateGraph(myLineChart);
})()