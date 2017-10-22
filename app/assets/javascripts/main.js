$( document ).on('turbolinks:load ajaxSuccess', function() {
  $(".alert, .notice").delay(1500).fadeOut(1000);
  refreshRating();

  // $(".img-zoom").elevateZoom();
});

