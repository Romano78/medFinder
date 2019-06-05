import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css'
import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.js'
import '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css'

const initMapbox = () => {

  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    navigator.geolocation.getCurrentPosition((data) => {
      fetch(`/map/nearby_pharmacy?lat=${55.7558}&lng=${37.6173}`)
        .then(response => response.json())
        .then((pharmacyData) => {
          console.log(pharmacyData)
           // const pharmacy = [pharmacyData.lng, pharmacyData.lat];
          const user = { lng:37.6173, lat: 55.7558 };
          console.log(user)
          console.log(pharmacyData)

          const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
          });



          const directions = new MapboxDirections({
            accessToken: mapElement.dataset.mapboxApiKey,
            unit: 'metric',
            profile: 'mapbox/walking',
            controls: {
              inputs: false,
              instructions: false,
              profileSwitcher: false
            },
            flyTo: false
          });



          directions.setOrigin([37.6173, 55.7558])
          directions.setDestination([pharmacyData[0].lng, pharmacyData[0].lat])
          map.addControl(directions);


          pharmacyData.forEach((pharmacy) => {
            const popup = new mapboxgl.Popup().setHTML(pharmacy.info_window);

            const pharmacyMarker = new mapboxgl.Marker()
              .setLngLat(pharmacy)
              .setPopup(popup)
              .addTo(map);
            setMarkerColor(pharmacyMarker, "#0cb25f")
          });

          const userMarker = new mapboxgl.Marker()
            .setLngLat(user)
            .addTo(map);
          setTimeout(()=> {
            fitMapToMarkers(map, [...pharmacyData, user]);
          }, 500);
        });
    })
  }
};

function setMarkerColor(marker, color) {
    var $elem = jQuery(marker.getElement());
    $elem.find('svg g[fill="' + marker._color + '"]').attr('fill', color);
    marker._color = color;
}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, animate: false });
};

export { initMapbox };
