 <?php if($session->read('lang')==1){?>
<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc"><?php echo $cat1['Manufacturer']['name']?></div>
        <?php $i = 1; $j = 0; $a = array();
		foreach($products as $pr){ $a[$j++] = $pr;?>	
<div id="khungsanpham">
<a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>" data-tooltip="sticky<?php echo $i; ?>" >
<div id="anhsanpham" style="background:url(<?php echo DOMAINAD;?>timthumb.php?src=<?php echo $pr['Product']['images'];?>&h=124&w=168&zc=1) no-repeat center #FFFFFF; ">


</div>
</a>
<div id="motasanpham">
 <a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>" style="font-weight:600;"><?php echo $pr['Product']['title'];?></a>
</br>
<?php if($pr['Product']['loaigia'] == 0) { ?>
<font style="font-weight:600;">Giá: </font> <font style="color:red;"><?php echo number_format( $pr['Product']['price'],0);?> VNĐ </font>
<?php } else { ?>
<font style="font-weight:600;">Giá: </font> <font style="color:red;"><?php echo number_format( $pr['Product']['price'],0);?> VNĐ/1m dài </font>
<?php } ?>
</br>

</div>
<div id="nutchitiet">
<span><a href="<?php echo DOMAIN?>mua-hang/<?php echo $pr['Product']['id'];?>"><img src="<?php echo DOMAIN;?>images/nutmua.jpg"></a> </span>

</div>




</div>


<?php $i++; } ?>

<div id="mystickytooltip" class="stickytooltip">

	 
	<?php  
$i= 1;
	 foreach($a as $pr1) { ?>
	<div id="sticky<?php echo $i;?>" class="atip" >	
	<img src="<?php echo DOMAINAD; ?><?php echo $pr1['Product']['images']; ?>" style="max-width:500px;"/>
	</div>
	
	<?php $i++; } ?>
</div>

        <div style="float: left; text-align:right;width: 730px; padding:10px; color:#FFFFFF; font-size: 16px;">
         <?php if($paginator->numbers()!=null){?>
            <style>
            a{
             color:#FFFFFF;
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
