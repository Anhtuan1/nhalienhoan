
 <?php if($session->read('lang')==1){?>

 
	<div id="menus">
              <ul id="nav" class='menu1'>
              	<li><a href="<?php echo DOMAIN?>">Trang chủ</a></li>
			  		
	


		<li>
		<a href="<?php echo DOMAIN;?>danh-sanh-tin/271"> Giới thiệu </a>
				</li>
			<li>
		<a href="<?php echo DOMAIN;?>san-pham"> Sản phẩm </a>
				</li>
	
			 <?php $menupro1 = $this->requestAction('/comment/menucategory') ?>
   <?php foreach($menupro1 as $menupro1){?>
   <li><a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro1['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>"> <?php echo $menupro1['Category']['name'];?> </a>
   <ul class='menu2'>
   <?php $menupro2 = $this->requestAction('/comment/submenunew/'.$menupro1['Category']['id']) ?>
   <?php foreach($menupro2 as $menupro2){?>
   <li>
   <a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro2['Category']['id'];?>"> <?php echo $menupro2['Category']['name'];?>   </a>
   
   </li>
   <?php } ?>
   </ul>
   
   
   </li>
   
   
   <?php } ?>

                            
                 <li style="border-right:none;"><a href="<?php echo DOMAIN?>lien-he">Liên hệ</a></li>
				
			
                                
</ul>		


</div>


			
			
			
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

