 <?php if($session->read('lang')==1){?>
 <div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">	
<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc">BÌNH NƯỚC NÓNG</div>
        <?php 
		$i = 1; $j = 0; $a = array();
		foreach($products as $pr){ $a[$j++] = $pr; ?>	
<div id="khungsanpham2" class="duongke<?php echo $i;?>">
							<?php if(!empty($pr['Product']['phantram'])) { ?>
							<img alt="banchay" src="<?php echo DOMAIN;?>css/images/banchay.png" style=" position: absolute; width:80px; margin-left:-123px;" />
							<div  class='phantramgiamgia'>							
							Giảm	<?php echo $pr['Product']['phantram'];?>
							</div>

							<?php } ?>
							<a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" >
							<!--<img alt="banchay" src="<?php echo DOMAIN;?>images/banchay.png" style=" position: absolute; width:80px;" />-->
							<div id="anhsanpham2">
							<img alt="" src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/>
							</div>
							</a>
							
							<div id="motasanpham2">
								<?php $tenhang = $this->requestAction('comment/tenhang/'.$pr['Product']['manufacturer']);
							foreach($tenhang as $tenhang) {
							?>
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>"><?php echo $tenhang['Manufacturer']['name'];?></a>
							</h4>
								<?php } ?>
								
								
								<div id="motasanpham3" class="chiechop">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>

							<?php if(!empty($pr['Product']['giakhuyenmai'])) { ?>
							
							<h6>
							  <?php echo number_format( $pr['Product']['price'],0);?> VNĐ 
							</h6>
							<?php } ?>

							<?php if(empty($pr['Product']['giakhuyenmai'])) { ?>
							
							<h6>
							  <?php echo number_format( $pr['Product']['price'],0);?> VNĐ 
							</h6>
							<?php } ?>

							</div>
								
								
								
							</div>
						
					
							
					
							
							

							</div>

<?php $i++; ?> 
<?php } ?>
          <div >
						 <?php echo $this->element('a_phantrang') ; ?>
						</div>
               </div>             
         <!--end sanpham-->      
</div>    




 </div>
			 

 <?php } if($session->read('lang')==2){?>
 <div id="main-center">              	
    <div id="sanphams" style="min-height: 680px !important;">
    	<div class="top"><?php echo $cat['Catproduct']['name_en']?></div>
        <?php foreach($products as $pr){?>	
        <div id="dssanpham" align="center">
        	<div class="img" >
            <a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>"><img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=105&amp;w=199&amp;zc=1" width="199" height="105"/></a>
            </div>
            <div class="name" align="center">
            	<h5><a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>"><?php echo $pr['Product']['title_en'];?></a></h5>
                <h6><a href="#tips">Price: <font color="#FF6600">Contact </font></a>
                <!--<h6><a href="#tips">Giá: <font color="#FF6600"><?php echo number_format( $pr['Product']['price'],3); ?> VNĐ</font></a></h6>-->
                <h4><a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>">Detail</a></h4>
            </div>
        </div>
        <?php }?> 
        <div style="float: left; text-align:right;width: 750px; padding-right: 50px; color: black; font-size: 12px;">
         <?php echo $this->element('a_phantrang') ; ?>
        </div>
    </div>                          
         <!--end sanpham-->      
</div>  
 <?php }?>
