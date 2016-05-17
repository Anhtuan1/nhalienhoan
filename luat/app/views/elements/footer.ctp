 
  
  
   <div id="footer" style="margin:auto; text-align:left; color:#393939;">
 


     <?php $setting = $this -> requestAction('/comment/setting');?>
<?php foreach($setting as $settings){?>
 
            <div style=""><?php echo $settings['Setting']['footer'];?></div>
           
            <?php }?>
			
		    
	
           </div> 
       
</body>
</html>



