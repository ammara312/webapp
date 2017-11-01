//Turbolinks speed up the page load time when traveling around the different pages
$( document ).on('turbolinks:load ajaxSuccess', function() {
  $(".alert, .notice").delay(1500).fadeOut(1000);
  $(".zoom-image").elevateZoom();
});

