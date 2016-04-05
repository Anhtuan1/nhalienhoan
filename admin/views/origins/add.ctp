<div class="content-box">
    <div class="content-box-header">
        
        <h3>Thêm mới </h3>
        
        <ul class="content-box-tabs">
            <li><a href="#tab1"></a></li> 
            <li><a href="#tab2" class="default-tab">Thêm mới</a></li>
        </ul>
        
        <div class="clear"></div>
        
    </div> 
    <div class="content-box-content">
        
        <div class="tab-content" id="tab1"> 
        </div>
        
        <div class="tab-content default-tab" id="tab2">
        
              <?php echo $form->create(null, array( 'url' => DOMAINAD.'origins/add','type' => 'post','name'=>'adminForm')); ?>	    
                
                <fieldset> 
                    <p>
                        <label>Kích cỡ</label>
                        <?php echo $form->input('Origin.name',array( 'label' => '','class'=>'text-input medium-input datepicker','onchange' => 'get_alias()','id' => 'idtitle'));?>
                    </p>
					
					<p>
						<?php echo $this->Form->input('Origin.alias',array('class'=>'text-input alias-input datepicker','maxlength' => '250','id' => 'idalias'));?>
						<img width="16" height="16" alt="" onclick="get_alias();" style="cursor: pointer; vertical-align: middle;" src="<?php echo DOMAINAD; ?>images/refresh.png">
					</p>
					<!--
					<p>
						<label>Ảnh hiển thi</label>
						<?php echo $this->Form->input('Origin.images',array('class'=>'text-input image-input datepicker','name' => 'userfile',"label"=>""));?> <a href="javascript:window.open('<?php echo DOMAINAD; ?>upload.php','userfile','width=500,height=300');window.history.go(1)" ><input type="button" value="Chọn ảnh" class="button" /></a> 
					
					</p> -->
                    <p>
                        <label>Trạng thái</label>
                         <?php echo $form->radio('Origin.status', array(0 => 'Chưa Active', 1 => 'Đã Active'), array('value' => '1','legend'=>'')); ?>
                    </p>
                    <p>
                        <input class="button" type="submit" value="Thêm mới" />
                    </p>
                    
                </fieldset>
                
                <div class="clear"></div>
                
            <?php echo $form->end(); ?>
            
        </div>
        
    </div>
 </div>
