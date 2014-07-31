$(document).ready(function() {
  $( "input[type='text']" ).on("change paste keyup", function() {
    $('.search-more').show(200);
  });
});
