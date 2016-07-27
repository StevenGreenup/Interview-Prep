$("window").ready(function() {
  // var navabout = document.getElementById("nav-about").innerHTML
  // var $contactdiv = "don't contact me even though I say you can."

// $(selector).toggleClass(classname,function(index,currentclass),switch)

    $(".navbar-right").on("click", function(clickEvent) {


        var linkEl = clickEvent.target
        if (linkEl.getAttribute('data-id') === 'services') {
          $('.navbar-fixed-top').toggleClass("navbar-show", 900);
          $("#nav-about").html("<section id='about' class=''><div class='container'><div class='row'><div class='col-xs-12 section-title text-center'><h2>About</h2><span class='section-divider'></span></div></div><div class='row mb15'><div class='col-sm-5 leftReveal'><h5 class='heading-1 mb20'>Our Trade</h5><h3 class='mb15 no-margin-top'>Designing, Developing, and <br>Innovating for people like you...</h3><p class='no-margin text-small'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec tristiq enim. Integer eu <strong>neque</strong> arcu. Aenean sed odio nibh. Cras imperdiet, arcu eget dictum vestibulum elit.</p></div><div class='col-sm-7 mt30-xs rightReveal'><h5 class='heading-1 mb20'>How we started it</h5><span class='icon-handle-streamline-vector logo-about'></span><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras est urna, imperdiet eget sem at, pellentesque cursus elit. Etiam id ante et elit interdum sollicitudin. Cras imperdiet, arcu eget dictum vestibulum elit.</p><p>Curabitur egestas interdum ex, sed commodo ipsum consectetur vitae. Nulla auctor ante erat. Class aptent taciti sociosqu nostra enean sed.</p></div></div></section>");



        }
        if (linkEl.getAttribute('data-id') === 'contact') {
          $('.navbar-fixed-top').toggleClass("navbar-show", 900);
          $("#nav-about").html("<section id='contact' class=''><div class='container'><div class='row mb30'><div class='col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 section-title text-center'><h2>Contact</h2><span class='section-divider mb15'></span><p class='no-margin scaleReveal'>Our team is from all over the world and we know how to deliver quality pixels from miles away.</p></div></div><div class='row'><div class='col-sm-5 col-lg-4'><h5 class='heading-1 mb20'>Visit Us</h5><h4 class='mb15'>142 Pelican Drive • 1252nd Floor, Suite 420<br>New York City, New York 99912</h4><p class='no-margin text-xs-small'>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates. Temporibus autem quibusdam et aut.</p><hr class='mini-hr'><p class='text-xs-small mb5'><strong class='text-switch'>Email:</strong> info@particle.com</p><p class='text-xs-small mb5'><strong class='text-switch'>Phone:</strong> +1 212-249-2390</p><p class='text-xs-small mb5'><strong class='text-switch'>Fax:</strong> +1 112-444-2390</p></div><div class='col-sm-6 col-lg-7 mt30-xs'><form data-toggle='validator' id='contactForm' name='contactForm'><div class='row'><div class='col-sm-6'><div class='form-group'><div class='controls'><input class='form-control' data-error='This section is required.'id='msg_subject' placeholder='Subject *' required='' type='text'><div class='help-block with-errors'></div></div></div></div><div class='col-sm-6'><div class='form-group'><div class='controls'><input class='form-control' id='phone' placeholder='Phone' type='text'></div></div></div></div><div class='row mb10'><div class='col-sm-6'><div class='form-group'><div class='controls'><input class='form-control' data-error='This section is required.' id='name' placeholder='Your Name *' required='' type='text'><div class='help-block with-errors'></div></div></div></div><div class='col-sm-6'><div class='form-group'><div class='controls'><input class='email form-control' data-error='This section is required.' id='email' placeholder='Email *' required='' type='email'><div class='help-block with-errors'></div></div></div></div></div><div class='row'><div class='col-sm-12'><div class='form-group'><div class='controls'><textarea class='form-control' data-error='This section is required.' id='message' placeholder='Message *' required='' rows='5'></textarea><div class='help-block with-errors'></div></div></div></div></div><div class='row mt15'><div class='col-sm-6'><div id='msgSubmit' class='h4 hidden mt10 no-margin-bottom'></div> </div><div class='col-sm-6 text-right'><button type='submit' id='submit' class='btn btn-default btn-lg'>Send</button></div></div></form></div></div></div></section>");

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
