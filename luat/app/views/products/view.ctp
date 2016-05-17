
<?php 
	 echo $javascript->link('jcarousellite');

?> 




<script src="<?php echo DOMAIN;?>js/jquery.jqzoom-core.js" type="text/javascript"></script>

<link rel="stylesheet" href="<?php echo DOMAIN;?>css/jquery.jqzoom.css" type="text/css">

<script type="text/javascript">

$(document).ready(function() {
	$('.jqzoom').jqzoom({
            zoomType: 'innerzoom',
            preloadImages: false,
            alwaysOn:false
        });
});


</script>

<style>

.ui-state-active {background:#FFFFFF; }
#thumblist {
margin:5px 0px;
overflow:hidden;
}
#thumblist li{
	float:left;
	border:1px solid #dedede;
	width:58px;
	margin-left:5px;
}
.div_img{
	width:260px;
	overflow:hidden;

}
</style>

 <?php if($session->read('lang')==1){?>
 <div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">	
              
 <div id="main-center">
<div id="danhmuccacsanpham" style="line-height:20px;">
    <div id="tieudecacdanhmuc"><?php echo $views['Product']['title'];?></div>
 
        <div class="img" style="margin:5px; float:left;">              
    <div class="clearfix div_img">
	
	<?php if($views['Product']['images']!='') {?>
	
     <a href="<?php echo DOMAINAD;?><?php echo $views['Product']['images'];?>" class="jqzoom" rel='gal1'  title="triumph" > 
            <img src="<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']['images']?>&amp;w=250&amp;zc=1"  title="triumph"  style="border: 4px solid #666;  ">
        </a> 
		<?php } else {
		$ok=0;
		for($i=2;$i<6;$i++) {
		
		if($views['Product']["images$i"]!='') {
		?>
		   <a href="<?php echo DOMAINAD;?><?php echo $views['Product']["images$i"];?>" class="jqzoom" rel='gal1'  title="triumph" > 
            <img src="<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']["images$i"]?>&amp;w=250&amp;zc=1"  title="triumph"  style="border: 4px solid #666;  ">
        </a> 
		
		<?php break; } } } ?>
    
		
		
		
    </div>
	  <div class="clearfix" >
	<ul id="thumblist" class="clearfix" >
		
		<?php if($views['Product']['images']!='') {?>
		<li><a class="zoomThumbActive" href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: '<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']['images']?>&amp;w=250&amp;zc=1',largeimage: '<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']['images']?>&amp;w=250&amp;zc=1'}">
		<img src='<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']['images']?>&amp;w=58&amp;zc=1'></a></li>
		<?php } ?>
		
		<?php 
		for($i=2;$i<6;$i++) {
		if($views['Product']["images$i"]!='') {?>
		<li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: '<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']["images$i"]?>&amp;w=250&amp;zc=1',largeimage: '<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']["images$i"]?>&amp;w=500&amp;zc=1'}"><img src='<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']["images$i"]?>&amp;w=58&amp;zc=1'></a></li>
		
		<?php } } ?>
		
	</ul>
	</div>
	
	
	
	
	
	
	
	

        </div> 
		
        <div class="name" style="padding-left:10px; margin:5px;">
            <span>Thông tin chi tiết: </span><br /><br />
            <div class="detail" style="line-height: 15px !important;">
            <b>Tên sản phẩm:</b>  <?php echo $views['Product']['title'];?><br/>
            <b>Mã sản phẩm:</b>  BA<?php echo $views['Product']['id'];?><br/>
         
            </br>
			<div id="motasanpham" style="text-align:left;">
<?php if(!empty($views['Product']['giakhuyenmai'])) { ?>
<h5>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $views['Product']['id'];?>/<?php echo $views['Product']['alias'];?>.html">Giá: <?php echo number_format( $views['Product']['price'],0);?> VNĐ </a>
</h5>
<h6>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $views['Product']['id'];?>/<?php echo $views['Product']['alias'];?>.html" style="color:red;">Giá khuyến mãi:<?php echo number_format( $views['Product']['giakhuyenmai'],0);?> VNĐ </a>
</h6>
<?php } ?>

<?php if(empty($views['Product']['giakhuyenmai'])) { ?>
<h6>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $views['Product']['id'];?>/<?php echo $views['Product']['alias'];?>.html">Giá: <?php echo number_format( $views['Product']['price'],0);?> VNĐ </a>
</h6>

<?php } ?>
			</div>
			
			
        </div>
            <div class="chitiet"><br />
        













		   </div>
           
		   
		   
		   
		   
		   
		   
       
        <div class="clearfix"></div>
        <div class="noidung" style="width:730px; float:left;">
            <?php echo $views['Product']['content'];?>
			<?php $id = $views['Product']['id']; ?>
        </div>
		</br>
		<!-- AddThis Button BEGIN -->
	<div class="addthis_toolbox addthis_default_style">
			<a class="addthis_button_compact"></a>
			<a class="addthis_counter addthis_bubble_style"></a>
			<a class="addthis_button_google_plusone"></a>
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_preferred_5"></a>
			<a class="addthis_button_preferred_6"></a>
			
		</div>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=xa-50c409c76063356d"></script>
<!-- AddThis Button END -->
    </div>
       





	   
</div> 






<?php echo $html->css('register-news'); ?>
<?php echo $javascript->link('jquery.validate', true); ?>
<style>
.rowPost .col2 {
    float: left;
    margin-right: 5px;
    text-align: left;
    width: 30%;
}

.rowPost .col1 {
    float: left;
    margin-left: 120px;
    margin-right: 5px;
    text-align: left;
    width: 36%;
}
input {
    float: left;

}
</style>

<?php if($sanphamkhac){?> 
<div id="main-center">
<div id="danhmuccacsanpham">
    	
    	<div id="tieudecacdanhmuc">Sản phẩm liên quan</p></div>
		
		
	   
            <?php foreach($sanphamkhac as $pr){?>
<div id="khungsanpham2">
							
							<a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" >
							<!--<img alt="banchay" src="<?php echo DOMAIN;?>images/banchay.png" style=" position: absolute; width:80px;" />-->
							<div id="anhsanpham2">
							 <a id="thumb<?php echo $i;?>" href="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>" class="highslide" onclick="return hs.expand(this)"><img alt="" src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/></a>
							</div>
							</a>
							
								
								
								
								<div id="motasanpham3">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>


							</div>
								

							

							</div>

<?php } ?>
		
	

		<!--
        <div style="float: left; text-align:right;width: 750px; padding-right: 50px; color: black; font-size: 12px;">
         <?php if($paginator->numbers()!=null){?>
            <style>
            a{
             color: green;
            }
            </style>
           
        </div>
		
		 <div class="" style="text-align: right;">
	  <?php
				$paginator->options(array('url' => $this->passedArgs));                                    
				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            }?>
			</div>
			-->
     </div>
	
                                                  
</div>

       	<div class="top">Góp ý</div>
    <div style="margin:10px; ">
    <h2 style="padding-top: 20px;"><u>Góp ý của khách hàng:</u></h2>
	<?php $comment = $this->requestAction('products/khachhangbinhluan/'.$id);?>
                            <?php foreach($comment as $comment ){  ?>
                            <div class="noidung" style="border-bottom: 1px dotted silver; padding: 5px;" >                            
                            <div class="main">
                            <h3><?php echo $comment['Comment']['name'];?> </h3><i>Email:<?php echo $comment['Comment']['email'];?> - ( Ngày: <?php echo date('d-m-Y', strtotime($comment['Comment']['created'])); ?>)</i> <br />
                            
                            <p><?php echo $comment['Comment']['content'];?></p>
                            
                            </div>
                            </div>
                            <?php }?>
                           
           <div id="comment" style="padding:50px 10px;">

                <?php echo $form->create(null, array( 'url' => DOMAIN.'products/add/'.$id,'type' => 'post')); ?>	
                    <h2 ><u>Gửi chia sẻ của bạn:</u></h2>
                    <div style="margin-bottom:6px; margin-top:15px; float:left; width:98%;">
                    <span style="float:left; margin-right:5px;">Họ tên:</span>
					
                    <?php echo $form->input('Comment.name',array( 'label' => '','style'=>'width:200px;height:25px;float:left;','value'=>$this->Session->read('name')));?>
					

                     <span style="float:left; margin-right:6px; margin-left:6px;">Email:</span>
                     <?php echo $form->input('Comment.email',array( 'label' => '','style'=>'width:200px;height:25px;float:left;','value'=>$this->Session->read('email')));?></div>
                     <span style="float:left; margin-right:6px; margin-left:0px;">Nội Dung:</span>
                    <p><?php echo $form->input('Comment.content',array( 'label' => '','rows'=>10,'cols'=>60));?></p>           
                   
                    <div class="rowPost" style="padding-bottom: 45px !important;">
                    <div class="captcha">
                        <label>
                            Nhập mã an toàn</label>(<span class="redfont">*</span>)</div>
                    <div class="inputcaptcha">
                        
                        <div class="col1">
                        
                         <input id="security" class="required" name="security" />     
                               </div>
                               <div class="col2"><img alt="" id="captcha" src="<?php echo DOMAIN?>user/create_image" />
                               </div>
                        <div class="col1" style="padding-top: 20px;">
                         <input style="padding:5px;width: 50px;" type="submit" value="Gửi"/>
                        <input style="padding:5px;width: 70px;" type="reset" value="nhập lại" />
                        </div>
                        
                    </div>
                </div>
  </div>             
                    
                     
                </form>                            
             </div>







</div> 






<?php }?>

















 </div>
 
 
			   
			   
			   
	


 <?php } if($session->read('lang')==2){?>
    <div id="sanphamchitiet">
    <div class="top">Product <?php echo $views['Product']['title_en'];?></div>
    <div id="dssanpham" style="min-height: 732px !important;">
        <div class="img">
                <img src="<?php echo DOMAINAD.'timthumb.php?src='.$views['Product']['images']?>&amp;h=325&amp;w=330&amp;zc=1" />
        </div>
        <div class="name">
            <span>Details : </span><br /><br />
            <div class="detail" style="line-height: 30px !important;">
            <b>Product Name:</b>  <?php echo $views['Product']['title_en'];?><br/>
            <b>Product Code: </b>  <?php echo $views['Product']['id'];?><br/>
            <b>Price:</b> Contact<br/></p>
        </div>
            <div class="chitiet"><br />&nbsp;<br /><br />
            </div>
            <!--<b>Giá sản phẩm:</b>  <?php echo number_format( $views['Product']['price'],3); ?> VNĐ<br/></p>
            </div>
            <div class="chitiet"><a href="<?php echo DOMAIN?>mua-hang/<?php echo $views['Product']['id'];?>"><img src="<?php echo DOMAIN?>images/vietsys_111.jpg"/></a></div><br /><br />
            -->
        </div>
        <div class="noidung">
            <?php echo $views['Product']['content_en'];?>
        </div>
    </div>
                            
</div> 
<?php if($sanphamkhac){?>
<div id="main-center">
<div id="sanphams" >
    	<div class="top">Related Products</div>
        <div class="list_carousels">
            <ul id="foo5">   
            <?php foreach($sanphamkhac as $pr){?>
            <li>
        <div id="dssanpham" align="center">
        	<div class="img" >
            <a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>"><img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=105&amp;w=199&amp;zc=1" width="199" height="105"/></a>
            </div>
            <div class="name" align="center">
            	<h5><a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>"><?php echo $pr['Product']['title_en'];?></a></h5>
                <h6><a href="#tips">Price: <font color="#FF6600">Contact </font></a>
                <!--<h6><a href="#tips">Giá: <font color="#FF6600"><?php echo $pr['Product']['price'];?> VNĐ</font></a></h6>
                <h4><a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>">Detail</a></h4>-->
            </div>
        </div></li><?php }?>                                    
        
        </ul>
        </div>
        <div style="float: left; text-align:right;width: 750px; padding-right: 50px; color: black; font-size: 12px;">
         <?php if($paginator->numbers()!=null){?>
            <style>
            a{
             color: green;
            }
            </style>
            <?php
				$paginator->options(array('url' => $this->passedArgs));                                    
				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            }?>
        </div>
     </div>
    <!--end sanpham2-->                                                  
</div><?php }?>
 <?php }?>