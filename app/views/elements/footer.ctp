 
  
  
   <div id="footer" style="margin:auto; text-align:left; color:#393939;">
 


     <?php $setting = $this -> requestAction('/comment/setting');?>
<?php foreach($setting as $settings){?>
 
            <div style="color:#393939; font-weight:bold; float:left;"><?php echo $settings['Setting']['footer'];?></div>
           
            <?php }?>
			
		    <div style="color:#A3A3A3; font-weight:bold; width:300px; float:right; line-height:40px; "> Chia sẻ: 
			<a rel="nofollow" href="https://www.facebook.com/khuvandonglienhoan"> <img src="<?php echo DOMAIN;?>css/images/mang1.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" /> </a>
			<a rel="nofollow" href="https://plus.google.com/u/1/110670176604657652246/posts"><img src="<?php echo DOMAIN;?>css/images/mang2.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" /> </a>
			<a rel="nofollow" href="https://twitter.com/yeuthuong83"> <img src="<?php echo DOMAIN;?>css/images/mang3.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" /> </a>
			
			</div>
	
           </div> 
       
</body>
</html>



