//= require jquery
//= require jquery_ujs
//= require_tree .

var flashTimeout = function() {

  setTimeout(function() {
    $('.flash_js').fadeOut();
  }, 8000);

  $("img").fadeIn(1000);
  $("img").css("display", "block");

  $("a.add_fields").data("association-insertion-method", 'before').data("association-insertion-node", '#u_blocks_target');

};

$(document).ready(flashTimeout);
$(document).on('turbolinks:load', flashTimeout);


var menuToggle = function() {

  $('#menu-click-open').click(function() {
    $('#nd-menu-container').fadeIn(300);
  });

  $('#menu-click-close').click(function() {
    $('#nd-menu-container').fadeOut(300);
  });

  $('.js-popup-click').click(function() {
    $('.js-popup-container').fadeIn(300);
  });

  $('.js-popup-click-close').click(function() {
    $('.js-popup-container').fadeOut(300);
  });

};

$(document).ready(menuToggle);
$(document).on('turbolinks:load', menuToggle);


var formTabs = function() {

  $('#remember-inactive').change(function(){
    if($(this).is(":checked")) {
      $('#remember-tab').addClass("remember-active");
      $('#remember-tab').removeClass("remember-inactive");
    } else {
      $('#remember-tab').removeClass("remember-active");
      $('#remember-tab').addClass("remember-inactive");
    }
  });

  $('nested_fields').on('fields_added.nested_form_fields', function(event, param) {
    console.log(event.target);
  });

};

$(document).ready(formTabs);
$(document).on('turbolinks:load', formTabs);



