 <?php if($session->read('lang')==1){?>
 <div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">	
<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc"><h1 style="font-size:16px;"> <?php echo $cat['Catproduct']['name']?> </h1></div>
       
<?php echo $cat['Catproduct']['mota']?>
	   <?php 
		$i = 0; $j = 0; $a = array();
		foreach($products as $pr){ $a[$j++] = $pr; ?>	
<div id="khungsanpham2">
							
			
						
							<div id="anhsanpham2">
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html">

							 <img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=183&amp;w=236&amp;zc=1" alt="<?php echo $pr['Product']['title'];?>"/>
							 </a>
							</div>
							
							
								
								
								
								<div id="motasanpham3">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>
							<h5>
							Mã SP: BA<?php echo $pr['Product']['id'];?>
							</h5>
							</h4>

							</div>
								

							

							</div>
						

<?php  $i++; ?>
<?php } ?>


          <div >
						 <?php echo $this->element('a_phantrang') ; ?>
						</div>
               </div>             
         <!--end sanpham-->      
</div>    
<div>
</br> 
		
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
