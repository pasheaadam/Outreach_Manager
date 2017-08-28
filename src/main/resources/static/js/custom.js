
/* Page Pre loader scripts */
$(document).ready(function() {
	setTimeout(function(){
		$('body').addClass('loaded');
	}, 3000);
});

/* For upload profile image and upload share image */
/*$('#profileImage').change(function()
{  
var file_data = $('#profileImage').prop("files")[0]; 
var form_data =new FormData();    
form_data.append("file",file_data);
uploadFormData(form_data,'upload');           
});*/

$('#uploadImage').change(function()
{  
var file_data = $('#uploadImage').val();
if(file_data!='')
{
	$('.image_select').show(200);
}    	         
});

function uploadFormData(formData,url) 
     {                 
$.ajax({
url:url,
enctype: 'multipart/form-data',
type: "POST",
data: formData,
contentType:false,	
cache: false,
processData: false,
success: function(data)
{        
	location.reload();
}});
}
	
/* Animated Header Scripts */

$(function(){
 var shrinkHeader = 38;
  $(window).scroll(function() {
    var scroll = getCurrentScroll();
      if ( scroll >= shrinkHeader ) {
           $('.site-haeader').addClass('shrink');
        }
        else {
            $('.site-haeader').removeClass('shrink');
        }
  });
function getCurrentScroll() {
    return window.pageYOffset || document.documentElement.scrollTop;
    }
});


/* Bootstrap menu hover scripts */
if($(window).width() >= 768){
	$('ul.nav li.dropdown').hover(function() {
	  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
	}, function() {
	  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
	});
}


/* HOME PAGE SLIDER SCRIPTS START */

(function( $ ) {

    //Function to animate slider captions 
    function doAnimations( elems ) {
		//Cache the animationend event in a variable
		var animEndEv = 'webkitAnimationEnd animationend';
		
		elems.each(function () {
			var $this = $(this),
				$animationType = $this.data('animation');
			$this.addClass($animationType).one(animEndEv, function () {
				$this.removeClass($animationType);
			});
		});
	}
	
	//Variables on page load 
	var $myCarousel = $('#carousel-example-generic'),
		$firstAnimatingElems = $myCarousel.find('.item:first').find("[data-animation ^= 'animated']");
		
	//Initialize carousel 
	$myCarousel.carousel();
	
	//Animate captions in first slide on page load 
	doAnimations($firstAnimatingElems);
	
	//Pause carousel  
	$myCarousel.carousel('pause');
	
	
	//Other slides to be animated on carousel slide event 
	$myCarousel.on('slide.bs.carousel', function (e) {
		var $animatingElems = $(e.relatedTarget).find("[data-animation ^= 'animated']");
		doAnimations($animatingElems);
	});  
    $('#carousel-example-generic').carousel({
        interval:4000,
        pause: "false"
    });
	
})(jQuery);	


/* CATEGORY SCRIPTS START */

$(document).ready(function() {
	$('.owl-cat-carousel').owlCarousel({
		loop: true,
		margin: 10,
		responsiveClass: true,
		responsive: {
			0: {
				items: 2,
				nav: true
			},
			600: {
				items: 3,
				nav: false
			},
			1000: {
				items: 6,
				nav: true,
				dots: false,
				loop: false,
				margin: 25
			}
		}
	})
});


/* Testimonial SCRIPTS START */

$(document).ready(function() {
	$('.owl-testimonial').owlCarousel({
	    items:1,
	    margin:10,
	    dots:true,
	    autoHeight:true,
	    autoplay:true,
	    autoplayHoverPause:true,
	    smartSpeed:2000
	});
});


/* Portfolio Filter Scripts */

$(function () {
		var filterList = {
			init: function () {
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixItUp({
  				selectors: {
    			  target: '.portfolio',
    			  filter: '.filter'	
    		  },
    		  load: {
      		  filter: '.medical, .emergencies, .education, .memorials, .sports'  
      		}     
				});								
			}
		};
		// Run the show!
		filterList.init();
	});	


/* LightBox Gallery Scripts start */

$('#portfoliolist').imageview();
var iv = $('#portfoliolist').first().data('imageview');

describe('Basic functionality', function() {

  it('should appear on click', function() {
    iv.$targets.first().click();
    expect(iv.$viewer.is(':visible')).to.be(true);
  });
	
  it('should change on next', function() {
    iv.$next.click();
    expect(iv.$image.is(':visible'));
    expect(iv.$image.attr('src')).to.be(iv.$targets.eq(1).attr(iv.opts.srcAttr));
  });
	
  it('should change on prev', function() {
    iv.$prev.click();
    expect(iv.$image.is(':visible'));
    expect(iv.$image.attr('src')).to.be(iv.$targets.eq(0).attr(iv.opts.srcAttr));
  });
	
  it('should close on cross', function(done) {
    iv.$hide.click();
    setTimeout(function() {
      expect(iv.$viewer.is(':visible')).to.be(false);
      done();
    }, 800); // 400 fadeIn + 400 fadeOut
  });

});




$(document).ready(function() {
    $('.event-details').css('display','none');
    $('.event-details').css('height','auto');
    $('.event-details').css('margin-top','-17px');
    $('.event-details > .info').css('height','auto');
    $('.disabled').prev().css('cursor','default');
    
    
    $('.event-list > li').click(function() {
        if (!$(this).nextAll('.event-details').first().hasClass('disabled')) {
            //$(this).nextAll('.event-details').first().height('auto');
            $(this).nextAll('.event-details').first().nextAll('.info').first().height('auto');
            $(this).nextAll('.event-details').first().slideToggle();
        }
    });
})