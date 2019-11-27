$(document).ready(function() {
  $(window).scroll(function() {
    if($(document).scrollTop() > 100) {
      $('#nav').addClass('shrink');
    }
    else {
    $('#nav').removeClass('shrink');
    }
  });
});

$(document).ready(function() {
  $(window).scroll(function() {
    if($(document).scrollTop() > 400) {
      $('#nav').addClass('shrink2');
    }
    else {
    $('#nav').removeClass('shrink2');
    }
  });
});


$(document).ready(function() {
  $(window).scroll(function() {
    if($(document).scrollTop() > 100) {
      $('#nav-search').addClass('shrink-search');
    }
    else {
    $('#nav-search').removeClass('shrink-search');
    }
  });
});

