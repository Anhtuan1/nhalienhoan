<script>
function confirmDelete(delUrl)
{
if (confirm("Bạn có muốn xóa danh mục này không!"))
{
	document.location = delUrl;
}
}
</script>

<div class="content-box">
    <div class="content-box-header">
        
        <h3>Danh sách</h3>
        
        <ul class="content-box-tabs">
            <li><a href="#tab1" class="default-tab">Danh sách </a></li> <!-- href must be unique and match the id of target div -->
            <li><a href="#tab2"></a></li>
        </ul>
        
        <div class="clear"></div>
        
    </div> <!-- End .content-box-header -->
    <div class="content-box-content">
        
        <div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
            <table>
                
                <thead>
                    <tr>
                       <th><input class="check-all" type="checkbox" /></th>
                       <th>STT</th>
                       <th><?php echo $this->Paginator->sort('Tên','id');?></th>
  
                       <th><?php echo $this->Paginator->sort('Ngày tạo','created');?></th>
                       <th>Xử lý</th>
                    </tr>
                    
                </thead>
             
                <tfoot>
                    <tr>
                        <td colspan="6">
                            <div class="bulk-actions align-left">
                                <select name="dropdown">
                                    <option value="option1">Lựa chọn</option>
                                    <option value="option2">Active</option>
                                    <option value="option2">Hủy Active</option>
                                    <option value="option3">Delete</option>
                                </select>
                                <a class="button" href="#">Thực hiện</a>
                            </div>
                             <div class="pagination">
                                <a href="#" title="First Page">
                                   <?php
                                        $paginator->options(array('url' => $this->passedArgs));
                                       echo "&laquo "; echo $paginator->prev('Về trước');
							       ?> 
                                </a>
							     <?php 
								   echo $paginator->numbers();
                                   echo $paginator->next('Tiếp theo'); echo "&raquo";
                                ?>
                              </div>
                            </div> <!-- End .pagination -->
                            <div class="clear"></div>
                        </td>
                    </tr>
                </tfoot>
                <tbody>
                   <?php $i=1; foreach ($Style as $key =>$value){?>
                    <tr>
                        <td><input type="checkbox" /></td>
                        <td><?php $j=$key+1; echo $j;?></td>
                        <td><?php echo $value['Style']['name'];?></td>
                        
                        
                        <td><?php echo date('d-m-Y', strtotime($value['Style']['created'])); ?></td>
                        <?php if($value['Style']['status']==0){?>  
                          <td>
                             <a href="<?php echo DOMAINAD?>styles/edit/<?php echo $value['Style']['id'] ?>" title="Edit"><img src="<?php echo DOMAINAD?>images/icons/pencil.png" alt="Edit" /></a>
                             
                             <a href="javascript:confirmDelete('<?php echo DOMAINAD?>styles/delete/<?php echo $value['Style']['id'] ?>')" title="Delete"><img src="<?php echo DOMAINAD?>images/icons/cross.png" alt="Delete" /></a>
       
                             <a href="<?php echo DOMAINAD?>Styles/active/<?php echo $value['Style']['id'] ?>" title="Kích hoạt" class="icon-5 info-tooltip"><img src="<?php echo DOMAINAD?>images/icons/Play-icon.png" alt="Kích hoạt" /></a>
                        </td>
                        <?php } else {?> 
                          <td>
                            <!-- Icons -->
                             
							 <a href="<?php echo DOMAINAD?>styles/edit/<?php echo $value['Style']['id'] ?>" title="Edit"><img src="<?php echo DOMAINAD?>images/icons/pencil.png" alt="Edit" /></a>
                             <a href="javascript:confirmDelete('<?php echo DOMAINAD?>styles/delete/<?php echo $value['Style']['id'] ?>')" title="Delete"><img src="<?php echo DOMAINAD?>images/icons/cross.png" alt="Delete" /></a>
							 <?php if($value['Style']['parent_id']!=null){?> 
                             <a href="javascript:confirmDelete('<?php echo DOMAINAD?>styles/delete/<?php echo $value['Style']['id'] ?>')" title="Delete"><img src="<?php echo DOMAINAD?>images/icons/cross.png" alt="Delete" /></a>
                             <?php }?>  
                             <a href="<?php echo DOMAINAD?>styles/close/<?php echo $value['Style']['id'] ?>" title="Đóng" class="icon-4 info-tooltip"><img src="<?php echo DOMAINAD?>images/icons/success-icon.png" alt="Ngắt kích hoạt" /></a>
                        </td>
                        <?php }?>
                    </tr>
                   <?php }?>
                </tbody>
                
            </table>
            
        </div> <!-- End #tab1 -->
        
         <!-- End #tab2 -->        
        
    </div> <!-- End .content-box-content -->
 </div>
