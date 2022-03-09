navigator.geolocation.getCurrentPosition(function(position) {
    let lat = position.coords.latitude;
    let long = position.coords.longitude;

    const API_KEY = "aff45a39dfdfb8727b35e494229afee0";

    fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${long}&appid=${API_KEY}`)
        .then(response => response.json())
        .then(data => {
//            console.log(data);
            const weather = document.getElementById("weather");
            weather.innerHTML= `
                <span class="d-flex ">
                    <img src="http://openweathermap.org/img/wn/${data.weather[0].icon}.png" alt="Weather icon">
                    <div class="d-flex flex-column">
                        <span style="font-size:medium; color:#62759d;">${data.name}, ${data.sys.country}.</span>
                        <span class="badge bg-secondary" style="font-size:x-small;">${data.weather[0].main} - ${parseFloat(data.main.temp - 273.15).toFixed(2)}°C</span>
                    </div>
                </span>
            `;
        });
 });