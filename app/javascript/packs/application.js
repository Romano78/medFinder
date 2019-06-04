import "bootstrap";
import "mapbox-gl/dist/mapbox-gl.css";


import { initMapbox } from '../plugins/init_mapbox.js';
import { initCarrousel } from './card_carousel.js';

initMapbox();

initCarrousel();
