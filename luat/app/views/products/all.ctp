
<div id="main-center">              	
        <div id="sanphams" style="height: 1335px;">
    	<div class="top"><font style="width:140px;color:#000000; background:#FFFFFF;">SẢN PHẨM</font></div>
        <div style="min-height: 1335px;">
        <?php foreach($products as $pr){?>
        <div id="dssanpham" align="center" >             
        	<div class="img"  id="yahoo" >
            <a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>" title="<p align='center'> <img src='<?php echo DOMAINAD.$pr['Product']['images']?>'/></p>"><img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=113&amp;w=168&amp;zc=1" width="180" height="200"/></a>
            </div>
            <div class="name" align="center">
            	<h5><a href="<?php echo DOMAIN;?>chi-tiet-san-pham/<?php echo $pr['Product']['id'];?>"><?php echo $pr['Product']['title'];?></a><br />
             
                </h5>
                <h6><p>Giá: <?php echo number_format( $pr['Product']['price'],3); ?> VNĐ </p>
				<h6><p>Giá ngoại tệ: <?php echo number_format( $pr['Product']['giausd'],0); ?> USD </p>
				<p style="color:red;">Giá KM: <?php echo number_format( $pr['Product']['giakhuyenmai'],3); ?> VNĐ </p>
            
                <a href="<?php echo DOMAIN?>mua-hang/<?php echo $pr['Product']['id'];?>" style="float:left; margin-top:3px;"><img src="<?php echo DOMAIN?>images/datmua.jpg"/></a>
               </h6>                
            </div>
        </div><?php }?>
      
       <div style="float: left; text-align:right;width: 572px;color: black; font-size: 12px;">
         <?php if($paginator->numbers()!=null){?>
            
            <div class="page" style="text-align: right;">
            <?php
				$paginator->options(array('url' => $this->passedArgs));                                    
				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            }?></div> 
				</div>
        </div>  
    </div> 
  </div> 