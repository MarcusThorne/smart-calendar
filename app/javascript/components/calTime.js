const calTime = () => {

  const calTimeButton = document.getElementById("cal_time")
    if (calTimeButton) {
      calTimeButton.addEventListener("click", function(){
        let travelType = document.getElementById("event_travel_type").value;
        console.log({travelType})
        let start = [ parseFloat(localStorage.start_lat), parseFloat(localStorage.start_lng) ]
        let end = [ parseFloat(localStorage.end_lat), parseFloat(localStorage.end_lng) ]
        let apiKey = "2V60GMQ8Tw0MWm8u4gLYCjHN7qlq-q0keA5ETheYwiU"
        let newUrl = `https://router.hereapi.com/v8/routes?transportMode=${travelType}&origin=${start[0]},${start[1]}&destination=${end[0]},${end[1]}&return=summary&apiKey=${apiKey}`
    
        console.log({newUrl})
    
        fetch(newUrl)
          .then(response => response.json())
          .then(data => {
            console.log(msToTime(data.routes[0].sections[0].summary.duration))
            console.log(data)
            document.getElementById("time_difference").value = data.routes[0].sections[0].summary.duration * 1000;
            document.getElementById("time_difference_display").innerText = msToTime(data.routes[0].sections[0].summary.duration);
          });
    });
  }  
}

function msToTime(duration) {
  var
    seconds = Math.floor((duration) % 60),
    minutes = Math.floor((duration / 60) % 60),
    hours = Math.floor((duration / (60 * 60)) % 24);

  hours = (hours < 10) ? "0" + hours : hours;
  minutes = (minutes < 10) ? "0" + minutes : minutes;
  seconds = (seconds < 10) ? "0" + seconds : seconds;
  return hours + " hr : " + minutes + " mins";
}


export { calTime }
