<?php
class HomeController extends AppController {

	var $name = 'Home';
	var $uses=array('User','News','Catproduct','Product','Setting');

	
	function index() {//list danh sach tin tuc   
		$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.spkhuyenmai'=>1),'limit' => 18,'order' => 'Product.id DESC');
	    $this->set('products', $this->paginate('Product',array()));
          
		$x=$this->Setting->findById('1');
		$this->set('title',$x['Setting']['title']);
		$this->set('keywords',$x['Setting']['keyword']);
		$this->set('description',$x['Setting']['description']);
      
        $this->set('tubep', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.newpro'=>1),'limit'=>18,'order' => 'Product.id DESC')));
       
        
      
        
    
        $this->set('bepcongnghiep', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>1),'limit'=>6,'order' => 'Product.id DESC')));
       
        $this->set('spvip', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>'1'),'limit'=>6,'order' => 'Product.id DESC')));
        
	}  
}

?>