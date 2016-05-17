<div class="content-box"><!-- Start Content Box -->
    <div class="content-box-header">
        
        <h3>Video</h3>
        
        <ul class="content-box-tabs">
            <li><a href="#tab1"></a></li> <!-- href must be unique and match the id of target div -->
            <li><a href="#tab2" class="default-tab">Thêm</a></li>
        </ul>
        
        <div class="clear"></div>
        
    </div> <!-- End .content-box-header -->
    <div class="content-box-content">
        
        <div class="tab-content" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
        </div> <!-- End #tab1 -->
        
        <div class="tab-content default-tab" id="tab2">
        
             <?php echo $form->create(null, array( 'url' => DOMAINAD.'videos/add','type' => 'post','enctype'=>'multipart/form-data','name'=>'adminForm')); ?>       
                
                <fieldset> 
                    <p>
                        <label>Tên </label>
                           <?php echo $form->input('Video.name',array( 'label' => '','class'=>'text-input medium-input datepicker'));?>
                    </p>
                    <p>
                        <label>Mã link. </br>
VD:https://www.youtube.com/watch?v=lbw6_VdVWH8 Mã là: lbw6_VdVWH8 (lấy các ký tự sau ?v=) </br>
Hoặc: http://youtu.be/lbw6_VdVWH8 Mã là: lbw6_VdVWH8 </label>
                       <?php echo $form->input('Video.LinkUrl',array( 'label' => '','class'=>'text-input medium-input datepicker'));?>
                    </p>
					     <tr>
                  	<td class="label">Ảnh video:</td>
                    <td>
                        <?php echo $this->Form->input('Video.images',array('class'=>'text-input image-input datepicker','name' => 'userfile'));?> &nbsp;<font color="#FF0000"> <a href="javascript:window.open('<?php echo DOMAINAD; ?>upload.php','userfile','width=500,height=300');window.history.go(1)" >[ upload ]</a> </font><font color="#FF0000">*</font>(jpg, jpeg, gif, png)
                    </td>
                  
                </tr>
                   
                    <input type="radio" value="0" id="ProductStatus0" name="data[Product][status]"> Chưa Active 
                    	&nbsp;&nbsp;&nbsp;<input type="radio" checked="checked" value="1" id="ProductStatus1" name="data[Product][status]"> Đã Active

                    <p>
                        <input class="button" type="submit" value="Thêm mới" />
                    </p>
                    
                </fieldset>
                
                <div class="clear"></div><!-- End .clear -->
                
            <?php echo $form->end(); ?>
            
        </div> <!-- End #tab2 -->        
        
    </div> <!-- End .content-box-content -->
 </div>

