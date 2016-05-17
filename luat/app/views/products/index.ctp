
<style>
.m6 { 
color:#000;
    
	background:#F3F3F3;
	border-top:2px solid #404040;
}

</style>
<?php if($session->read('lang')==1){?>
<div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">	

<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc">Sản phẩm</div>
        <?php 
		 $i=0; $j=0; $a = array();
		foreach($products as $pr){  $a[$j++]=$pr ;?>	
<div id="khungsanpham2">
							
							<div id="anhsanpham2">
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" data-tooltip="sticky<?php echo $i; ?>" ><img alt="" src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/></a>
							</div>
							
								
								
								
								<div id="motasanpham3">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>


							</div>
								

							

							</div>
							
						

<?php  $i++; ?>
<?php } ?>

<div id="mystickytooltip" class="stickytooltip">
<?php 
 $i= 0; $j=0; ?>
	
	<?php  

	 foreach($a as $pr1) { ?>
	<div id="sticky<?php echo $i;?>" class="atip" >	
	<div id="hovernoidung" >
	<div id="nenvovanqua">	<?php echo $pr1['Product']['title']; ?> </div>
	<div style="width:95%; padding:5px; color:#000;">
	
	 <img src="<?php echo DOMAINAD;?><?php echo $pr1['Product']['images'];?>" style="max-width:470px;"/>

	
	</div>
	
	</div>
	
	</div>
	
	<?php $i++; } ?>


	</div>








      <div style="float: left; text-align:right;width: 579px; padding-right: 50px; color:#000; font-size: 16px;">
         <?php if($paginator->numbers()!=null){?>
            <style>
            a{
             color:#000;
            }
			
			.current {background:#FD8008; padding:0px 5px; border-radius:3px; }
            </style>
            <?php
				$paginator->options(array('url' => $this->passedArgs));
                echo "Trang: ";                                    
				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            }?>
        </div>
               </div>             
         <!--end sanpham-->   







		 
</div>   


 </div>
 <?php } if($session->read('lang')==2){?>
 <div id="main-center">
	
    <div id="sanphams">
    	<div class="top">Product</div>
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
         <!--end sanpham-->  
 
</div
 <?php }?>
