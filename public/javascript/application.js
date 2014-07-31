$(document).ready(function() {
  $( "fieldset" ).on("change paste keyup", "input[type='text']", function() {
    $(this).parent().siblings().show(200);
  });
});
