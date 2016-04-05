<?php echo $form->create(null, array( 'url' => DOMAINAD.'products/edit','type' => 'post','name' => 'adminForm', 'inputDefaults' => array('label' => false,'div' => false))); ?>
<br />
<div id="khung">
	<div id="main">
		<div class="toolbar-list" id="toolbar">
			<ul>
				<li id="toolbar-new">
					<a href="javascript:void(0);" onclick="javascript:document.adminForm.submit();" class="toolbar">
                        <span class="icon-32-save"></span>
                        Lưu
					</a>
                </li>
                <li id="toolbar-refresh">
                    <a href="javascript:void(0);" class="toolbar" onclick="javascript:document.adminForm.reset();">
                    <span class="icon-32-refresh">
                    </span>
                    Reset
                    </a>
                </li>
                <li class="divider"></li>
                <li id="toolbar-help">
                    <a href="#messages" rel="modal" class="toolbar">
                        <span class="icon-32-help"></span>
                        Trợ giúp
                    </a>
                </li>
                <li id="toolbar-unpublish">
                    <a href="<?php echo DOMAINAD?>products" class="toolbar">
                        <span class="icon-32-cancel"></span>
                        Hủy
                    </a>
                </li>
            </ul>
            <div class="clr"></div>
        </div>
		<div class="pagetitle icon-48-nhomtin"><h2>Quản lý sản phẩm</h2></div>
		<div class="clr"></div>
	</div>
</div>
<div class="content-box"><!-- Start Content Box -->
    <div class="content-box-header">
        <h3>Sửa sản phẩm</h3>
        <ul class="content-box-tabs">
            <li><a href="#tab1" class="default-tab">Sửa</a></li> <!-- href must be unique and match the id of target div -->
            <li><a href="#tab2"></a></li>
        </ul>
        <div class="clear"></div>
    </div> <!-- End .content-box-header -->
    <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
        	<table class="input">
               	<tr>
                   	<td width="120" class="label">Tên sản phẩm:</td>
                    <td>
                    <?php echo $this->Form->input('Product.title',array('class'=>'text-input medium-input datepicker','maxlength' => '250','onchange' => 'get_alias()','id' => 'idtitle'));?>
                    </td>
                </tr>
                <tr>
                   	<td width="120" class="label">Mã sản phẩm:</td>
                    <td>
                    <?php echo $this->Form->input('Product.code',array('class'=>'text-input medium-input datepicker','maxlength' => '250','style' => 'width:200px !important'));?>
                    </td>
                </tr> 
                <!--<tr>
                   	<td width="120" class="label">Tên sản phẩm: (Anh)</td>
                    <td>
                    <?php echo $this->Form->input('Product.title_en',array('class'=>'text-input medium-input datepicker','maxlength' => '250'));?>
                    </td>
                </tr>-->
                <tr>
                  	<td class="label">Liên kết tĩnh:</td>
                    <td>
                    <?php echo $this->Form->input('Product.alias',array('class'=>'text-input alias-input datepicker','maxlength' => '250','id' => 'idalias'));?>
                    <img width="16" height="16" alt="" onclick="get_alias();" style="cursor: pointer; vertical-align: middle;" src="<?php echo DOMAINAD; ?>images/refresh.png">
                    </td>
                </tr><!--
               <tr>
                   	<td width="120" class="label">Lứa tuổi</td>
                    <td>
                    <?php echo $this->Form->input('Product.luatuoi',array('class'=>'text-input medium-input datepicker','maxlength' => '250','onchange' => 'get_alias()','id' => 'idtitle'));?>
                    </td>
                </tr>-->
                <tr>
                  	<td class="label">Thuộc danh mục:</td>
                    <td><?php echo $this->Form->input('catproduct_id',array('type'=>'select','options'=>$list_cat,'empty'=>'Chọn danh mục','class'=>'small-input','label'=>''));?></td>
                </tr>
				
                <tr>
                	<td class="label"></td>
                		<td>
                		<?php echo $this->Form->input('Product.newpro',array('type'=>'checkbox','style'=>'float:left; margin-left:10px;','label'=>'Sản phẩm mới'));?>
                        <br />
                        <?php echo $this->Form->input('Product.sptieubieu',array('type'=>'checkbox','style'=>'float:left; margin-left:10px;','label'=>'Sản phẩm tiêu biểu'));?>
                	<br />
					<?php echo $this->Form->input('Product.spkhuyenmai',array('type'=>'checkbox','style'=>'float:left; margin-left:10px;','label'=>'Sản phẩm khuyến mại'));?>

                	<br />   
					<?php echo $this->Form->input('Product.spbanchay',array('type'=>'checkbox','style'=>'float:left; margin-left:10px;','label'=>'Sản phẩm bán chạy'));?>

                	<br />  						
                	</td>
                </tr>
                 <!--<tr>
                   	<td width="120" class="label">Kích cỡ sản phẩm:</td>
                    <td>
                    <?php echo $this->Form->input('Product.kichthuoc',array('class'=>'text-input medium-input datepicker','maxlength' => '250','style' => 'width:200px !important'));?>
                    </td>
                </tr>--> 
               <!--
               	<tr>
                  	<td class="label">Chất liệu</td>
                    <td><?php echo $this->Form->input('material',array('type'=>'select','options'=>$list_cat4,'empty'=>'Chọn chất liệu ','class'=>'small-input','label'=>''));?></td>
                </tr>
				<tr>
                  	<td class="label">Kích thước</td>
                    <td><?php echo $this->Form->input('origin',array('type'=>'select','options'=>$list_cat5,'empty'=>'Chọn kích thước','class'=>'small-input','label'=>''));?></td>
                </tr>
				<tr>
                  	<td class="label">Kiểu dáng</td>
                    <td><?php echo $this->Form->input('style',array('type'=>'select','options'=>$list_cat6,'empty'=>'Chọn kiểu dáng','class'=>'small-input','label'=>''));?></td>
                </tr>-->
					
                <tr>
                   	<td width="120" class="label">Giá sản phẩm:</td>
                    <td>
                    <?php echo $this->Form->input('Product.price',array('class'=>'text-input medium-input datepicker','maxlength' => '250','onchange' => 'get_gia()','style' => 'width:200px !important','id' => 'idgia'));?>
                    </td>
                </tr>
				<!--
				 <tr>
                   	<td width="120" class="label">Giá bán buôn:</td>
                    <td>
                    <?php echo $this->Form->input('Product.pricebb',array('class'=>'text-input medium-input datepicker','maxlength' => '250','style' => 'width:200px !important'));?>
                    </td>
                </tr>		
               <tr>
                   	<td width="120" class="label">Thuộc khoảng giá</td>
                    <td>
                    <?php echo $form->select('Product.khoanggia',$gia,array('id' => 'phantram','onchange' => 'get_gia()'));?>
                    </td>
                </tr> -->

				 <tr>
                  	<td class="label">Giá khuyến mãi:</td>
                    <td>
                    <?php echo $this->Form->input('Product.giakhuyenmai',array('class'=>'text-input alias-input datepicker','maxlength' => '250','id' => 'idgiakhuyenmai'));?>
                    <img width="16" height="16" alt="" onclick="get_gia();" style="cursor: pointer; vertical-align: middle;" src="<?php echo DOMAINAD; ?>images/refresh.png">
                    </td>
                </tr>
				 	<tr>
                   	<td width="120" class="label">Phần trăm: </td>
                    <td>
                    <?php echo $this->Form->input('Product.phantram',array('class'=>'text-input medium-input datepicker','maxlength' => '250','onchange' => 'get_alias()','id' => 'idtitle'));?>
                    </td>
                </tr>
               <tr>
                    <td class="label">Hình ảnh cũ:</td>
                    <td><img src="<?php echo DOMAINAD?><?php echo $edit['Product']['images']?>" width="200"/></td>
                </tr>
                <tr>
                  	<td class="label">Ảnh sản phẩm 1:</td>
                    <td>
                        <?php echo $this->Form->input('Product.images',array('class'=>'text-input image-input datepicker','name' => 'userfile'));?> &nbsp;<font color="#FF0000"> <a href="javascript:window.open('<?php echo DOMAINAD; ?>upload.php','userfile','width=500,height=300');window.history.go(1)" >[ upload ]</a> </font><font color="#FF0000">*</font>(jpg, jpeg, gif, png)
                    </td>
                    <!--<td>
                    <?php echo $this->Form->input('Product.images',array('class'=>'text-input image-input datepicker','id' => 'xFilePath'));?>
                    	<input type="button" value="Chọn ảnh" onclick="BrowseServer();" class="button" />
                    </td>-->
                </tr>
				
				
				<?php for($i=2; $i<6;$i++) {?>
				 <tr>
                  	<td class="label"> Ảnh sản phẩm <?php echo $i?>:</td>
                    <td>
                    <?php echo $this->Form->input("Product.images$i",array('class'=>'text-input image-input datepicker','name' => "userfile$i"));?><a href="javascript:window.open('<?php echo DOMAINAD; ?>upload_muti_resize.php?stt=<?php echo $i?>','userfile<?php echo $i?>','width=500,height=300');window.history.go(1)" ><input type="button" value="Chọn ảnh" class="button" /></a>
                    	
                    </td>
                </tr>
				<?php } ?>
				
                <tr>
                	<td class="label">Tóm tắt (Tiếng Việt)</td>
                    <td>
					 <?php  echo $this->Form->input('introduction').$this->TvFck->create('Product.introduction',array('height'=>'100px','width'=>'750px')); ?>
                     </td>
                </tr><!--
                <tr>
                	<td class="label">Tóm tắt (Tiếng Anh)</td>
                    <td>
					 <?php  echo $this->Form->input('introduction_en').$this->TvFck->create('Product.introduction_en',array('height'=>'100px','width'=>'750px')); ?>
                     </td>
                </tr>-->
                <tr>
                	<td class="label">Mô tả sản phẩm</td>
                	<td>
                    <?php  echo $this->Form->input('content',array('label' => '','type'=>'textarea')).$this->TvFck->create('Product.content',array('toolbar'=>'extra','skin'=>'kama','height'=>'300px','width'=>'700px')); ?>
                    </td>
                </tr>
                <!-- <tr>
                	<td class="label">Mô tả sản phẩm (Anh)</td>
                	<td>
                    <?php  echo $this->Form->input('content_en',array('label' => '','type'=>'textarea')).$this->TvFck->create('Product.content_en',array('toolbar'=>'extra','skin'=>'kama','height'=>'300px','width'=>'700px')); ?>
                    </td>
                </tr>-->
				<tr>
                   	<td width="120" class="label">Keywords:</td>
                    <td>
                    <?php echo $this->Form->input('Product.keywords',array('class'=>'text-input medium-input datepicker','maxlength' => '250','style' => 'width:200px !important'));?>
                    </td>
                </tr> 
				<tr>
                   	<td width="120" class="label">Description:</td>
                    <td>
                    <?php echo $this->Form->input('Product.description',array('class'=>'text-input medium-input datepicker','maxlength' => '250','style' => 'width:200px !important'));?>
                    </td>
                </tr> 
                <tr>
                  	<td class="label">Trạng thái:</td>
                    <td><input type="radio" value="0" id="ProductStatus0" name="data[Product][status]" <?php if($this->data['Product']['status'] == 0 ) echo "checked"; ?>> Chưa Active 
                    	&nbsp;&nbsp;&nbsp;<input type="radio" value="1" id="ProductStatus1" name="data[Product][status]" <?php if($this->data['Product']['status'] == 1 ) echo "checked"; ?>> Đã Active
                    </td>
                </tr>
                
            </table>
            <?php echo $form->input('Product.id',array('label'=>''));?>
            <div class="clr"></div>
        </div> <!-- End #tab1 -->
        <div class="tab-content" id="tab2">
        </div> <!-- End #tab2 -->        
    </div> <!-- End .content-box-content -->
 </div>
<div id="khung">
	<div id="main">
		<div class="toolbar-list" id="toolbar">
			<ul>
				<li id="toolbar-new">
					<a href="javascript:void(0);" onclick="javascript:document.adminForm.submit();" class="toolbar">
                        <span class="icon-32-save"></span>
                        Lưu
					</a>
                </li>
                <li id="toolbar-refresh">
                    <a href="javascript:void(0);" class="toolbar" onclick="javascript:document.adminForm.reset();">
                    <span class="icon-32-refresh">
                    </span>
                    Reset
                    </a>
                </li>
                <li class="divider"></li>
                <li id="toolbar-help">
                    <a href="#messages" rel="modal" class="toolbar">
                        <span class="icon-32-help"></span>
                        Trợ giúp
                    </a>
                </li>
                <li id="toolbar-unpublish">
                    <a href="<?php echo DOMAINAD?>products" class="toolbar">
                        <span class="icon-32-cancel"></span>
                        Hủy
                    </a>
                </li>
            </ul>
            <div class="clr"></div>
        </div>
		<div class="pagetitle icon-48-nhomtin"><h2>Quản lý sản phẩm</h2></div>
		<div class="clr"></div>
	</div>
</div>
<?php echo $form->end(); ?>