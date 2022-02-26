function updateGraph(chart, days) {
if (days == -1) {
	dayUrl = '';
} else {
	dayUrl = '?days='+days;
}

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
request.open("GET","get.php"+dayUrl);
request.setRequestHeader('objectIds', '47,50');
request.send('');
}

(function () {
	var ctx = document.getElementById('coronaChart').getContext('2d');
	myLineChart = new Chart(ctx, {
		type: 'line',
		data: null
	});

	var updateRequest = new XMLHttpRequest();
	updateRequest.addEventListener('load', function(event) {
		url = new URL(window.location.href);
		var days = 30;
		if (url.searchParams.get('days')) {
			days = url.searchParams.get('days');
		}
		updateGraph(myLineChart, days);
	});

	updateRequest.open("GET", "update.php");
	updateRequest.send('');
	
	

	// updateGraph(myLineChart);
})()