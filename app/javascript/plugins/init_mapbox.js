import mapboxgl from "mapbox-gl";
import 'mapbox-gl/dist/mapbox-gl.css'

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    navigator.geolocation.getCurrentPosition((data) => {
      fetch(`/map/nearby_pharmacy?lat=${data.coords.latitude}&lng=${data.coords.longitude}`)
        .then(response => response.json())
        .then((pharmacyData) => {
          const pharmacy = [pharmacyData.lng, pharmacyData.lat];
          const user = [data.coords.longitude, data.coords.latitude];

          const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10',
            bounds: [pharmacy, user],
            fitBoundsOptions: { padding: 70, maxZoom: 17 }
          });

          new mapboxgl.Marker()
            .setLngLat(pharmacy)
            .addTo(map);

          new mapboxgl.Marker()
            .setLngLat(user)
            .addTo(map);
        });
    })
  }
};

export { initMapbox };
