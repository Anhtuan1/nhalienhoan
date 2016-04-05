<?php if($session->read('lang')==1){?>
<div id="main-center">              	
    <div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc">Sim số</div>

            <style>
           #lo tr td{
    text-align: center;
    color: #000;
    
}

#lo thead td{
    background: #6b6b6b;
    height: 30px;
	font-weight:600;
}
#lo tbody td{
    background: #d6d6d6;
    height: 27px;
}
.xyz0 {  font-weight:600; background:#D6D6D6 !important;}
 .xyz1 {  font-weight:600; background:#F0F0F0 !important;}           
            </style>
            
            <table id="lo" style="width: 735px; margin-top:10px;">
            <thead>
              <tr style="background:#6B6B6B; height:30px;">
                <th style="width: 5%; ">STT</th>
                <th style="width: 25%;">Số</th>
                <th style="width: 25%;">Giá</th>
                <th style="width: 35%;">Mạng</th>
                <th style="width: 15%;">Đặt mua</th>
                
              
              </tr>
            
            </thead>
             <tbody>
             <?php $d=1;   foreach($products as $sp){ ?>
                <tr>
                <td class="xyz<?php echo $d%2 ;?>"><?php echo $d?></td>
                <td class="xyz<?php echo $d%2 ;?>"><font style="color:#044BA5;"> <?php echo $sp['Video']['so']?> </font></td>
                <td class="xyz<?php echo $d%2 ;?>"><?php echo number_format($sp['Video']['price']);?> (VND)</td>
                <td class="xyz<?php echo $d%2  ;?>"><?php echo $sp['Video']['mang']?></td>
                <td class="xyz<?php echo $d%2 ;?>"><a href="<?php echo DOMAIN?>lien-he">Đặt mua</a></td>

                </tr>
               <?php $d++?>
             <?php }?>
             </tbody>
            
            </table>
            








      <div style="float: left; text-align:right;width: 579px; padding-right: 50px; color:#FFFFFF; font-size: 16px;">
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
