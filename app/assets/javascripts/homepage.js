$("window").ready(function() {
  // var navabout = document.getElementById("nav-about").innerHTML
  // var $contactdiv = "don't contact me even though I say you can."

// $(selector).toggleClass(classname,function(index,currentclass),switch)

    $(".navbar-right").on("click", function(clickEvent) {


        var linkEl = clickEvent.target
        if (linkEl.getAttribute('data-id') === 'services') {
          $('.navbar-fixed-top').toggleClass("navbar-show", 1000);
          $("#nav-about").html("<section id='about' class=''><div class='container'><div class='row'><div class='col-xs-12 section-title text-center'><h2>About</h2><span class='section-divider'></span></div></div><div class='row mb15'><div class='col-sm-5 leftReveal'><h5 class='heading-1 mb20'>Our Trade</h5><h3 class='mb15 no-margin-top'>Designing, Developing, and <br>Innovating for people like you...</h3><p class='no-margin text-small'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec tristiq enim. Integer eu <strong>neque</strong> arcu. Aenean sed odio nibh. Cras imperdiet, arcu eget dictum vestibulum elit.</p></div><div class='col-sm-7 mt30-xs rightReveal'><h5 class='heading-1 mb20'>How we started it</h5><span class='icon-handle-streamline-vector logo-about'></span><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras est urna, imperdiet eget sem at, pellentesque cursus elit. Etiam id ante et elit interdum sollicitudin. Cras imperdiet, arcu eget dictum vestibulum elit.</p><p>Curabitur egestas interdum ex, sed commodo ipsum consectetur vitae. Nulla auctor ante erat. Class aptent taciti sociosqu nostra enean sed.</p></div></div></section>");



        }
        if (linkEl.getAttribute('data-id') === 'contact') {
          $('.navbar-fixed-top').toggleClass("navbar-show", 1000);
          $("#nav-about").html("<section id='contact' class=''><div class='container'><div class='row mb30'><div class='col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 section-title text-center'><h2>Contact</h2><span class='section-divider mb15'></span><p class='no-margin scaleReveal'>If you have any questions feel free to use the methods below.</p></div></div><div class='row'><div class='col-sm-5 col-lg-4'><h5 class='heading-1 mb20'>Contact Us</h5><p class='text-xs-small mb5'><strong class='text-switch'>Email:</strong>greenup.steven@gmail.com</p><p class='text-xs-small mb5'><strong class='text-switch'>Phone:</strong>+1 123-456-7890</p><p class='text-xs-small mb5'><strong class='text-switch'>Fax:</strong>+1 123-456-7890</p></div><div class='col-sm-6 col-lg-7 mt30-xs'><form class='new_contact' id='new_contact' action='/contact' accept-charset='UTF-8' method='post'><input name='utf8' value='✓' type='hidden'><input name='authenticity_token' value='aBiJ8sOTEUdF1p60I0KHegpxncqrfK59vamGpeqA6EwbwE1a3VCrfCIoCg7gjTn9/J+2bbbGKwhexRjqBt5lpQ==' type='hidden'><div class='row'><div class='col-sm-6'><div class='form-group'><div class='controls'><label for='contact_subject'>Subject</label><br><input name='contact[subject]' id='contact_subject' type='text'><div class='help-block with-errors'></div></div></div></div><div class='col-sm-6'><div class='form-group'><label for='contact_phone'>Phone</label><br><input name='contact[phone]' id='contact_phone' type='text'></div></div></div><div class='row mb10'><div class='col-sm-6'><div class='form-group'><div class='controls'><label for='contact_yourname'>Your Name</label><br><input name='contact[yourname]' id='contact_yourname' type='text'><div class='help-block with-errors'></div></div></div></div><div class='col-sm-6'><div class='form-group'><div class='controls'><label for='contact_email'>Email</label><br><input name='contact[email]' id='contact_email' type='email'><div class='help-block with-errors'></div></div></div></div></div><div class='row'><div class='col-sm-12'><div class='form-group'><div class='controls'><label for='contact_message'>Message</label><br><textarea name='contact[message]' id='contact_message'></textarea><div class='help-block with-errors'></div></div></div></div></div><div class='row mt15'><div class='col-sm-6'><div id='msgSubmit' class='h4 hidden mt10 no-margin-bottom'></div></div><div class='col-sm-6 text-right'><input name='commit' value='Send' data-disable-with='Send' type='submit'></div></div></form></div></div></div></section>");

        }

      });











    $(".logo-top").on("mouseover", function() {
        $(this).animate({
            'top': '20px',

        }, 100);
    });



    $(".logo-top").on("mouseleave", function() {
        $(this).animate({
            'top': '5',

        }, 100);
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
