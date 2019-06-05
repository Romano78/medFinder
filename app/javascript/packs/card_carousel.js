import $ from "jquery";
import "slick-carousel";
import 'slick-carousel/slick/slick.css';

export const initCarrousel = () => {
  $('.cards-carousel').slick({
   prevArrow: "<button type='button' class='slick-prev slick-prev-fa'><i class='fas fa-angle-left'></i></button>",
   nextArrow: "<button type='button' class='slick-next slick-next-fa'><i class='fas fa-angle-right'></i></button>"
  });

  $('.carrousel-equivalent').slick({
    centerMode: true,
    centerPadding: '60px',
    slidesToShow: 1,
    prevArrow: "<button type='button' class='slick-prev slick-prev-fa'><i class='fas fa-angle-left'></i></button>",
    nextArrow: "<button type='button' class='slick-next slick-next-fa'><i class='fas fa-angle-right'></i></button>",
    fade: true,
    focusOnSelect: true
  });
}
