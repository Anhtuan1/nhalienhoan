 <?php if($session->read('lang')==1){?>
 <div id="left">
               <?php echo $this->element('left');?>
               </div>
			   
   		       <div id="main"  style="float:left;">	

<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc"><?php echo $cat1['Manufacturer']['name']?></div>
        <?php $i = 1; $j = 0; $a = array();
		foreach($products as $pr){ $a[$j++] = $pr;?>	
<div id="khungsanpham2">
							<?php if(!empty($pr['Product']['newpro'])) { ?>
							<img alt="banchay" src="<?php echo DOMAIN;?>css/images/new.png" style=" position: absolute; width:71px; margin-left:42px;" />
							

							<?php } ?>
							<a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" >
							<!--<img alt="banchay" src="<?php echo DOMAIN;?>images/banchay.png" style=" position: absolute; width:80px;" />-->
							<div id="anhsanpham2">
							<img alt="" src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/>
							</div>
							</a>
							
								
								
								
								<div id="motasanpham3">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>

							<?php if(!empty($pr['Product']['giakhuyenmai'])) { ?>
							<h5>
							  <?php echo number_format( $pr['Product']['price'],0);?> VNĐ 
							</h5>
							<h6 style="color:#FF7316;">
							  <?php echo number_format( $pr['Product']['giakhuyenmai'],0);?> VNĐ 
							   <a id="thumb<?php echo $i;?>" href="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>" class="highslide" onclick="return hs.expand(this)">
							  <img align="absmiddle" alt="room" src="<?php echo DOMAIN;?>css/images/room.png" style="margin:0px 10px 0px 20px;"/>
							  </a>
							</h6>
							<?php } ?>

							<?php if(empty($pr['Product']['giakhuyenmai'])) { ?>
							
							<h6>
							  <?php echo number_format( $pr['Product']['price'],0);?> VNĐ 
							  <a id="thumb<?php echo $i;?>" href="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>" class="highslide" onclick="return hs.expand(this)">
							  <img align="absmiddle" alt="room" src="<?php echo DOMAIN;?>css/images/room.png" style="margin:0px 10px 0px 20px;"/>
							  </a>
							</h6>
							<?php } ?>

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
        <div style="float: left; text-align:right;width: 750px; padding-right: 50px; color:#FFFFFF; font-size: 14px;">
         <?php if($paginator->numbers()!=null){?>
            <style>
            a{
             color: #FFFFFF;
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
</div>  
 <?php }?>
