$(document).ready(function() {
  $( "fieldset" ).on("change paste keyup", "input[type='text']", function() {
    $(this).parent().siblings().show(200);
  });
  
  $( ".pure-u-1-3" ).on("mouseenter", function() {
    $(this).find(".delete").show(200);
  }).on("mouseleave",function(){
    $(this).find(".delete").hide(200);
  });  
});