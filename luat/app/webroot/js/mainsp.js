$(document).ready(function () {

			$(window).scroll(function () {
				if ($(this).scrollTop() > 300) {
					$('.scrollup').fadeIn();
				} else {
					$('.scrollup').fadeOut();
				}
			});

			$('.scrollup').click(function () {
				$("html, body").animate({
					scrollTop: 0
				}, 600);
				return false;
			});
			$('.owl-carousel').owlCarousel({ // .owl-carousel is the element selector
			  margin: 0, // gives space between carousel items
			  stagePadding: 0, // shows a bit of the next item, which is still not visible
			  responsive:{ // responsive behaviour
				0:{
				  items:2
				},
				768:{ // for example at 768 screen width, owl carousel will only show two items
				  items:3
				},
				970:{
				  items:3
				}
			  }
			});
			
			$(document.getElementById('menubutton')).bind("touchend",function () {
				$('#menubutton').addClass('displaynone');
				$('#wappersp').addClass('relativeclass');
				$('#menubuttonclose').removeClass('displaynone');		
						
			});
			$(document.getElementById('menubuttonclose')).bind("touchend",function () {
				$('#menubutton').removeClass('displaynone');
				$('#wappersp').removeClass('relativeclass');
				$('#menubuttonclose').addClass('displaynone');
									
			});
			
		});