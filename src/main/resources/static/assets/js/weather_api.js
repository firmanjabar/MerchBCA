navigator.geolocation.getCurrentPosition(function(position) {
    let lat = position.coords.latitude;
    let long = position.coords.longitude;

    const API_KEY = "aff45a39dfdfb8727b35e494229afee0";

    fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${long}&appid=${API_KEY}`)
        .then(response => response.json())
        .then(data => {
            console.log(data);
            const weather = document.getElementById("weather");
            weather.innerHTML= `
                <span style="display:flex;flex-direction:column">
                    <span>${data.name}, ${data.sys.country}. <img src="http://openweathermap.org/img/wn/${data.weather[0].icon}.png" alt="Weather icon">
                    </span>
                    <span class="badge bg-secondary">${data.weather[0].main} - ${parseFloat(data.main.temp - 273.15).toFixed(2)}°C</span>
                </span>
            `;
        });
 });