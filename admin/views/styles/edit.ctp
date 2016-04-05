<div class="content-box">
    <div class="content-box-header">
        
        <h3>Chỉnh sửa thông tin</h3>
        
        <ul class="content-box-tabs">
            <li><a href="#tab1"></a></li>
            <li><a href="#tab2" class="default-tab">Sửa</a></li>
        </ul>
        
        <div class="clear"></div>
        
    </div>
    <div class="content-box-content">
        
        <div class="tab-content" id="tab1">
        </div>
        
        <div class="tab-content default-tab" id="tab2">
        
               <?php echo $form->create(null, array( 'url' => DOMAINAD.'styles/edit/Catproduct.id','type' => 'post','name'=>'adminForm')); ?>	
                
                <fieldset> 
                    <p>
                        <label>Kiểu dáng</label>
                        <?php echo $form->input('Style.name',array( 'label' => '','class'=>'text-input medium-input datepicker','onchange' => 'get_alias()','id' => 'idtitle'));?>
                    </p>
					
					<p>
						<?php echo $this->Form->input('Style.alias',array('class'=>'text-input alias-input datepicker','maxlength' => '250','id' => 'idalias'));?>
						<img width="16" height="16" alt="" onclick="get_alias();" style="cursor: pointer; vertical-align: middle;" src="<?php echo DOMAINAD; ?>images/refresh.png">
					</p>
					<!--
					<p>
						<label>Hình ảnh cũ:</label>
						<img src="<?php echo DOMAINAD?><?php echo $edit['Style']['images']?>" width="200"/>
					</p>
					
					<p>
						<label>Ảnh hiển thi</label>
						<?php echo $this->Form->input('Style.images',array('class'=>'text-input image-input datepicker','name' => 'userfile',"label"=>""));?> <a href="javascript:window.open('<?php echo DOMAINAD; ?>upload.php','userfile','width=500,height=300');window.history.go(1)" ><input type="button" value="Chọn ảnh" class="button" /></a> 
					
					</p>
					-->
                    <p>
                        <label>Trạng thái</label>
                        <?php echo $form->input('Style.id',array('label' => '','type'=>'hidden'));?>
                        <?php echo $form->radio('Style.status',array(0=>'Chưa Active',1=>'Đã Active'),array('legend'=>'')) ?> 
                    </p>
                    <p>
                        <input class="button" type="submit" value="Cập nhật" />
                    </p>
                    
                </fieldset>
                
                <div class="clear"></div>
                
            <?php echo $form->end(); ?>
            
        </div>
        
    </div> 
 </div>
