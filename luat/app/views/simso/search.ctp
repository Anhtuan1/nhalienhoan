
<div id="main-center">
<div id="danhmuccacsanpham">
    	<div id="tieudecacdanhmuc">Kết quả tìm kiếm</font></div>
        <?php if($products){?>
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

        
        <?php }else echo "Không tìm thấy sản phẩm nào";?>
	
		
		</div>
      
        <div style="float: left; text-align:right;width: 572px;color: black; font-size: 12px;">
       
            	<p style="text-align:right;">
		<?php
				$paginator->options(array('url' => $this->passedArgs));                                    
				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            ?>
			</p>
            <div class="page">
          </div>
        </div>  
		
    </div><!--end newstop-->
