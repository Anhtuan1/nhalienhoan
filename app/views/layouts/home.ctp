<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi-vn" lang="vi-vn" dir="ltr">
<head>


<?php $setting = $this -> requestAction('/comment/setting');?>
<?php foreach($setting as $settings){?>
<link href="http://<?php echo $settings['Setting']['url'];?>/feed" title="<?php echo $settings['Setting']['title'];?> » Feed" type="application/rss+xml" rel="alternate"/>
<link href="http://<?php echo $settings['Setting']['url'];?>/comments/feed" title="<?php echo $settings['Setting']['title'];?> » Comments Feed" type="application/rss+xml" rel="alternate"/>
<link href="http://<?php echo $settings['Setting']['url'];?>" title="<?php echo $settings['Setting']['title'];?>" rel="index">
<?php }?>
<?php if(isset($title) ) { ?>
	<title><?php echo $title; ?></title>
<?php } ?>
<?php if(isset($keywords) ) { ?>
	<meta content="<?php echo $keywords; ?>" name="keywords"/>
<?php } ?>
<?php if(isset($description) ) { ?>
	<meta content="<?php echo $description; ?>" name="description"/>
<?php } ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="noodp,noydir" name="robots"/>
<link href="<?php echo DOMAIN ?>images/logo.png" type="images/png" rel="icon"/>
<link href="<?php echo DOMAIN;?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo DOMAIN;?>css/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo DOMAIN;?>css/style_main_center.css" rel="stylesheet" type="text/css" />
<link href="<?php echo DOMAIN;?>css/owl.carousel.css" rel="stylesheet">
<link href="<?php echo DOMAIN;?>css/owl.theme.css" rel="stylesheet">
<link href="<?php echo DOMAIN;?>css/jquery-ui.css" rel="stylesheet" type="text/css"/>
 <script src="<?php echo DOMAIN ?>js/jquery.js" type="text/javascript"></script>
 <script src="<?php echo DOMAIN ?>js/bootstrap.min.js" type="text/javascript"></script>
 <script src="<?php echo DOMAIN ?>js/floater_xlib.js" type="text/javascript"></script>
<link href="<?php echo DOMAIN;?>css/default.css" rel="stylesheet" type="text/css" />
<script src="<?php echo DOMAIN;?>js/owl.carousel.js" type="text/javascript"></script> 
<script src="<?php echo DOMAIN;?>js/jquery.jcarousel.min.js" type="text/javascript"></script>
<script src="<?php echo DOMAIN;?>js/jcarousel.responsive.js" type="text/javascript"></script>

    <script type="text/javascript">

var slideTime = 700;
var floatAtBottom = false;

function pepsi_floating_init()
{
	xMoveTo('floating_banner_right', 887 - (1024-screen.width), 0);

	winOnResize(); // set initial position
	xAddEventListener(window, 'resize', winOnResize, false);
	xAddEventListener(window, 'scroll', winOnScroll, false);
}
function winOnResize() {
	checkScreenWidth();
	winOnScroll(); // initial slide
}
function winOnScroll() {
  var y = xScrollTop();
  if (floatAtBottom) {
    y += xClientHeight() - xHeight('floating_banner_left');
  }
  
  xSlideTo('floating_banner_left', (screen.width - (1050-772) - 770)/2-145 , y, slideTime);  // Chỉnh khoảng cách bên trái
  xSlideTo('floating_banner_right', (screen.width - (530-795) + 770)/2 -23, y, slideTime); // // Chỉnh khoảng cách bên Phải
}
	
function checkScreenWidth()
{
	if( document.body.clientWidth <= 1024 )
	{	
		document.getElementById('floating_banner_left').style.display = 'none';
		document.getElementById('floating_banner_right').style.display = 'none';
	}
	else
	{
		document.getElementById('floating_banner_left').style.display = '';
		document.getElementById('floating_banner_right').style.display = '';	
	}
}

</script>
<meta name="google-site-verification" content="hp2bkYKnSTutDELJnCUa0NY9BrvM-3REW2Y8a-tdT54" />
<style>
            a{
             color: black;
            }
  .page{
 float:right;
 margin-right:20px;
  padding-bottom:0;
  height:30px;
 
 } 
.page a{
 text-align:center;
 padding:3px 5px;
 background:#fff;
 border:1px solid silver;
 margin-left:5px;

 }
.page a:hover{
 background:#3960ab;
 border:1px solid #ae4e04;
 color: #FFF;
 } 
.page span.current {
 padding:3px 5px;
 background:#FFF;
 border:1px solid  silver;
 
 } 
.page span.current a{
 
 background:#fbdc70;
 border:1px solid #ae4e04;
 
 }
</style>		

</head>
<body>
<div id="floating_banner_left" style="position:absolute; z-index: 99999; overflow:hidden; margin: 100px 0px; left: 0px; width: 155px; ">
<div id="floating_banner_left_content">
<?php $adv1= $this->requestAction('/comment/adv1') ?>
    <?php foreach($adv1 as $advs1 ){  ?>
    <a href="<?php echo $advs1['Advertisement']['link'] ?>" target="_blank"><img src="<?php echo DOMAINAD.$advs1['Advertisement']['images']?>" border="0" width="155px" style="max-height:450px;" alt="do choi bao anh" /></a>
  
   <?php } ?>
</div>
</div>

<div id="floating_banner_right" style="position:absolute;z-index: 99999; overflow:hidden; margin: 90px 0; right: 0px; width: 170px; border: 0px solid #000;">
	<div id="floating_banner_right_content"  >
   
   <div id="danhmucmodun" style="background:#F8F8F8;">
      <div id="tieudemenu8">
HỖ TRỢ TRỰC TUYẾN
</div>
<ul style="padding-left:3px;">
</br>
<?php $support = $this->requestAction('/comment/helpsonline') ?>
 <?php  foreach($support as $itm ){?>                   
 <li>
 
 <span><font style="font-size: 12px; color: #4f4444; font-weight:700; "><?php echo $itm['Helps']['title']?> </font> </span>


<span><a rel="nofollow"  href="skype:<?php echo $itm['Helps']['user_skype'] ?>?call" ><img lt="anh ho tro" align="absmiddle" src="<?php echo DOMAIN?>images/skype.png" style="height:18px;"/></a> </span>
<span><a href="ymsgr:sendIM?<?php echo $itm['Helps']['user_yahoo']?>" ><img alt="anh ho tro" align="absmiddle"  src="<?php echo DOMAIN;?>css/images/123.png"  style="height:18px;"/></a> </span>
</li>       
<?php }?>		   
</ul>
<?php $setting = $this->requestAction('/comment/setting') ?>
            <?php foreach($setting as $settings ){  ?>
			
	<p style="padding-left:5px; padding-top:5px;  color: #4f4444; ">
<b> - Phòng kinh doanh </b>
</p>	
 <p style="padding-left:5px; padding-top:5px; ">
  <font style="font-size:13px; ">+ <?php echo $settings['Setting']['kinhdoanh1'] ?></font>
 </p>
  <p style="padding-left:5px; padding-top:5px;">
  <font style="font-size:13px; ">+ <?php echo $settings['Setting']['kinhdoanh2'] ?></font>
 </p>
	 <p style="padding-left:5px; padding-top:5px;">
  <font style="font-size:13px; ">+ Mr Điệp : 0976 613 863</font>
 </p>
 <p style="padding-left:5px; padding-top:5px;">
  <font style="font-size:13px; ">+  Ms. Thu  : 0969 543 582</font>
 
 </p>
 <p style="padding-left:5px; padding-top:5px; color: #4f4444; ">
<b>- Phòng kỹ thuật</b>
</p>	
<p style="padding-left:5px; padding-top:5px;">
<font style="font-size:13px; ">+ <?php echo $settings['Setting']['kithuat'] ?></font>
</p>	 
<p style="padding-left:5px; padding-top:5px;">
<img alt="dien thoai" align="absmiddle" src="<?php echo DOMAIN;?>css/images/dienthoai12.png"/>
<font style="color:#656565; font-size:11px;"> <b> Hotline: </b> </font> 
<b> <font style="font-size:14px; color:#A94244;"><?php echo $settings['Setting']['mobile'] ?></font></b>
</p>
 <p style="padding-left:2px; padding-top:5px;">
 <img alt="thu" align="absmiddle" src="<?php echo DOMAIN;?>css/images/thu12.png"/>
 <font style="font-size:11px; "><?php echo $settings['Setting']['email'] ?></font>
 </p>
<?php } ?>
</br>
</div>   
</div>
</div>
<script>
	pepsi_floating_init();
</script>
<div id="body">
<div class="container">
	<div class ="row">
         <?php echo $this->element('header');?> 		 
        <?php echo $this->element('slide');?>
        
			<?php echo $content_for_layout; ?>
			   
             <div class="clearfix"></div> 
	
			
		 <?php //echo $this->element('partner');?> 
		 
		 
    </div><!--end body--> 
		<?php //echo $this->element('footer');?>
		
	</div>
</div>
</body>
</html>