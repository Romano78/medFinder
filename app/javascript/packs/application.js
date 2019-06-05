import "bootstrap";
import "mapbox-gl/dist/mapbox-gl.css";


import { initMapbox } from '../plugins/init_mapbox.js';
import { initParticles } from '../plugins/init_particles.js';
import { initCarrousel } from './card_carousel.js';

initMapbox();
initParticles();
initCarrousel();

$('#arrow').click(function(){
  $('html, body').animate({scrollTop : $("#map").offset().top -40},800);
  return false;
});


$('#bottom-arrow').click(function(){
  $('html, body').animate({scrollTop : 0},800);
  return false;
});
