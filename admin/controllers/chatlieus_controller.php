<?php
class ChatlieusController extends AppController {

	var $name = 'Chatlieus';	
	var $helpers = array('Html', 'Form', 'Javascript', 'TvFck');
	//list danh sach cac danh muc
	function index() {	
	   $this->account();	 
	  // $conditions=array('Catproduct.status'=>1);	
	   $this->paginate = array('limit' => '15','order' => 'Chatlieus.id ASC');
	   $this->set('Chatlieus', $this->paginate('Chatlieus',array()));
       $list_cat = $this->Chatlieus->generatetreelist(null,null,null," _ ");
	   $this->set(compact('list_cat'));
	}
	//tim kiem
	function search($id=null) {
		$data['Chatlieu']=$this->data['Chatlieu'];
		$catproduct=$data['Chatlieu']['parent_id'];
		$this->paginate = array('conditions'=>array('Chatlieu.id'=>$catproduct),'limit' => '15','order' => 'Chatlieu.id DESC');
	    $this->set('chatlieu', $this->paginate('Chatlieu',array()));
		
        $list_cat = $this->Chatlieu->generatetreelist(null,null,null," _ ");
	    $this->set(compact('list_cat'));
		
	}
	//them danh muc moi
	function add() {
		$this->account();
		if (!empty($this->data)) {
			$this->Chatlieu->create();
            $data['Chatlieu'] = $this->data['Chatlieu'];
			if ($this->Chatlieu->save($data['Chatlieu'])){
				$this->Session->setFlash(__('Thêm mới danh mục thành công', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('Thêm mơi danh mục thất bại. Vui long thử lại', true));
			}
		}
		$this->loadModel("Chatlieu");
        $list_cat = $this->Manufacturer->generatetreelist(null,null,null," _ ");
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
			$data['Chatlieu'] = $this->data['Chatlieu'];
			if ($this->Chatlieu->save($data['Chatlieu'])){
				$this->Session->setFlash(__('Sửa thành công', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('Sủa không thành công. Vui long thử lại', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Chatlieu->read(null, $id);
		}
		$this->set('list_cat',$this->_find_list());
        $this->set('edit',$this->Chatlieu->findById($id));
	}
	//dong danh muc
	function close($id=null) {
		$this->account();
		if (empty($id)) {
			$this->Session->setFlash(__('Khôn tồn tại danh mục này', true));
			$this->redirect(array('action'=>'index'));
		}
		$data['Chatlieu'] = $this->data['Chatlieu'];
		$data['Chatlieu']['id']=$id;
		$data['Chatlieu']['status']=0;		
		if ($this->Chatlieu->save($data['Chatlieu'])) {
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
		$data['Chatlieu'] = $this->data['Chatlieu'];
		$data['Chatlieu']['id']=$id;
		$data['Chatlieu']['status']=0;		
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
		$data['Chatlieu'] = $this->data['Chatlieu'];
		$data['Chatlieu']['id']=$id;
		$data['Manufacturer']['status']=1;
		if ($this->Chatlieu->save($data['Chatlieu'])) {
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
		if ($this->Chatlieu->delete($id)) {
			$this->Session->setFlash(__('Xóa danh mục thành công', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Danh mục không xóa được', true));
		$this->redirect(array('action' => 'index'));
	}
	//list danh sach cac danh muc
	function _find_list() {
		return $this->Chatlieu->generatetreelist(null, null, null, '__');
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
