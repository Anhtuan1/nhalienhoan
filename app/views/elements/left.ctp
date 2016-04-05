	<div id="danhmucmodunchinh" >
<div id="tieudemenu9">
Khu vui chơi liên hoàn
</div>
	
	
<div id ="menu2">


 <div class="category-product">
            <div class="arrowsidemenu">
                 <?php
				    $categoryproduct = $this->requestAction('/comment/submenuproduct/144');
					$i=0;
				    foreach($categoryproduct as $categoryproduct){
				 ?>
                <div class="menuheaders" headerindex="<?php echo $i;?>h"><a href="<?php echo DOMAIN;?>danh-sach-san-pham/<?php echo $categoryproduct['Catproduct']['id'];?>/<?php echo $categoryproduct['Catproduct']['alias'];?>.html"><?php echo $categoryproduct['Catproduct']['name'];?></a></div>
                 <ul class="menucontents" contentindex="<?php echo $i;?>c" style="display: none;">
                    <?php
                     $submenuproduct = $this->requestAction('/comment/submenuproduct/'.$categoryproduct['Catproduct']['id']);
                     foreach($submenuproduct as $submenuproduct){
					 if($submenuproduct['Catproduct']['parent_id']==$categoryproduct['Catproduct']['id']){
                    ?>
                    <li>
                        <a href="<?php echo DOMAIN;?>danh-sach-san-pham/<?php echo $submenuproduct['Catproduct']['id'];?>/<?php echo $submenuproduct['Catproduct']['alias'];?>.html">
                         <?php echo $submenuproduct['Catproduct']['name'];?>
                        </a>
                    </li>
                    <?php }}?> 
                  </ul>
                 <?php $i++;}?>
            </div>
        </div>
</div>

	
	
</div>
	 

	  <div id="danhmucmodun" >
      <div id="tieudemenu5">
Tìm kiếm
</div>

</br>
 <div id="timkiemthongtin" style="background:url(<?php echo DOMAIN;?>css/images/thongtintimkiem.png) no-repeat;height:22px; width:172px; margin:auto;  padding-left:10px;">
		
		<form method="post" id="check_form" action="<?php echo DOMAIN; ?>products/search" >
				<input type="text" style="width:140px; height:21px;   border:none; color:#A8A8A8; background:none; float:left;font-size:11px;"  name="s"; value="Tìm sản phẩm..."  autocomplete="off"  onkeypress="return quickSearchKeyPress(event);" onfocus="this.value=''";/>
				 
				 </form>
		
		
		</div>
</br>
</div>

<div id="danhmucmodun">
      <div id="tieudemenu5">
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
	  <a href="skype:minhanh.pma?chat" rel="nofollow">
<img align="absmiddle" style="height:18px;" src="http://nhalienhoan.vn/images/skype.png" lt="anh ho tro">
</a>
	 </p>
	 <p style="padding-left:5px; padding-top:5px;">
	  <font style="font-size:13px; ">+ Mr Điệp : 0976 613 863</font>
	  <a href="skype:tiepmkt2605?chat" rel="nofollow">
<img align="absmiddle" style="height:18px;" src="http://nhalienhoan.vn/images/skype.png" lt="anh ho tro">
</a>
	 </p>
	  <p style="padding-left:5px; padding-top:5px;">
	  <font style="font-size:13px; ">+  Ms. Thu  : 0969 543 582</font>
	  <a href="skype:sale.baoanh?chat" rel="nofollow">
<img align="absmiddle" style="height:18px;" src="http://nhalienhoan.vn/images/skype.png" lt="anh ho tro">
</a>
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
  
<div id="danhmucmodun" >
<div id="tieudemenu5">
Tin tức 
</div>


<div id="noidungtintucnoibat" style="padding-top:5px;">
						<?php $thongtin = $this->requestAction('comment/thongtintintucngoai') ?>
	<ul><?php foreach($thongtin as $value) { ?>				
                        	                	
                         
                            	
								<li style="margin-left:0px; width:195px;  height:62px; padding-left:2px;"><img src="<?php echo DOMAINAD; ?><?php echo  $value['News']['images'];?>" style="height:55px; width:55px; float:left; margin-right:5px; border:2px solid #e7cbad;" alt="<?php echo $value['News']['title'];?>"><span style="margin-left:2px;"><a href="<?php echo DOMAIN;?>tin/<?php echo $value['News']['id'];?>/<?php echo  $value['News']['alias'];?>.html" style="width:100px; margin-left:2px; "><?php echo $value['News']['title'];?> </a> </span></li>                               
                               <?php } ?>
                            </ul>
 </div>                       




</div>
	  
	  

	
			