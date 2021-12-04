//= require jquery
//= require jquery_ujs

var flashTimeout = function() {

  setTimeout(function() {
    $('.flash_js').fadeOut();
  }, 8000);

  $("img").fadeIn(1000);
  $("img").css("display", "block");

  $('#menu-click-open').click(function() {
    $('#nd-menu-container').fadeIn(300);
  });

  $('#menu-click-close').click(function() {
    $('#nd-menu-container').fadeOut(300);
  });

};

$(document).ready(flashTimeout);
$(document).on('turbolinks:load', flashTimeout);