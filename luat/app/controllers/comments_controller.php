<?php
class CommentsController extends AppController {

	var $name = 'Comments';
	var $uses=array('Comment');
	var $helpers = array('Html', 'Form', 'Javascript');
	//list danh sach cac danh muc
	function index() {	
	   $this->paginate = array('conditions'=>array('Comment.status'=>1),'limit' => '4','order' => 'Comment.id DESC');
	   $this->set('comment', $this->paginate('Comment',array()));
	}
	//them danh muc moi
	function add() {		
		if (!empty($this->data)) {
		      if($this->Session->read('security_code')==$_POST['security']){
				$data['Comment']['baiviet'] = $id;
			   $data['Comment'] = $this->data['Comment'];
			if ($this->Comment->save($data['Comment'])) {
				$this->Session->setFlash(__('Thêm mới danh mục thành công', true));
				//$this->redirect(array('action' => 'index'));
				echo '<script language="javascript"> location.href="'.DOMAIN.'";</script>';
			} else {
				$this->Session->setFlash(__('Thêm mơi danh mục thất bại. Vui long thử lại', true));
			}

            }
            if($this->Session->read('security_code')!=$_POST['security']){
					echo "<script>alert('".json_encode('Ban nhập không đúng mã bảo vệ !')."');</script>";
					echo "<script>history.back(-1);</script>";
				}
		}
		
	}
	
	

}
?>
