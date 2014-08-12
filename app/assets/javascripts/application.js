// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// custom shit
var ready = function() {

  console.log("hi");
  var collection_input = "<input type='text' name='collection[]'' class='collection-input' placeholder='Collection name'>";

  $( "fieldset" ).one("focusin", "input[name='url']", function(){
    $(this).next().remove();
    $(this).animate({ width: "200px" }, 200);
    $(this).next().show(200);
    $(this).next().next().show(300);
  });

  $( "fieldset" ).one("click", ".show-form", function(e){
    e.preventDefault;
    $(this).prev().animate({ width: "200px" }, 200);
    $(this).hide(100);
    $(this).next().show(200);
    $(this).next().next().show(300);
  });

  $( ".add-collection-input" ).on("click", function(e){
    console.log('add collection clicked');
    e.preventDefault;
    $(this).parent().append(collection_input);
  });

  $( ".pure-u-1" ).on("mouseenter", function() {
    $(this).find(".delete").show(200);
    $(this).find(".delete-collection").show(200);
    $(this).find(".add-to").show(200);
  }).on("mouseleave",function(){
    $(this).find(".delete").hide(200);
    $(this).find(".delete-collection").hide(200);
    $(this).find(".add-to").hide(200);
    $(this).find(".add-collection").hide(200);
  });
  $( ".pure-u-md-1-2" ).on("mouseenter", function() {
    $(this).find(".delete").show(200);
    $(this).find(".delete-collection").show(200);
    $(this).find(".add-to").show(200);
  }).on("mouseleave",function(){
    $(this).find(".delete").hide(200);
    $(this).find(".delete-collection").hide(200);
    $(this).find(".add-to").hide(200);
    $(this).find(".add-collection").hide(200);
  });

  $( ".bookmark" ).on("click", ".add-to", function(){
    $(this).next().show(100);
    $(this).hide(100);
  }).on();
}

$(document).ready(ready);
$(document).on('page:load', ready);
