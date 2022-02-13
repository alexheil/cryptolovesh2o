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


var menuToggle = function() {

  $('#menu-click-open').click(function() {
    $('#menu-container').fadeIn(300);
  });

  $('#menu-click-close').click(function() {
    $('#menu-container').fadeOut(300);
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




var enumTabs = function() {

  $('#settings-tab-1').click(function() {
    $(this).hide();
    $('#settings-container-1').slideDown();
    $('#settings-tab-1-close').show();
  });

  $('#settings-tab-1-close').click(function() {
    $(this).hide();
    $('#settings-container-1').slideUp();
    $('#settings-tab-1').show();
  });

  $('#settings-tab-2').click(function() {
    $(this).hide();
    $('#settings-container-2').slideDown();
    $('#settings-tab-2-close').show();
  });

  $('#settings-tab-2-close').click(function() {
    $(this).hide();
    $('#settings-container-2').slideUp();
    $('#settings-tab-2').show();
  });

  $('#settings-tab-3').click(function() {
    $(this).hide();
    $('#settings-container-3').slideDown();
    $('#settings-tab-3-close').show();
  });

  $('#settings-tab-3-close').click(function() {
    $(this).hide();
    $('#settings-container-3').slideUp();
    $('#settings-tab-3').show();
  });

  $('#settings-tab-4').click(function() {
    $(this).hide();
    $('#settings-container-4').slideDown();
    $('#settings-tab-4-close').show();
  });

  $('#settings-tab-4-close').click(function() {
    $(this).hide();
    $('#settings-container-4').slideUp();
    $('#settings-tab-4').show();
  });

  $('#settings-tab-5').click(function() {
    $(this).hide();
    $('#settings-container-5').slideDown();
    $('#settings-tab-5-close').show();
  });

  $('#settings-tab-5-close').click(function() {
    $(this).hide();
    $('#settings-container-5').slideUp();
    $('#settings-tab-5').show();
  });

  $('#settings-tab-6').click(function() {
    $(this).hide();
    $('#settings-container-6').slideDown();
    $('#settings-tab-6-close').show();
  });

  $('#settings-tab-6-close').click(function() {
    $(this).hide();
    $('#settings-container-6').slideUp();
    $('#settings-tab-6').show();
  });

  $('#settings-tab-7').click(function() {
    $(this).hide();
    $('#settings-container-7').slideDown();
    $('#settings-tab-7-close').show();
  });

  $('#settings-tab-7-close').click(function() {
    $(this).hide();
    $('#settings-container-7').slideUp();
    $('#settings-tab-7').show();
  });

  $('#settings-tab-8').click(function() {
    $(this).hide();
    $('#settings-container-8').slideDown();
    $('#settings-tab-8-close').show();
  });

  $('#settings-tab-8-close').click(function() {
    $(this).hide();
    $('#settings-container-8').slideUp();
    $('#settings-tab-8').show();
  });

  // COLOR BACKGROUND

  $('[id^="color_background_"]').click(function() {
    $('.color_background').removeClass("remember-active");
    $('.color_background').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // ANIMATION TIME

  $('[id^="padding_"]').click(function() {
    $('.padding').removeClass("remember-active");
    $('.padding').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // ANIMATION TIME

  $('[id^="animation_time_"]').click(function() {
    $('.animation_time').removeClass("remember-active");
    $('.animation_time').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // BACKGROUND STYLE

  $('[id^="background_style_"]').click(function() {
    $('.background_style').removeClass("remember-active");
    $('.background_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // BUTTON STYLE

  $('[id^="button_style_"]').click(function() {
    $('.button_style').removeClass("remember-active");
    $('.button_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // BORDER RADIUS
  
  $('[id^="border_radius_"]').click(function() {
    $('.border_radius').removeClass("remember-active");
    $('.border_radius').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FONT SIZE

  $('[id^="font_size_"]').click(function() {
    $('.font_size').removeClass("remember-active");
    $('.font_size').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FONT FAMILY

  $('[id^="font_family_"]').click(function() {
    $('.font_family').removeClass("remember-active");
    $('.font_family').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FONT WEIGHT

  $('[id^="font_weight_"]').click(function() {
    $('.font_weight').removeClass("remember-active");
    $('.font_weight').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FONT LETTERSPACING

  $('[id^="font_letterspacing_"]').click(function() {
    $('.font_letterspacing').removeClass("remember-active");
    $('.font_letterspacing').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // LINE HEIGHT

  $('[id^="line_height_"]').click(function() {
    $('.line_height').removeClass("remember-active");
    $('.line_height').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // TITLE SIZE

  $('[id^="title_size_"]').click(function() {
    $('.title_size').removeClass("remember-active");
    $('.title_size').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // TITLE FAMILY

  $('[id^="title_family_"]').click(function() {
    $('.title_family').removeClass("remember-active");
    $('.title_family').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // TITLE WEIGHT

  $('[id^="title_weight_"]').click(function() {
    $('.title_weight').removeClass("remember-active");
    $('.title_weight').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // TITLE ALIGN

  $('[id^="title_align_"]').click(function() {
    $('.title_align').removeClass("remember-active");
    $('.title_align').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // LINK WEIGHT

  $('[id^="link_weight_"]').click(function() {
    $('.link_weight').removeClass("remember-active");
    $('.link_weight').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // LINK STYLE

  $('[id^="link_style_"]').click(function() {
    $('.link_style').removeClass("remember-active");
    $('.link_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // SHADOWS
  
  $('[id^="shadows_"]').click(function() {
    $('.shadows').removeClass("remember-active");
    $('.shadows').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HERO STYLE

  $('[id^="hero_style_"]').click(function() {
    $('.hero_style').removeClass("remember-active");
    $('.hero_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER STYLE

  $('[id^="header_style_"]').click(function() {
    $('.header_style').removeClass("remember-active");
    $('.header_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER LINK

  $('[id^="header_link_style_"]').click(function() {
    $('.header_link_style').removeClass("remember-active");
    $('.header_link_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

   // HEADER BACKGROUND

  $('[id^="header_background_style_"]').click(function() {
    $('.header_background_style').removeClass("remember-active");
    $('.header_background_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER BORDER

  $('[id^="header_border_style_"]').click(function() {
    $('.header_border_style').removeClass("remember-active");
    $('.header_border_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER LOGO

  $('[id^="header_logo_allow_"]').click(function() {
    $('.header_logo_allow').removeClass("remember-active");
    $('.header_logo_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TITLE ALLOW

  $('[id^="header_title_allow_"]').click(function() {
    $('.header_title_allow').removeClass("remember-active");
    $('.header_title_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TITLE STYLE

  $('[id^="header_title_size_"]').click(function() {
    $('.header_title_size').removeClass("remember-active");
    $('.header_title_size').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TITLE WEIGHT

  $('[id^="header_title_weight_"]').click(function() {
    $('.header_title_weight').removeClass("remember-active");
    $('.header_title_weight').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TAGLINE ALLOW

  $('[id^="footer_tagline_allow_"]').click(function() {
    $('.footer_tagline_allow').removeClass("remember-active");
    $('.footer_tagline_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TAGLINE STYLE

  $('[id^="header_tagline_style_"]').click(function() {
    $('.header_tagline_style').removeClass("remember-active");
    $('.header_tagline_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // HEADER TAGLINE WEIGHT

  $('[id^="header_tagline_weight_"]').click(function() {
    $('.header_tagline_weight').removeClass("remember-active");
    $('.header_tagline_weight').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // MENU STYLE

  $('[id^="menu_style_"]').click(function() {
    $('.menu_style').removeClass("remember-active");
    $('.menu_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FOOTER STYLE

  $('[id^="footer_style_"]').click(function() {
    $('.footer_style').removeClass("remember-active");
    $('.footer_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FOOTER CREDIT

  $('[id^="footer_credit_allow_"]').click(function() {
    $('.footer_credit_allow').removeClass("remember-active");
    $('.footer_credit_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FOOTER BORDER

  $('[id^="footer_border_style_"]').click(function() {
    $('.footer_border_style').removeClass("remember-active");
    $('.footer_border_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FOOTER BACKGROUND

  $('[id^="footer_background_style_"]').click(function() {
    $('.footer_background_style').removeClass("remember-active");
    $('.footer_background_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // FOOTER SHOW SOCIAL MEDIA

  $('[id^="footer_social_media_allow_"]').click(function() {
    $('.footer_social_media_allow').removeClass("remember-active");
    $('.footer_social_media_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // BLOG STYLE

  $('[id^="blog_style_"]').click(function() {
    $('.blog_style').removeClass("remember-active");
    $('.blog_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // POST STYLE

  $('[id^="post_style_"]').click(function() {
    $('.post_style').removeClass("remember-active");
    $('.post_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // POST ALLOW COMMENTS

  $('[id^="post_comments_allow_"]').click(function() {
    $('.post_comments_allow').removeClass("remember-active");
    $('.post_comments_allow').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });

  // POST COMMENTS STYLE

  $('[id^="post_comments_style_"]').click(function() {
    $('.post_comments_style').removeClass("remember-active");
    $('.post_comments_style').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
  });


};

$(document).ready(enumTabs);
$(document).on('turbolinks:load', enumTabs);


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

  $('#main-color-minicolors').minicolors();
  $('#accent-color-minicolors').minicolors();

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

var previewChanges = function() {

  // CHANGE PREVIEW //////////////////////////////////

  $('#preview-home-container-click').click(function() {
    $('#preview-post-container-click').removeClass("remember-active");
    $('#preview-post-container-click').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
    $('#preview-post-container').fadeOut(100);
    $('#preview-home-container').delay(100).fadeIn(300);
  });

  $('#preview-post-container-click').click(function() {
    $('#preview-home-container-click').removeClass("remember-active");
    $('#preview-home-container-click').addClass("remember-inactive");
    $(this).addClass("remember-active");
    $(this).removeClass("remember-inactive");
    $('#preview-home-container').fadeOut(100);
    $('#preview-post-container').delay(100).fadeIn(300);
  });

  // DETAILS //////////////////////////////////

  $('#site-title-input').on('input', function() {
    var userInput = $(this).val();
    $('#header-site-title-target-tag').text(userInput);
    $('#footer-site-title-target-tag').text(userInput);
  });

  $('#site-tagline-input').on('input', function() {
    var userInput = $(this).val();
    $('#footer-tagline-allow-target-tag').text(userInput);
  });

  // HOME /////////////////////////////

  $('[id^="hero_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('hero_style_')[1];
    $('#hero-style-target-tag').removeClass().addClass('hero_style_' + stringToClass);
  });

  // HEADER ////////////////////////////

  $('[id^="header_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('header_style_')[1];
    $('#header-style-target-tag').removeClass().addClass('header_style_' + stringToClass);
  });
  $('[id^="header_border_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('header_border_style_')[1];
    $('#header-border-target-tag').removeClass().addClass('header_border_style_' + stringToClass);
  });
  $('[id^="header_background_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('header_background_style_')[1];
    $('#header-background-target-tag').removeClass().addClass('header_background_style_' + stringToClass);
  });
  $('[id^="header_title_allow_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('header_title_allow_')[1];
    $('#header-title-allow-target-tag').removeClass().addClass('header_title_allow_' + stringToClass);
  });
  $('[id^="header_logo_allow_"]').click(function() {
    var i;
    for (i = 0; i < 3; ++i) {
      $('#header-logo-allow-target-tag').removeClass('header_logo_allow_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#header-logo-allow-target-tag').addClass(stringToClass);
  });
  $('[id^="header_title_weight_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#header-title-weight-target-tag').removeClass('header_title_weight_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#header-title-weight-target-tag').addClass(stringToClass);
  });

  $('[id^="header_title_size_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#header-title-weight-target-tag').removeClass('header_title_size_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#header-title-weight-target-tag').addClass(stringToClass);
  });

  // FOOTER ////////////////////////////

  $('[id^="footer_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('footer_style_')[1];
    $('#footer-background-target-tag footer').removeClass().addClass('footer_style_' + stringToClass);
  });
  $('[id^="footer_border_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('footer_border_style_')[1];
    $('#footer-border-target-tag').removeClass().addClass('footer_border_style_' + stringToClass);
  });
  $('[id^="footer_background_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('footer_background_style_')[1];
    $('#footer-background-target-tag').removeClass().addClass('footer_background_style_' + stringToClass);
  });
  $('[id^="footer_social_media_allow_"]').click(function() {
    var i;
    for (i = 0; i < 3; ++i) {
      $('#footer-social-media-allow-target-tag').removeClass('footer_social_media_allow_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#footer-social-media-allow-target-tag').addClass(stringToClass);
  });

  $('[id^="footer_tagline_allow_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('footer_tagline_allow_')[1];
    $('#footer-tagline-allow-target-tag').removeClass().addClass('footer_tagline_allow_' + stringToClass);
  });

  // POST ////////////////////////////

  $('[id^="post_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('post_style_')[1];
    $('#post-style-target-tag').removeClass().addClass('post_style_' + stringToClass);
  });

  $('[id^="blog_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('blog_style_')[1];
    $('#blog-style-target-tag').removeClass().addClass('blog_style_' + stringToClass);
  });

  $('[id^="post_comments_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('post_comments_style_')[1];
    $('#post-comments-style-target-tag').removeClass().addClass('post_comments_style_' + stringToClass);
  });

  // FONT ////////////////////////////

  $('[id^="title_size_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('title_size_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="title_family_"]').click(function() {
    var i;
    for (i = 0; i < 10; ++i) {
      $('#target1-tag').removeClass('title_family_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="title_weight_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('title_weight_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="title_align_"]').click(function() {
    var i;
    for (i = 0; i < 3; ++i) {
      $('#target1-tag').removeClass('title_align_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="font_size_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('font_size_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="font_weight_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('font_weight_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="font_family_"]').click(function() {
    var i;
    for (i = 0; i < 10; ++i) {
      $('#target1-tag').removeClass('font_family_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="font_letterspacing_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('font_letterspacing_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="line_height_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('line_height_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="link_weight_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('link_weight_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="link_style_"]').click(function() {
    var i;
    for (i = 0; i < 9; ++i) {
      $('#target1-tag').removeClass('link_style_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  // STYLES ////////////////////////////

  $('[id^="shadows_"]').click(function() {
    var i;
    for (i = 0; i < 13; ++i) {
      $('#target1-tag').removeClass('shadows_' + i);
    };

    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="border_radius_"]').click(function() {
    var i;
    for (i = 0; i < 9; ++i) {
      $('#target1-tag').removeClass('border_radius_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="padding_"]').click(function() {
    var i;
    for (i = 0; i < 6; ++i) {
      $('#target1-tag').removeClass('padding_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="animation_time_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#target1-tag').removeClass('animation_time_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#target1-tag').addClass(stringToClass);
  });

  $('[id^="background_style_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#background-target-tag').removeClass('background_style_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#background-target-tag').addClass(stringToClass);
  });

  $('[id^="color_background_"]').click(function() {
    var i;
    for (i = 0; i < 5; ++i) {
      $('#color-background-tag').removeClass('color_background_' + i);
    };
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('-')[0];
    $('#color-background-tag').addClass(stringToClass);
  });

  $('[id^="button_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('button_style_')[1];
    $('#main-button_style_').removeClass().addClass('main-button_style_' + stringToClass);
  });
  $('[id^="button_style_"]').click(function() {
    var idToString = $(this).attr('id').toString();
    var stringToClass = idToString.split('button_style_')[1];
    $('#follow-button_style_, #follow-button_style_1, #follow-button_style_2, #follow-button_style_3, #follow-button_style_4, #follow-button_style_5').removeClass().addClass('follow-button_style_' + stringToClass);
  });

};

$(document).ready(previewChanges);
$(document).on('turbolinks:load', previewChanges);


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