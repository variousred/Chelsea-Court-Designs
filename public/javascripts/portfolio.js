

$(function(){
  fullHeight = $('#page_container').height();
  $('#page_container').css({'height':'575px','overflow':'hidden'}).animate({
                                                                    height: fullHeight
  }, 3000);
  $('#portfolio a').colorbox({
    speed: 500,
    rel: true
  });
});

