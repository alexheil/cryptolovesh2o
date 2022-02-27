//= require jquery
//= require jquery_ujs

var flashTimeout = function() {

  setTimeout(function() {
    $('.flash_js').fadeOut();
  }, 8000);

  $("img").fadeIn(1000);
  $("img").css("display", "block");

};

$(document).ready(flashTimeout);
$(document).on('turbolinks:load', flashTimeout);

var getFilename = function() {

  $('input[type="file"].settings_logo').change(function(e){
    var fileName = e.target.files[0].name;
    $('.file-name-image').text(fileName);
    $('.file-name-image').addClass('padding-top-1');
  });

  $('input[type="file"].featured_image').change(function(e){
    var fileName = e.target.files[0].name;
    $('.file-name-image').text(fileName);
    $('.file-name-image').addClass('padding-top-1');
  });

};

$(document).ready(getFilename);
$(document).on('turbolinks:load', getFilename);

$(window).load(function () {
  $('input[type="file"].block_image').change(function(e){
    var fileName = e.target.files[0].name;
    $(this).next('.file-name-image').text(fileName);
    $(this).next('.file-name-image').addClass('padding-top-1');
  });
});


var menuToggle = function() {

  $('#menu-click-open').click(function() {
    $('#nd-menu-container').fadeIn(300);
  });

  $('#menu-click-close').click(function() {
    $('#nd-menu-container').fadeOut(300);
  });

};

$(document).ready(menuToggle);
$(document).on('turbolinks:load', menuToggle);