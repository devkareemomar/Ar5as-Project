$(document).ready(function() {
 
var hamburger = $('.mobile-menu'),
    menu      = $('.menu'),
    sub_menu  = $('.sub-menu-wrapper'),
    menu_item = $('.has-sub-menu');

  hamburger.on('click', function() {
      menu.slideToggle();
      $(this).toggleClass('active');
  });

  menu_item.on('click', function() {
      $(this).children('.sub-menu-wrapper').slideToggle();
  });
  
});