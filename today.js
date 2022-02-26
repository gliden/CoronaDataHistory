let cardContainer;

let createCityCard = (city) => {
	
	let col = document.createElement('div');
    col.className = 'col-5';
	
    let card = document.createElement('div');
    card.className = 'card text-dark bg-light mb-3';
	card.style = 'max-width: 18rem;';

	let cardHeader = document.createElement('div');
	cardHeader.className = 'card-header';
	cardHeader.innerText = city.bezeichnung;
	
    let cardBody = document.createElement('div');
    cardBody.className = 'card-body';

    let title = document.createElement('h5');
    title.innerText = city.wert;
    title.className = 'card-title';

    let color = document.createElement('div');
    color.innerText = city.datum;
    color.className = 'card-color';


	card.appendChild(cardHeader);
    cardBody.appendChild(title);
    cardBody.appendChild(color);
    card.appendChild(cardBody);
	col.appendChild(card);
    cardContainer.appendChild(col);

}


let initListOfCities = (cities) => {
    if (cardContainer) {
        document.getElementById('card-container').replaceWith(cardContainer);
        return;
    }

    cardContainer = document.getElementById('card-container');
    cities.forEach((city) => {
        createCityCard(city);
    });
};


let loadTodayData = () => {
	var request = new XMLHttpRequest();
	request.addEventListener('load', function(event) {
		if (request.status >= 200 && request.status < 300) {
			var json = JSON.parse(request.responseText);
			initListOfCities(json);
		} else {
			console.warn(request.statusText, request.responseText);
		}
	});
	request.open("GET","get.php?today=1");
	request.setRequestHeader('objectIds', '47,50');
	request.send('');
}

loadTodayData();