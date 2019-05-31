import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css'
// import '@mapbox/mapbox-gl-directions'
const initMapbox = () => {

  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    navigator.geolocation.getCurrentPosition((data) => {
      fetch(`/map/nearby_pharmacy?lat=${55.7558}&lng=${37.6173}`)
        .then(response => response.json())
        .then((pharmacyData) => {

           // const pharmacy = [pharmacyData.lng, pharmacyData.lat];
          const user = { lng:37.6173, lat: 55.7558 };
          console.log(user)
          console.log(pharmacyData)

          const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
          });


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

          fitMapToMarkers(map, [...pharmacyData, user]);
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
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, animate: false });
};

export { initMapbox };
