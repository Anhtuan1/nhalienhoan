<style>
#text-main .back a{
float: right; font-family: arial; color:blue; font-size: 14px;
}
#text-main .back a:hover{
float: right; font-family: arial; color:red; font-size: 15px;
}
</style>
<script type="text/javascript" src="<?php echo DOMAIN;?>highslide/highslide-full.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo DOMAIN;?>highslide/highslide.css" />

<script type="text/javascript">
	hs.graphicsDir = '<?php echo DOMAIN;?>highslide/graphics/';
	hs.align = 'center';
	hs.transitions = ['expand', 'crossfade'];
	hs.outlineType = 'rounded-white';
	hs.fadeInOut = true;
	hs.dimmingOpacity = 0.75;

	// define the restraining box
	hs.useBox = true;
	hs.width = 640;
	hs.height = 480;

	// Add the controlbar
	hs.addSlideshow({
		//slideshowGroup: 'group1',
		interval: 5000,
		repeat: false,
		useControls: true,
		fixedControls: 'fit',
		overlayOptions: {
			opacity: 1,
			position: 'bottom center',
			hideOnMouseOut: true
		}
	});
</script>

<div id="text-main">
 <?php if($session->read('lang')==1){?>
   <div id="tieudecacdanhmuc" style="font-size:16px;">
Thư viện ảnh

</div>
  <?php }if($session->read('lang')==2){?>
  <div class="title-news"><p>Gallery</p></div>
  <?php }?>
     <div class="text-main">
   
 <div class="highslide-gallery">
  <?php foreach($images as $slideshows){?>
<a href="<?php echo DOMAINAD?><?php echo $slideshows['Gallery']['images'];?>" class="highslide" onclick="return hs.expand(this)">
 <img src="<?php echo DOMAINAD?>/timthumb.php?src=<?php echo $slideshows['Gallery']['images'];?>&amp;h=185&amp;w=180&amp;zc=1" alt="" style="margin:5px 3px;"/>  
   </a>
   
   <?php }?>              
 </div>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
     </div>
    
</div>
 <div class="back" align="center"><a href="<?php echo DOMAIN;?>" >Quay lại trang chủ</a></div>   
