<div style="width:720px; float:right;">

  <form action="<?php echo DOMAIN;?>products/search" method="post" style="width: 720px;" >
   <select style="width: 177px;margin-top:10px; height: 22px; margin-bottom: 5px; color:#666666; line-height:18px; padding:2px 5px; " name="hang">
                           <option value="" >-- Loại --</option>
                            <?php $hangsp = $this->requestAction('/comment/chonmau') ?>
                            <?php foreach($hangsp as $hangsp) {?>                         
                             <option value="<?php echo $hangsp['Manufacturer']['id']; ?>">----<?php echo $hangsp['Manufacturer']['name']; ?></option>                         
                            <?php }?>
                 </select>
 
  <select style="width: 177px;margin-top:10px; height: 22px; margin-bottom: 5px; color:#666666; line-height:18px; padding:2px 5px; " name="system">
                           <option value="" >-- Dòng sản phẩm --</option>
                            <?php $cat = $this->requestAction('/comment/cat') ?>
                            <?php foreach($cat as $Catproduct) {?>                         
                             <option value="<?php echo $Catproduct['Catproduct']['id']; ?>">----<?php echo $Catproduct['Catproduct']['name']; ?></option>                         
                            <?php }?>
                 </select>
           
<input type="text" style="width:228px; height:22px;  margin-left:20px; border:none; margin-top:2px;  color:#444; padding-left:10px; border:1px solid #ccc; color:#666666;"  name="s"; value=""  autocomplete="off"  onkeypress="return quickSearchKeyPress(event);" onfocus="this.value=''";/>

          
                <input class="buttons" type="hidden" id="btnSearch" />
                <input type="image" src="<?php echo DOMAIN;?>images/tk.png" style="border: 0; height: 30px; width:80px; float: right; margin-top: 7px;"/>
         

 </form>


</div>