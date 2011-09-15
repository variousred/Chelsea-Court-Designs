$(document).ready(function(){
  $(".home #page_container").hide();
  $(".home #page_container").fadeIn(2500);
  if ($('#scroller').length){
    $('#scroller').jScrollPane({
  	  showArrows:true,
  	  arrowScrollOnHover: true,
  	  verticalGutter: 20,
  	  arrowButtonSpeed: 3
  	});
  }
});