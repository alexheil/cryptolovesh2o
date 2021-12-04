//= require jquery
//= require jquery_ujs
//= require cocoon
//= require trix
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


var trixCust = function() {

  Trix.config.textAttributes.h2 = { tagName: "h2", inheritable: true }
  Trix.config.textAttributes.h3 = { tagName: "h3", inheritable: true }
  Trix.config.textAttributes.h4 = { tagName: "h4", inheritable: true }

  addEventListener("trix-initialize", function(event) {
    var buttonHTML, buttonGroup
    
    buttonHTML  = '<button type="button" class="trix-button trix-button--icon trix-button--icon-h2" data-trix-attribute="h2">H2</button>'
    buttonHTML += '<button type="button" class="trix-button trix-button--icon trix-button--icon-h3" data-trix-attribute="h3">H3</button>'
    buttonHTML += '<button type="button" class="trix-button trix-button--icon trix-button--icon-h4" data-trix-attribute="h4">H4</button>'

    buttonGroup = event.target.toolbarElement.querySelector(".trix-button-group--text-tools")
    console.log(buttonGroup);
    buttonGroup.insertAdjacentHTML("beforeend", buttonHTML)
  });

  $('body').on('cocoon:before-insert', function(e,item_to_be_added) {
    new_id = new Date().getTime();
    item_to_be_added.find('#content-input').attr('id', "content-input_" + new_id);
    item_to_be_added.find('.post-text-area').attr('input', "content-input_" + new_id);
    console.log(new_id);
  });

  $('body').on('cocoon:before-insert', function(e,item_to_be_added) {
    new_id = new Date().getTime();
    item_to_be_added.find('#block-image').attr('id', "block-image_" + new_id);
    item_to_be_added.find('.block_image_').attr('for', "block-image_" + new_id);
    console.log(new_id);
  });

};

$(document).ready(trixCust);
$(document).on('turbolinks:load', trixCust);


var homeStuff = function() {

  var main = '#fc9580'
  var mainDark = '#dd8270'
  var mainLight = '#fff2ef'

  var border = "#d1dddf"
  var borderHover = "#c3dade"

  $('.package-border').mouseenter(function() {
    $('.package-button').css({
      background: mainLight,
      borderColor: main,
      color: main
    });
    $('.border-left-nh .border-right-nh, .border-top-nh, .border-bottom-nh').css({
      borderColor: borderHover
    });
  }).mouseleave(function() {
    $('.package-button').css({
      background: main,
      borderColor: mainDark,
      color: mainLight
    });
    $('.border-left-nh .border-right-nh, .border-top-nh, .border-bottom-nh').css({
      borderColor: border
    });
  });

};

$(document).ready(homeStuff);
$(document).on('turbolinks:load', homeStuff);


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


var packageSlider = function() {

  function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min) + min);
  };

  var currentBackground = getRandomInt(0, 7);
  var backgrounds = [];
  backgrounds[0] = "https://i.imgur.com/tuZBbsR.png";
  backgrounds[1] = "https://i.imgur.com/2XagS56.png";
  backgrounds[2] = "https://i.imgur.com/Lm77Qy2.png";
  backgrounds[3] = "https://i.imgur.com/5kV8k54.png";
  backgrounds[4] = "https://i.imgur.com/G2HmZhJ.png";
  backgrounds[5] = "https://i.imgur.com/FqYpAwy.png";
  backgrounds[6] = "https://i.imgur.com/GDWbIMg.png";
  backgrounds[7] = "https://i.imgur.com/dXdWr6C.png";

  var currentFirstImage = getRandomInt(0, 3);
  var firstImages = [];
  firstImages[0] = "https://i.imgur.com/0TLKIIS.png";
  firstImages[1] = "https://i.imgur.com/K7MM58j.png";
  firstImages[2] = "https://i.imgur.com/d4lV1TX.png";
  firstImages[3] = "https://i.imgur.com/tSjcSTU.png";

  var currentSecondImage = getRandomInt(0, 3);
  var secondImages = [];
  secondImages[0] = "https://i.imgur.com/wHlmTkj.png";
  secondImages[1] = "https://i.imgur.com/9e8NXBg.png";
  secondImages[2] = "https://i.imgur.com/1H0SgVv.png";
  secondImages[3] = "https://i.imgur.com/2Myk63r.png";

  $('.package-image').attr("src", backgrounds[currentBackground]);
  $('.first-package-image').attr("src", firstImages[currentFirstImage]);
  $('.second-package-image').attr("src", secondImages[currentSecondImage]);

  function changeBackground() {
    currentBackground++;
    if(currentBackground > 7) currentBackground = 0;
    $('.package-image').fadeOut(1000,function() {
        $(this).attr("src", backgrounds[currentBackground]);
        $('.package-image').fadeIn(1000);
    });
    setTimeout(changeBackground, 10000);
  };
  function changeFirstImage() {
    currentFirstImage++;
    if(currentFirstImage > 3) currentFirstImage = 0;
    $('.first-package-image').fadeOut(1000,function() {
        $(this).attr("src", firstImages[currentFirstImage]);
        $('.first-package-image').fadeIn(1000);
    });
    setTimeout(changeFirstImage, 10000);
  };
  function changeSecondImage() {
    currentSecondImage++;
    if(currentSecondImage > 3) currentSecondImage = 0;
    $('.second-package-image').fadeOut(1000,function() {
        $(this).attr("src", secondImages[currentSecondImage]);
        $('.second-package-image').fadeIn(1000);
    });
    setTimeout(changeSecondImage, 10000);
  };

  setTimeout(function() {
    changeBackground();
    changeFirstImage();
    changeSecondImage();
  }, 10000);

};

$(document).ready(packageSlider);
$(document).on('turbolinks:load', packageSlider);



