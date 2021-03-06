// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery

//= require rails-ujs
//= require ckeditor/init
//= require_tree .
//= require toastr
//= require jquery.slick

$(document).ready(function(){
  $('.preloader').fadeOut('slow',function(){$(this).remove();});
  window.sr = ScrollReveal({ reset: true });
  sr.reveal('.mission', { duration: 1000 });
  sr.reveal('.vission', { duration: 1000 });
  sr.reveal('.asc', { duration: 1000 });
  sr.reveal('.int', { duration: 1000 });
  sr.reveal('.coll', { duration: 1000 });
  sr.reveal('.exe', { duration: 1000 });
  sr.reveal('.inn', { duration: 1000 });


  $('.multiple').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 3,
    autoplay: true,
    dots: true,
    autoplaySpeed: 4000,
    responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
  });
});

// home part
