// TODO: Write your JS code in here
// 1. Use a querySelector to get the button and the coordinates.
// 2. Interpolate the input in the URL so that you receive data of that location.
const findLocation = (query, results) => {
  console.log(query);
  const apiKey = "6243ce524d048d01b9ff7e3f29342e9b"
  fetch(`https://api.openweathermap.org/data/2.5/weather?q=${query}&appid=${apiKey}&units=metric`)
  // 3. Convert the data into .json then add a parameter 'data'.
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      // 4. InserAdjacentHTML the weather given from the location.
      // 5. Display the weather in a box.

      console.log(data.weather);
      const weatherBox = `
          <div class="d-flex weather-details" style="display: flex; justify-content: space-around;">
            <img src="https://openweathermap.org/img/w/${data.weather[0].icon}.png" alt="Weather Icon" id="icon">
            <p>${capitalize(data.weather[0].description)}</p>
            <p><strong>${Math.floor(data.main.temp)}°C</strong></p>
          </div>
        `;
      results.insertAdjacentHTML("beforeend", weatherBox);
    });
};

// 6. Create an evenListener to get the input from the user.
const initWeather = () => {
  const input = document.querySelector("#location");
  console.log(input);
  if (input) {
    const results = document.querySelector("#weather");
    console.log(results);
    results.innerHTML = '';
    findLocation(input.innerText, results);
  }
}

const capitalize = (s) => {
  if (typeof s !== 'string') return ''
  return s.charAt(0).toUpperCase() + s.slice(1)
}

export { initWeather };
