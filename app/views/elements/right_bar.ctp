
<script type="text/javascript" src="<?php echo DOMAIN;?>js/jquery.js"></script>

   

<div id="right-bar">
	<a href="#" class="chat" title="Thảo luận"><img src="<?php echo DOMAIN.'img/chat-button.png' ?>" alt=""/></a>
	
<!-- BEGIN CBOX - www.cbox.ws - v001 -->
<div id="cboxdiv" style="text-align: center; line-height: 0">
<div><iframe frameborder="0" width="200" height="305" src="http://www7.cbox.ws/box/?boxid=669215&amp;boxtag=dvhzyf&amp;sec=main" marginheight="2" marginwidth="2" scrolling="auto" allowtransparency="yes" name="cboxmain7-669215" style="border:#000000 1px solid;" id="cboxmain7-669215"></iframe></div>
<div><iframe frameborder="0" width="200" height="75" src="http://www7.cbox.ws/box/?boxid=669215&amp;boxtag=dvhzyf&amp;sec=form" marginheight="2" marginwidth="2" scrolling="no" allowtransparency="yes" name="cboxform7-669215" style="border:#000000 1px solid;border-top:0px" id="cboxform7-669215"></iframe></div>
<div class="hide-button-chatbox" style="background:#FFFFFF; height:20px;"><a href="#">Ẩn chat box 360hanoi</a></div>

</div>
<!-- END CBOX -->


<script type="text/javascript">
	$(document).ready(function() {
		$('a.chat').click(function() {
			$('#right-bar').animate({
				right: 202
			}, 500, function() {
				$('#cboxdiv').fadeIn().css({'z-index': 1000});
			});
		});
		$('.hide-button-chatbox a').click(function() {
			$('#cboxdiv').fadeOut(300, function() {
				$('#right-bar').animate({
					right: 0
				});
			});
		});
		
		
		
		
		
	});
</script>
<script language="javascript" type="text/javascript" src="<?php echo DOMAIN;?>js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo DOMAIN;?>js/script.js"></script>
<script type="text/javascript">
 $(document).ready( function(){	
		$('#lofslidecontent45').lofJSidernews( { interval:6000,
											 	easing:'easeInOutQuad',
												duration:1900,
												auto:true } );						
	});
 $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script>
<script>
$(function(){
   $(".menu-top li:last-child").css("background","none");
   $(".home-section-title li:last-child").css("background","none");
});


</script>