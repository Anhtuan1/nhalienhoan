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
        
              <?php echo $form->create(null, array( 'url' => DOMAINAD.'kieudangs/add','type' => 'post','name'=>'image')); ?>	    
                
                <fieldset> 
                    <p>
                        <label>Tên</label>
                        <?php echo $form->input('Kieudangs.name',array( 'label' => '','class'=>'text-input medium-input datepicker'));?>
                    </p>
				  <p>
                        <label>Trạng thái</label>
                        <?php echo $form->input('Kieudangs.id',array('label' => '','type'=>'hidden'));?>
                        <?php echo $form->radio('Kieudangs.status',array(0=>'Chưa Active',1=>'Đã Active'),array('legend'=>'')) ?> 
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
