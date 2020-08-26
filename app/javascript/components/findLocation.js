const findLocation1 = () => {
  var places = require('places.js');
  var startPlacesAutocomplete = places({
    appId: 'plAQH1UXI74P',
    apiKey: '461c257d9a90ee0537c60971a7fdb315',
    container: document.querySelector('#event_previous_location')
  });
  startPlacesAutocomplete.on('change', (e) => {
    // localStorage (a js method)is to save the local data which you can use it in other files.
    // localStorage.something => you can assign any names here and then assign to the value you want to assign to
    localStorage.start_lat = e.suggestion.latlng.lat;
    localStorage.start_lng = e.suggestion.latlng.lng;
  })
}

const findLocation2 = () => {
  var places = require('places.js');
  var endPlacesAutocomplete = places({
    appId: 'plAQH1UXI74P',
    apiKey: '461c257d9a90ee0537c60971a7fdb315',
    container: document.querySelector('#event_event_location')
  });
  endPlacesAutocomplete.on('change', e => {
    localStorage.end_lat = e.suggestion.latlng.lat;
    localStorage.end_lng = e.suggestion.latlng.lng;
  })
}

export { findLocation1, findLocation2 }
