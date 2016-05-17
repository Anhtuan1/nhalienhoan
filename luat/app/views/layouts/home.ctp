<!DOCTYPE html>
<!-- saved from url=(0031)http://thanhlapdoanhnghiep.biz/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?php $setting = $this -> requestAction('/comment/setting');?>
<?php foreach($setting as $settings){?>
<link href="http://<?php echo $settings['Setting']['url'];?>/feed" title="<?php echo $settings['Setting']['title'];?> » Feed" type="application/rss+xml" rel="alternate"/>
<link href="http://<?php echo $settings['Setting']['url'];?>/comments/feed" title="<?php echo $settings['Setting']['title'];?> » Comments Feed" type="application/rss+xml" rel="alternate"/>
<link href="http://<?php echo $settings['Setting']['url'];?>" title="<?php echo $settings['Setting']['title'];?>" rel="index">
<?php }?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

<?php if(isset($title) ) { ?>
	<title><?php echo $title; ?></title>
	<meta property="og:title" content="<?php echo $title; ?>">
<?php } ?>
<?php if(isset($keywords) ) { ?>
	<meta content="<?php echo $keywords; ?>" name="keywords"/>
	<meta name="keywords" content="<?php echo $keywords; ?>">
<?php } ?>
<?php if(isset($description) ) { ?>
	<meta content="<?php echo $description; ?>" name="description"/>
	<meta property="og:description" content="<?php echo $description; ?>">
<?php } ?>

<meta name="robots" content="noodp">
<meta property="og:locale" content="en_US">
<meta property="og:type" content="website">
<meta property="og:site_name" content="Thành lập doanh nghiệp">
<link rel="stylesheet" id="bootstrap-group-css" href="<?php echo DOMAIN;?>css/minify-b1-bootstrap-756064701e288fea820a8d48a0d3e68d.css" type="text/css" media="all">

<link href="<?php echo DOMAIN;?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
<script src="<?php echo DOMAIN;?>js/wp-emoji-release.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo DOMAIN;?>js/minify-b1-wp-ui-min-fc0fa6b932df3b5b32b49f9c46e5e0cc.js"></script>

<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>

<!-- Auto ThickBox Plus by attosoft (http://attosoft.info/en/) -->

<style type="text/css">
#TB_ImageClick a#TB_ImagePrev:hover { background-image: url(css/tb-prev.png); }
#TB_ImageClick a#TB_ImageNext:hover { background-image: url(css/tb-next.png); }
#TB_ImageClick a#TB_ImageFirst:hover { background-image: url(css/tb-first.png); }
#TB_ImageClick a#TB_ImageLast:hover { background-image: url(css/tb-last.png); }
#TB_ImageClick a#TB_ImageClose:hover, #TB_ImageClick a#TB_ImageClose2:hover { background-image: url(css/tb-close.png); }
#TB_load { padding:15px; margin: 0; }
#TB_load img { vertical-align:middle; }
</style>

<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<link rel="stylesheet" type="text/css" href="<?php echo DOMAIN;?>css/minify-b1--c1ec191ddc2af1eeb3665a95f69b4ffe.css" media="screen">
<meta name="p:domain_verify" content="2b83b9947220856ba9230cd480f0507b">
</head>

<body>

<div id="vmain">
<header>
  <div class="logo"><a href="<?php echo DOMAIN;?>" title="Thành lập doanh nghiệp "><img src="<?php echo DOMAIN;?>css/logo.png" alt="Logo"></a></div>
  <div class="rheader">
  <?php $support = $this->requestAction('/comment/helpsonline') ?>
 <?php  foreach($support as $itm ){?>       
 <?php $setting = $this->requestAction('/comment/setting') ?>
            <?php foreach($setting as $settings ){  ?>
    <li><a href="" title="Thành lập doanh nghiệp"><img src="<?php echo DOMAIN;?>css/vn-flag.png" alt=""></a> <a href="" title="VietAn Law" target="_blank"><img src="<?php echo DOMAIN;?>css/uk-flag.png" alt="English"></a></li>
    <div class="dtphone">
            <i class="fa fa-phone-square fa-lg"></i>: <span><a href="tel:<?php echo $settings['Setting']['mobile'] ?>" title="Điện thoại liên hệ">  <?php echo $settings['Setting']['mobile'] ?></a></span><span class="dtgach"> - </span><span><a href="tel:<?php echo $settings['Setting']['kinhdoanh1'] ?>" title="Điện thoại liên hệ"><?php echo $settings['Setting']['kinhdoanh1'] ?></a></span></div>
    <span class="dtgachs"> - </span>
    <div class="dtmail">
            <i class="fa fa-envelope fa-lg"></i>: <span><a href="mailto:><?php echo $settings['Setting']['email'] ?>"><?php echo $settings['Setting']['email'] ?> </a></span></div>
    <div class="msearch">
      <form method="get" id="searchform" action="/search">
        <input name="s" type="text" onfocus="if(this.value==&#39;Nhập từ khóa&#39;) this.value=&#39;&#39;;" onblur="if(this.value==&#39;&#39;) this.value=&#39;Nhập từ khóa&#39;;" value="Nhập từ khóa">
        <button type="submit"><i class="fa fa-search"></i></button>
      </form>
    </div>
 <?php } }?>
  </div>
  
</header>
<div class="clearh5"></div>
<?php echo $this->element('menu');?>	







<div class="clearh5"></div>

<?php echo $content_for_layout; ?>

<div class="clear"></div>
<div class="sendol">
    <div class="sendoltt"><span>Thành lập doanh nghiệp</span>
    </div>
    <div class="sendolc"> 
	<?php $setting = $this->requestAction('/comment/setting') ?>
            <?php foreach($setting as $settings ){  ?>
        <div class="sendollist">
            

			
	<p style="padding-left:5px; padding-top:5px;  color: #4f4444; ">
<b> - Phòng tư vấn 1 </b>
	</p>	
	 <p style="padding-left:5px; padding-top:5px; ">
	  <font style="font-size:13px; ">+ <?php echo $settings['Setting']['kinhdoanh1'] ?></font>
	 </p>
	  <p style="padding-left:5px; padding-top:5px;">
	  <font style="font-size:13px; ">+ <?php echo $settings['Setting']['kinhdoanh2'] ?></font>
	  <a href="skype:minhanh.pma?chat" rel="nofollow">
<img align="absmiddle" style="height:18px;" src="<?php echo DOMAIN;?>/images/skype.png" lt="anh ho tro">
</a>
	 </p>
	 



        </div>
        <div class="sendollist">
            	 <p style="padding-left:5px; padding-top:5px; color: #4f4444; ">
			<b>- Phòng tư vấn 2</b>
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
        </div>
		<?php } ?>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>

<div class="clearh5"></div>

<nav class="naven">
    <div class="menu-en-container">
<ul id="menu-en" class="menu">

 
<?php $menupro1 = $this->requestAction('/comment/menucategory') ?>
   <?php foreach($menupro1 as $menupro1){?>
  <li id="menu-item-13" class="menu-item menu-item-type-post_type menu-item-object-post"><a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro1['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>"> <?php echo $menupro1['Category']['name'];?> </a>

</li>
 <?php } ?>
<li id="menu-item-17" class="menu-item menu-item-type-post_type menu-item-object-post"><a href="<?php echo DOMAIN?>lien-he">Liên hệ</a></li>


</ul>

</div></nav>

<div class="clear"></div>

<footer>
	<div class="foott"><span>Thành lập doanh nghiệp - Thành lập công ty</span><span> - </span><span>Tư vấn doanh nghiệp</span></div>
    <div class="foolink"></div>
    
    
    	<?php echo $this->element('footer');?>
   
   

<div class="clear"></div>
</footer>

</div>


<!-- Shortcodes Ultimate custom CSS - begin -->
<style type="text/css">
.su-spoiler.spoiler_xanh .su-spoiler-title { background-color: #2196F3; color: #FFFFFF }
.su-spoiler.spoiler_xanh .su-spoiler-title .su-spoiler-icon, .su-spoiler.su-spoiler-closed.my-custom-spoiler .su-spoiler-title .su-spoiler-icon { left: 3px; color: #fff; }
.su-spoiler.spoiler_xanh .su-spoiler-content { background-color: #F8F8F8; padding: 15px; }

</style>
<!-- Shortcodes Ultimate custom CSS - end -->


<script>
jQuery(document).ready(function($) {
	$('.dvtop').owlCarousel({
	animateOut: 'fadeOut',
	lazyLoad:true,
	loop: true,
	items:3,
	margin:6,
	nav: true,
	responsiveClass: true,
	navText: [],
	responsive:
	{
		0 : {items:1, mouseDrag: true, touchDrag: true, dots: false},
		480 : {items:2, mouseDrag: true, touchDrag: true, dots: false},
		768 : {items:3},
		1024 : {items:3, mouseDrag: false, touchDrag: false, autoplay: true, autoplayTimeout: 5000}
	}
	});

});
</script>


</body></html>