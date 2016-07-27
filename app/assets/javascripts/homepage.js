$("window").ready(function(){


//   $(".services").on("click",function(){
//     $( ".navbar-fixed-top" ).animate({

  $( ".logo-top" ).on("mouseover",function() {
    $( this ).animate({
    'top':'20px',

  }, 100 );
  });



  $( ".logo-top" ).on("mouseleave",function() {
    $( this ).animate({
    'top':'5',

  }, 100 );
  });

  var current = 1;
  var height = $('.ticker').height();
  var numberDivs = $('.ticker').children().length;
  var first = $('.ticker h1:nth-child(1)');
  setInterval(function() {
      var number = current * -height;
      first.css('margin-top', number + 'px');
      if (current === numberDivs) {
          first.css('margin-top', '0px');
          current = 1;
      } else current++;
  }, 2500);





});
