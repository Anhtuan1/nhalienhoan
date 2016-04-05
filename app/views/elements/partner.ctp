
    <div id="title">
 <?php if($session->read('lang')==1){?>

			        <div id="doitac1">
					
			  
<div style="width:950px; margin:7px 15px 0px 15px; line-height:30px; color:#2284E7; background:#fff; font-weight:700; padding-left:20px;"> SẢN PHẨM MỚI </div>

			<?php 
	 echo $javascript->link('jcarousellite');

?> 
<div class="carousel" style="width:1000px; border:1px solid #ccc; background:#fff; margin-left:15px; text-align:center; " >
	  
	   <ul>
	  
                        <?php $spm= $this->requestAction('/comment/sanphammoi') ?>
                        <?php foreach($spm as $spm ){  ?>
	   
	   <li>	
	  
	   <a  rel="nofollow" href="<?php echo DOMAIN;?>sp/<?php echo $spm['Product']['id'];?>/<?php echo $spm['Product']['alias'];?>.html" target="_blank"> <img alt="<?php echo $spm['Product']['title'];?>" src="<?php echo DOMAINAD;?><?php echo $spm['Product']['images'];?>" style="max-height:175px; width:235px;  margin-left:2px; margin-bottom:10px;"/></a> 
		
	
			 <a href="<?php echo DOMAIN;?>sp/<?php echo $spm['Product']['id'];?>/<?php echo $spm['Product']['alias'];?>.html"><b> <?php echo $spm['Product']['title'];?> </b></a>
						
	   </li>
	   <?php
	   }
	   ?>
	   
	   </ul>
	  </div>
	  
	  
	   <script type="text/javascript">
        $(document).ready(function() {
        $(".carousel").jCarouselLite({
			btnNext: "#next",
			btnPrev: "#pre",
			mouseWheel: true,
			visible: 4,
			scroll: 1,
			liWidth: 242,
			liHeight: 230,
			circular: true,
			speed: 2000,
			auto: 3000
			});
			   $(".carousel2").jCarouselLite({
			btnNext: "#next",
			btnPrev: "#pre",
			mouseWheel: true,
			visible: 3,
			scroll: 1,
			liWidth: 245,
			liHeight: 240,
			circular: true,
			speed: 2000,
			auto: 3000
			});
			
			
			
			
				$("#signupForm").validate({
		rules: {
				password: {
				required: true,
				minlength: 5
			},
			
			email: {
				required: true,
				email: true
			},
			
			agree: "required"
		},
		messages: {
				password: {
				required: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px;' >Xin vui lòng nhập password !</span>",
				minlength: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px; ' > password lớn hơn 5 ký tự !</span>"
			},
			
			email:{
						required: "<br> <span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px;margin:65px; ' >Xin vui lòng nhập Email</span> ",
                        email: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px; ' > Email không đúng !"

			}
		}
	});
			
			
			
			
			
			
			
			
			
			
		});
		
		</script>
		
		
		<script type="text/javascript" src="<?php echo DOMAIN;?>js/jquery.nivo.slider.js"></script>

</div>
	
	
	
	
	
	
	
	
	
	
    <?php } if($session->read('lang')==2){?>
<div id="doitactieude" style="height:30px; border-bottom:2px solid #CCCCCC; width:965px;  margin:auto; line-height:30px; font-weight:600; color:#234898;"> Partners</div>
			        <div id="doitac1">
			<?php 
	 echo $javascript->link('jcarousellite');

?> 
<div class="carousel" style="width:1000px; " >
	  
	   <ul>
	   <?php $result = mysql_query("SELECT * FROM partners WHERE ORDER BY 'id' DESC");
	   while($row = mysql_fetch_array($result)){ 
	   ?>
	   
	   <li>	<a href="<?php echo $row['website'];?>" target="_blank"> <img src="<?php echo DOMAINAD; ?>/<?php echo $row['images'];?>" style="height:85px; width:128px;  margin-top:8px; margin-left:2px; border:1px solid #CCCCCC; border-radius:5px; " alt="<?php echo $row['name'];?>"/></a>   </li>
	   <?php
	   }
	   ?>
	   
	   </ul>
	  </div>
	  
	  
	   <script type="text/javascript">
        $(document).ready(function() {
        $(".carousel").jCarouselLite({
			btnNext: "#next",
			btnPrev: "#pre",
			mouseWheel: true,
			visible: 7,
			scroll: 1,
			liWidth: 139,
			liHeight: 100,
			circular: true,
			speed: 2000,
			auto: 3000
			});
			
			
			
			
				$("#signupForm").validate({
		rules: {
				password: {
				required: true,
				minlength: 5
			},
			
			email: {
				required: true,
				email: true
			},
			
			agree: "required"
		},
		messages: {
				password: {
				required: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px;' >Xin vui lòng nhập password !</span>",
				minlength: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px; ' > password lớn hơn 5 ký tự !</span>"
			},
			
			email:{
						required: "<br> <span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px;margin:65px; ' >Xin vui lòng nhập Email</span> ",
                        email: "<br><span style='color:#FF0000; font-family:Arial, Helvetica, sans-serif; font-size:11px;margin:65px; ' > Email không đúng !"

			}
		}
	});
			
			
			
			
			
			
			
			
			
			
		});
		
		</script>
		
		
		

</div>
	
	
	
    <?php }?>	
    </div>
                 