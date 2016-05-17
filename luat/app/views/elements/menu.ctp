
 <?php if($session->read('lang')==1){?>

 <nav class="navtop">
  <label for="show-menu" class="show-menu"><i class="fa fa-bars"></i> Show Menu</label>
  <input type="checkbox" id="show-menu" role="button">
  <ul id="nav-mobile" class="menu"><li id="menu-item-11" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11"><a title="Thành lập doanh nghiệp" href="<?php echo DOMAIN;?>">Trang chủ</a></li>
<?php $menupro1 = $this->requestAction('/comment/menucategory') ?>
   <?php foreach($menupro1 as $menupro1){?>
  <li id="menu-item-13" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-13"><a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro1['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>"> <?php echo $menupro1['Category']['name'];?> </a>
<ul class="sub-menu">
	<?php $menupro2 = $this->requestAction('/comment/submenunew/'.$menupro1['Category']['id']) ?>
   <?php foreach($menupro2 as $menupro2){?>
   <li id="menu-item-189" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-189">
   <a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro2['Category']['id'];?>"> <?php echo $menupro2['Category']['name'];?>   </a>
   
   </li>
   <?php } ?>
</ul>
 <?php } ?>
</li>
<li id="menu-item-17" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-17"><a href="<?php echo DOMAIN?>lien-he">Liên hệ</a></li>
</ul></nav>

			
			
			
    <?php } if($session->read('lang')==2){?>
    	<div id="menus">
              <ul id="nav"><li style="background:none; margin-top:5px; margin-left: 10px;"><img align="absbottom" src="<?php echo DOMAIN?>images/home.png" /></li>
              	<li><a href="<?php echo DOMAIN?>">Home</a></li>                                              
                 <li><a href="<?php echo DOMAIN?>gioi-thieu">About us</a></li>
                 <li><a href="<?php echo DOMAIN?>san-pham">Products</a></li>
                 <li><a href="<?php echo DOMAIN?>tin-tuc">News - Event</a></li>
                 <li><a href="<?php echo DOMAIN?>tuyen-dung">Recruitment</a></li>
                 <li><a href="<?php echo DOMAIN?>lien-he">Contact us</a></li>               
</ul>	            
          </div>
    <?php }?>

