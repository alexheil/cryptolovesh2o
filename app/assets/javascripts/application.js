//= require jquery
//= require jquery_ujs
//= require_tree .

var flashTimeout = function() {

  setTimeout(function() {
    $('.flash_js').fadeOut();
  }, 8000);

  $("img").fadeIn(1000);
  $("img").css("display", "block");

};

$(document).ready(flashTimeout);
$(document).on('turbolinks:load', flashTimeout);


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



