<?php
class OriginsController extends AppController {

	var $name = 'Origins';	
	var $helpers = array('Html', 'Form', 'Javascript', 'TvFck');
	//list danh sach cac danh muc
	function index() {	
	   $this->account();	 
	  // $conditions=array('Catproduct.status'=>1);	
	   $this->paginate = array('limit' => '15','order' => 'Origin.id ASC');
	   $this->set('Origin', $this->paginate('Origin',array()));
       $list_cat = $this->Origin->generatetreelist(null,null,null," _ ");
	   $this->set(compact('list_cat'));
	}
	//tim kiem
	function search($id=null) {
		$data['Origin']=$this->data['Origin'];
		$catproduct=$data['Origin']['parent_id'];
		$this->paginate = array('conditions'=>array('Origin.id'=>$catproduct),'limit' => '15','order' => 'Origin.id DESC');
	    $this->set('origin', $this->paginate('Origin',array()));
		
        $list_cat = $this->Origin->generatetreelist(null,null,null," _ ");
	    $this->set(compact('list_cat'));
		
	}
	//them danh muc moi
	function add() {
		$this->account();
		if (!empty($this->data)) {
			$this->Origin->create();
            $data['Origin'] = $this->data['Origin'];
			$data['Origin']['images'] = $_POST['userfile'];
			if ($this->Origin->save($data['Origin'])){
				$this->Session->setFlash(__('Thêm mới danh mục thành công', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('Thêm mơi danh mục thất bại. Vui long thử lại', true));
			}
		}
		$this->loadModel("Origin");
        $list_cat = $this->Origin->generatetreelist(null,null,null," _ ");
        $this->set(compact('list_cat'));
	}
	//Sua danh muc
	function edit($id = null) {
		$this->account();
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Không tồn tại danh mục này', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$data['Origin'] = $this->data['Origin'];
			$data['Origin']['images'] = $_POST['userfile'];
			if ($this->Origin->save($data['Origin'])){
				$this->Session->setFlash(__('Sửa thành công', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('Sủa không thành công. Vui long thử lại', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Origin->read(null, $id);
		}
		$this->set('list_cat',$this->_find_list());
        $this->set('edit',$this->Origin->findById($id));
	}
	//dong danh muc
	function close($id=null) {
		$this->account();
		if (empty($id)) {
			$this->Session->setFlash(__('Khôn tồn tại danh mục này', true));
			$this->redirect(array('action'=>'index'));
		}
		$data['Origin'] = $this->data['Origin'];
		$data['Origin']['id']=$id;
		$data['Origin']['status']=0;		
		if ($this->Origin->save($data['Origin'])) {
			$this->Session->setFlash(__('Danh mục không được hiển thị', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Danh mục không close được', true));
		$this->redirect(array('action' => 'index'));

	}
    function closes($id=null) {
		$this->account();
		if (empty($id)) {
			$this->Session->setFlash(__('Khôn tồn tại danh mục này', true));
			$this->redirect(array('action'=>'index'));
		}
		$data['Origin'] = $this->data['Origin'];
		$data['Origin']['id']=$id;
		$data['Origin']['status']=0;		
		if ($this->Catproduct->save($data['Catproduct'])) {
			$this->Session->setFlash(__('Danh mục không được hiển thị', true));
			echo "<script>history.go(-1);</script>";
		}
		$this->Session->setFlash(__('Danh mục không close được', true));
		$this->redirect(array('action' => 'index'));

	}
	// kich hoat
	function active($id=null) {
		$this->account();
		if (empty($id)) {
			$this->Session->setFlash(__('Khôn tồn tại danh mục này', true));
			$this->redirect(array('action'=>'index'));
		}
		$data['Origin'] = $this->data['Origin'];
		$data['Origin']['id']=$id;
		$data['Origin']['status']=1;
		if ($this->Origin->save($data['Origin'])) {
			$this->Session->setFlash(__('Danh mục kích hoạt thành công', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Danh mục không kich hoạt được', true));
		$this->redirect(array('action' => 'index'));

	}

	//Xoa danh muc
	function delete($id = null) {	
		$this->account();	
		if (empty($id)) {
			$this->Session->setFlash(__('Khôn tồn tại danh mục này', true));
			//$this->redirect(array('action'=>'index'));
		}
		if ($this->Origin->delete($id)) {
			$this->Session->setFlash(__('Xóa danh mục thành công', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Danh mục không xóa được', true));
		$this->redirect(array('action' => 'index'));
	}
	//list danh sach cac danh muc
	function _find_list() {
		return $this->Origin->generatetreelist(null, null, null, '__');
	}
	//check ton tai tai khoan
	function account(){
		if(!$this->Session->read("id") || !$this->Session->read("name")){
			$this->redirect('/');
		}
	}
	function beforeFilter(){
		$this->layout='admin';
	}

}
?>
