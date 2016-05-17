


   




<div id="left-bar">
	<a href="#" class="thongtin" title="Bảng xếp hạng"><img src="<?php echo DOMAIN.'img/music-button.png' ?>" alt=""/></a>
	
<!-- BEGIN CBOX - www.cbox.ws - v001 -->
<div id="thongtin" style="border:1px solid #CCCCCC; width:190px; min-height:200px; display:none; left:0; position:fixed; margin:0px; padding:0px; top:60px; overflow:hidden;  background:url(<?php echo DOMAIN?>css/images/bgf.png);">
<div class="hide-button-chatbox-left" style=" height:20px; text-align:right;"><a href="#"><img src="<?php echo DOMAIN;?>css/nutan.png"> </a></div>

<div style="width:200px;  left:0; padding-left:5px;"> 
<?php $shownhac = $this->requestAction('comment/shownhac');
foreach($shownhac as $shownhac) {
?>
<a href=""  style="text-decoration:none;color:#FFFFFF;" onclick="return hs.htmlExpand(this)"><img src="<?php echo DOMAIN;?>img/radio-active.gif" style="height:11px; width:13px; margin-right:5px;"/><?php echo $shownhac['News']['title'];?> </a>


<div class="highslide-maincontent" style="left:300px;">

<div style="min-height:330px; min-width:500px;">
<?php echo $shownhac['News']['content'];?>
</div>


</div>
<?php } ?>


</div>

</div>

<!-- END CBOX -->


<script type="text/javascript">
	$(document).ready(function() {
		$('a.thongtin').click(function() {
			$('#left-bar').animate({
				left: 202
			}, 500, function() {
				$('#thongtin').fadeIn().css({'z-index': 1000});
			});
		});
		$('.hide-button-chatbox-left a').click(function() {
			$('#thongtin').fadeOut(300, function() {
				$('#left-bar').animate({
					left: 0
				});
			});
		});
		$('a.thongtin').click(function() {
			$('#thongtin').fadeOut(300, function() {
				$('#left-bar').animate({
					left: 0
				});
			});
		});
		
		
		
		
		
	});
</script>
</div>




<script type="text/javascript" src="<?php echo DOMAIN;?>highslide/highslide-with-html.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo DOMAIN;?>highslide/highslide.css" />

<script type="text/javascript">
hs.graphicsDir = '<?php echo DOMAIN;?>highslide/graphics/';
hs.outlineType = 'rounded-white';
hs.wrapperClassName = 'draggable-header';
</script>


  <!-- 

<div id="left-bottom">
	<a href="#" class="thongtin-bottom" title="Bảng xếp hạng"><img src="<?php echo DOMAIN.'img/music-button.png' ?>" alt=""/></a>
	

<div id="thongtin-bottom" style="border:1px solid #CCCCCC; width:200px; height:200px; display:none; left:0; position:fixed; margin:0px; padding:0px; bottom:130px;">
<div style="width:200px; height:200px; left:0; "> </div>
<div class="hide-button-chatbox-left-bottom" style="background:#FFFFFF; height:20px text-align:center;"><a href="#">Ẩn bảng xếp hạng</a></div>
</div>



<script type="text/javascript">
	$(document).ready(function() {
		$('a.thongtin-bottom').click(function() {
			$('#left-bottom').animate({
				left: 202
			}, 500, function() {
				$('#thongtin-bottom').fadeIn().css({'z-index': 1000});
			});
		});
		$('.hide-button-chatbox-left-bottom a').click(function() {
			$('#thongtin-bottom').fadeOut(300, function() {
				$('#left-bottom').animate({
					left: 0
				});
			});
		});
		
		$('a.thongtin-bottom').click(function() {
			$('#thongtin-bottom').fadeOut(300, function() {
				$('#left-bottom').animate({
					left: 0
				});
			});
		});
		
		
		
	});
</script>
</div> -->

