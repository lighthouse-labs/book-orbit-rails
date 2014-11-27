var orbit = {
	fieldsetShow: function(el) {
    el.animate({ width: "200px" }, 200)
    .next().show(200);
    el.next().next().show(300);
	},
	showDelAdd: function() {
    $(this).find(".delete").show(200);
    $(this).find(".delete-collection").show(200);
    $(this).find(".add-to").show(200);
	},
	hideDelAdd: function() {
    $(this).find(".delete").hide(200);
    $(this).find(".delete-collection").hide(200);
    $(this).find(".add-to").hide(200);
    $(this).find(".add-collection").hide(200);
	}
};

$(function() {

  var collection_input = "<input type='text' name='collection[]'' class='collection-input' placeholder='Collection name'>";

  $( "fieldset" ).one("focusin", "input[name='url']", function(){
    $(this).next().remove();
		orbit.fieldsetShow($(this));
  });

  $( "fieldset" ).one("click", ".show-form", function(e){
    e.preventDefault;
    $(this).hide(100);
		orbit.fieldsetShow($(this));
  });

  $( ".add-collection-input" ).on("click", function(e){
    e.preventDefault;
    $(this).parent().append(collection_input);
  });

  $( ".pure-u-1" ).add(".pure-u-md-1-2").hover(orbit.showDelAdd, orbit.hideDelAdd);

  $( ".bookmark" ).on("click", ".add-to", function(){
    $(this).next().show(100);
    $(this).hide(100);
  }).on();
});
