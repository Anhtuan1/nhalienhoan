 <!--hotline-->
   <!-- <div id="hotline">
       <h3>TÌM KIẾM</h3>
      <form action="<?php echo DOMAIN;?>products/search" method="post" style="width: 200px;">
                <select style="width: 185px;margin-left: 10px;margin-top:10px; height: 20px; margin-bottom: 5px;" name="system">
                           <option value="" >Chọn loại sản phẩm</option>
                            <?php $cat = $this->requestAction('/comment/cat') ?>
                            <?php foreach($cat as $Catproduct) {?>
                            <?php if($Catproduct['Catproduct']['parent_id']==null){?>
                             <option value="<?php echo $Catproduct['Catproduct']['id']; ?>"><?php echo $Catproduct['Catproduct']['name']; ?></option>
                             <?php $catcon = $this->requestAction('/comment/catcon') ?>
                             <?php foreach($catcon as $Catproducts) {?>
                             <?php if($Catproducts['Catproduct']['parent_id']==$Catproduct['Catproduct']['id']){?>
                             <option value="<?php echo $Catproducts['Catproduct']['id']; ?>">--<?php echo $Catproducts['Catproduct']['name']; ?></option>
                                <?php $catcons = $this->requestAction('/comment/catcon') ?>
                             <?php foreach($catcons as $Catproductss) {?>
                             <?php if($Catproductss['Catproduct']['parent_id']==$Catproducts['Catproduct']['id']){?>
                             <option value="<?php echo $Catproductss['Catproduct']['id']; ?>">----<?php echo $Catproductss['Catproduct']['name']; ?></option>
                         }
                            <?php }}}}}}?>
                 </select>
                 
                         
                <input class="buttons" type="hidden" id="btnSearch" />
                <input type="image" src="<?php echo DOMAIN;?>images/tk.jpg" style="border: 0; height: 27px; width: 60px; float: right; margin: 5px;"/>
             </form> 
    </div>  -->
                       	

						
						
						
						
						
 <!--hotline-->
 

    <div id="danhmucmodun" style=" background:#FFFFFF;" >
      <div id="tieudemenu5">
Giỏ hàng
</div>



		 <div class="giohang" style="margin-top:5px; text-align:left; width:190px; padding-left:10px; font-size:14px; padding-bottom:5px;">
                <a href="<?php echo DOMAIN?>xem-gio-hang" style="font-weight:600; color:#0a61a6;"> <img src="<?php echo DOMAIN;?>css/images/cart.png" style="height:30px;"/>  </a>
                <?php if(isset($_SESSION['shopingcart'])){ $sl=count($_SESSION['shopingcart']);?>
                Có {<?php echo $sl;?>} sản phẩm
                <?php }else{?>
                Có {0} sản phẩm
                <?php }?>
                </div> 
 </div>
 
 <div id="danhmucmodun" style=" background:#FFFFFF;" >
      <div id="tieudemenu5">
Tìm kiếm
</div>
  <form action="<?php echo DOMAIN;?>products/search" method="post" style="width: 200px;">
                <select style="width: 185px;margin-left: 10px;margin-top:10px; height: 20px; margin-bottom: 5px;" name="system">
                           <option value="" >Chọn loại sản phẩm</option>
                            <?php $cat = $this->requestAction('/comment/cat') ?>
                            <?php foreach($cat as $Catproduct) {?>                         
                             <option value="<?php echo $Catproduct['Catproduct']['id']; ?>">----<?php echo $Catproduct['Catproduct']['name']; ?></option>                         
                            <?php }?>
                 </select>
                 
                         
                <input class="buttons" type="hidden" id="btnSearch" />
                <input type="image" src="<?php echo DOMAIN;?>images/tk.jpg" style="border: 0; height: 27px; width: 60px; float: right; margin: 5px;"/>
             </form> 
</div>
 
  <div id="danhmucmodun" style="margin-top:10px; background:#FFFFFF;" >
	<div id="tieudemenu5">
TIN TỨC
</div>
<?php $congnghemaymoc = $this->requestAction('comment/showtin/230');
 foreach($congnghemaymoc as $tin) { ?>
 <div id="tieudetintucngan">
<a href="<?php echo DOMAIN;?>tin-tuc/chi-tiet-tin/<?php echo $tin['News']['id'];?>/<?php echo $tin['News']['alias'];?>.html"> <img align="absmiddle" src="<?php echo DOMAINAD;?><?php echo $tin['News']['images'];?>" style="margin-right:5px; width:70px; height:40px; margin-bottom:3px;"/><?php echo $tin['News']['title'];?> </a>
 </div>
 <?php } ?>
 </div>
  
	
	
 <div id="danhmucmodun" style="margin-top:5px;" >
      <div id="tieudemenu5">
SẢN PHẨM BÁN CHẠY
</div>
</br>
<?php 
 $pr = $this->requestAction('comment/showsanphambanchay/');
	 foreach($pr as $pr) {
	 ?>
	 
	<div id="khungsanpham" style="height:355px;">
<a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" >
<div id="anhsanpham">
<img src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/>

</div>
</a>
<div id="motasanpham">
<h4>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
</h4>
<?php if(!empty($pr['Product']['giakhuyenmai'])) { ?>
<h5>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo number_format( $pr['Product']['price'],0);?> VNĐ </a>
</h5>
<h6>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo number_format( $pr['Product']['giakhuyenmai'],0);?> VNĐ </a>
</h6>
<?php } ?>

<?php if(empty($pr['Product']['giakhuyenmai'])) { ?>
<h6>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo number_format( $pr['Product']['price'],0);?> VNĐ </a>
</h6>
<h6>
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo number_format( $pr['Product']['price'],0);?> VNĐ </a>
</h6>
<?php } ?>

</div>



</div> 
	 
	 
	 
	 
	 <?php } ?>




</div>	
	
	
	
	
	
		
   	 <div id="danhmucmodun" style=" background:#FFFFFF;" >
      <div id="tieudemenu5">
Quảng cáo
</div>
    
    <?php $advr= $this->requestAction('/comment/advr') ?>
    <?php foreach($advr as $advs1 ){  ?>
    <div id="video">
     <a href="<?php echo $advs1['Advertisement']['link'] ?>" target="_blank"><img src="<?php echo DOMAINAD.$advs1['Advertisement']['images']?>" border="0" width="191px" alt="" style="margin:2px;"/></a>  
     </div> 	
     <?php }?>
 </div>