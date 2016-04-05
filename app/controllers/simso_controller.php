<?php
class SimsoController extends AppController {

	var $name = 'Simso';
	var $uses=array('Product','Catproduct','Comment','Manufacturer','Video');
	var $helpers = array('Html','Ajax','Javascript');
	var $components = array( 'RequestHandler' );
	function index() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
		$this->paginate = array('conditions'=>array('Video.status'=>1),'order'=>'Video.id DESC','limit'=>50);
	    $this->set('products', $this->paginate('Video',array()));	
        
	}
    function dssanpham($id=null) {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        $check=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>$id),'fields' => array('Catproduct.id')));		
        //var_dump($check); exit();
	    if($check!=null){
	       $this->paginate = array('conditions'=>array('Catproduct.status'=>1,'Catproduct.parent_id'=>$id),'order'=>'Catproduct.id ASC','limit'=>12);
	       $this->set('catproduct', $this->paginate('Catproduct',array()));	
            $this->set('cat',$this->Catproduct->read(null,$id));
            }else{
                $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>12);
        	      $this->set('products', $this->paginate('Product',array()));	
        		  $this->set('cat',$this->Catproduct->read(null,$id));
            }
            
	}
    function all($id=null) {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        	
        //var_dump($check); exit();
	    if($id=1){
	       $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.spkhuyenmai'=>1),'order'=>'Product.id DESC','limit'=>12);
        	      $this->set('products', $this->paginate('Product',array()));
            $this->set('cat',$this->Catproduct->read(null,$id));
            }else{
                $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>1),'order'=>'Product.id DESC','limit'=>12);
        	      $this->set('products', $this->paginate('Product',array()));	
        		  $this->set('cat',$this->Catproduct->read(null,$id));
            }
            
	}
    function khuyenmai() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        
                $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.spkuyenmai'=>1),'order'=>'Product.id DESC','limit'=>18);
        	      $this->set('products', $this->paginate('Product',array()));	
        		  $this->set('cat','Sản phẩm khuyến mãi');        
            
	}
    function vip() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        
                $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>1),'order'=>'Product.id DESC','limit'=>18);
        	      $this->set('products', $this->paginate('Product',array()));	
        		  $this->set('cat','Sản phẩm trung & cao cấp');        
            
	}
	function vpp() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        $dem=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>'21'),'fields' => array('Catproduct.id')));
		$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem),'order'=>'Product.id DESC','limit'=>12);
	    $this->set('products', $this->paginate('Product',array()));	
        $this->set('newsproducts', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem,'Product.sptieubieu'=>'1'),'limit'=>16,'order' => 'Product.id DESC')));
        
	}
    function thietbivp() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        $dem=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>'22'),'fields' => array('Catproduct.id')));
		$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem),'order'=>'Product.id DESC','limit'=>12);
	    $this->set('products', $this->paginate('Product',array()));	
        $this->set('newsproducts', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem,'Product.sptieubieu'=>'1'),'limit'=>16,'order' => 'Product.id DESC')));
	}
    function thietbicntt() {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
        $dem=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>'23'),'fields' => array('Catproduct.id')));
		$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem),'order'=>'Product.id DESC','limit'=>12);
	    $this->set('products', $this->paginate('Product',array()));	
        $this->set('newsproducts', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$dem,'Product.sptieubieu'=>'1'),'limit'=>16,'order' => 'Product.id DESC')));
	}
	function listproduct($id=null) {
		//list danh sach tin tuc Catproduct
		mysql_query("SET names utf8");       
      	$this->set('newsproducts', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id,'Product.sptieubieu'=>'1'),'limit'=>20,'order' => 'Product.id DESC')));
		 $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>20);
	      $this->set('products', $this->paginate('Product',array()));	
		  $this->set('cat',$this->Catproduct->read(null,$id));	
	}
	function listproducthsx($id=null) {
		//list danh sach tin tuc Catproduct
		mysql_query("SET names utf8");       
      	$this->set('newsproducts', $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.manufacturer'=>$id),'limit'=>20,'order' => 'Product.id DESC')));
		 $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.manufacturer'=>$id),'order'=>'Product.id DESC','limit'=>20);
	      $this->set('products', $this->paginate('Product',array()));	
		  $this->set('cat',$this->Catproduct->read(null,$id));	
		  $this->set('cat1',$this->Manufacturer->read(null,$id));
	}
	
	
	
	
	
	function listsp1($id=null) {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
		 $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>9);
	      $this->set('products', $this->paginate('Product',array()));	
		  $this->set('cat',$this->Catproduct->read(null,$id));	
	}
	function listsp12($id=null) {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
		 $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>10);
	      $this->set('products', $this->paginate('Product',array()));	
		  $this->set('cat',$this->Catproduct->read(null,$id));	
	}
	function listsp2($id=null) {
		//list danh sach tin tuc
		mysql_query("SET names utf8");
		 $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>10);
	      $this->set('products', $this->paginate('Product',array()));	
		  $this->set('cat',$this->Catproduct->read(null,$id));	
	}
	
	//function search($name_search=null){
	//$id = $this->Session->read('id');
    //if(isset($_POST['name_search'])){
	//$name_search = $_POST['name_search'];
    //}		
//	$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.title like'=>'%'.$name_search.'%'),'limit'=>16);		
    //$this->set('products', $this->paginate('Product',array()));
		
	//}
	function search() {
	$s = $_POST['s'];
$this->paginate = array('conditions'=>array('Video.status'=>1,'Video.so LIKE'=> "%$s%"),'limit' => '8','order' => 'Video.id DESC');

	    $this->set('products', $this->paginate('Video',array()));
	
		/* $this->loadModel("Catproduct");
        
        
 		if(isset($_POST['system']))
        {
 		$list_cat= isset($_POST['system'])?$_POST['system']:'';
        }
        
       
 		if(($list_cat!="")){
 		     $po1=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.status'=>1,'Catproduct.parent_id'=>$list_cat),'fields' => array('Catproduct.id')));
	         
	         if($po1!=null){
	 		$this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$po1),'limit' => '8','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }else{
	             $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$list_cat),'limit' => '8','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }
	         }      
 	
 		
           if(($list_cat=="")){ 		
	             $this->paginate = array('conditions'=>array('Product.status'=>1),'limit' => '8','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	    
 		 }
         */
         
	/*
	    $keyword="";
	 	   $list_cat="";
	 	  
	 	   if(isset($_POST['keyword']))
	 		$keyword=$_POST['keyword'];
	 		
	 		if(isset($_POST['system']))
	         
	 		$list_cat=$_POST['system'];
	 		if(($keyword!="")&&($list_cat=="")){
	 		//['Product.title LIKE']='%'.$keyword.'%';
	 		$this->paginate = array('conditions'=>array('Product.title LIKE'=>'%'.$keyword.'%'),'limit' => '21','order' => 'Product.id DESC');
	 	   $this->set('products', $this->paginate('Product',array()));
	         }
	 				
	 		 if(($keyword=="")&&($list_cat!="")){
	 		$po1=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>$list_cat),'fields' => array('Catproduct.id')));
	         
	         if($po1!=null){
	 		$this->paginate = array('conditions'=>array('Product.catproduct_id'=>$po1),'limit' => '21','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }else{
	             $this->paginate = array('conditions'=>array('Product.catproduct_id'=>$list_cat),'limit' => '21','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }
	         }
	        if(($keyword!="")&&($list_cat!="")){
	 		$po2=$this->Catproduct->find('list',array('conditions'=>array('Catproduct.parent_id'=>$list_cat),'fields' => array('Catproduct.id')));
	         if($po2!=null){
	 		$this->paginate = array('conditions'=>array('Product.title LIKE'=>'%'.$keyword.'%','Product.catproduct_id'=>$po2),'limit' => '21','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }else{
	             $this->paginate = array('conditions'=>array('Product.title LIKE'=>'%'.$keyword.'%','Product.catproduct_id'=>$list_cat),'limit' => '21','order' => 'Product.id DESC');
	 	       $this->set('products', $this->paginate('Product',array()));
	            }
	         }
	       
	 */
	}
	function view($id=null) {
		mysql_query("SET names utf8");
		if (!$id) {
			$this->Session->setFlash(__('Không tồn tại', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('views', $this->Product->read(null, $id));
		$this->set('news', $this->Catproduct->read(null, $id));
		$name=$this->Product->read(null, $id);
       
  		$this->set('views',$name);		
        $this->paginate = array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$name['Product']['catproduct_id'],'Product.id <>'=>$name['Product']['id']),'order'=>'Product.id DESC','limit'=>8);
	    $this->set('sanphamkhac', $this->paginate('Product',array()));	
	
	}
	
//shopping	
function addshopingcart($id=null){
		$product=$this->Product->read(null,$id);	
//	
	if(!isset($_SESSION['shopingcart'])){  $_SESSION['shopingcart']=array();};
	 		
	 if(isset($_SESSION['shopingcart']))	 
	 {   
	 	 
	 	 $shopingcart=$_SESSION['shopingcart'];
	 	 if(isset($shopingcart[$id]))
		 {		 	
			 $shopingcart[$id]['sl']= $shopingcart[$id]['sl']+1;
			 $shopingcart[$id]['total']= $shopingcart[$id]['price']*$shopingcart[$id]['sl'];			
			 $_SESSION['shopingcart']=$shopingcart;			 
			echo '<script language="javascript"> ; window.location.replace("'.DOMAIN.'/products/viewshopingcart"); </script>';
		 }
	     else
		 {			
		 		$shopingcart[$id]['pid'] = $id;		
				$shopingcart[$id]['name']=$product['Product']['title'];	
				$shopingcart[$id]['images']=$product['Product']['images'];	
				$shopingcart[$id]['sl']=1;
				$shopingcart[$id]['price'] = $product['Product']['price'];				
				$shopingcart[$id]['total']= $product['Product']['price']*$shopingcart[$id]['sl'];
				$_SESSION['shopingcart']=$shopingcart;				
				echo '<script language="javascript" type="text/javascript"> ; window.location.replace("'.DOMAIN.'products/viewshopingcart"); </script>';
	         }
	 	}	
	}

	function deleteshopingcart($id=null){
		if(isset($_SESSION['shopingcart']))
		 {   
			 $shopingcart=$_SESSION['shopingcart'];			 
			  if(isset($shopingcart[$id]))
			  unset($shopingcart[$id]);
			  $_SESSION['shopingcart']=$shopingcart;
			  $this->redirect('viewshopingcart');
              
		 }
		
	}
	
	function order($id=null){
		mysql_query("SET names utf8");
		if (!$id) {
			$this->Session->setFlash(__('Không tồn tại', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('buy', $this->News->read(null, $id));
		}
	
function viewshopingcart(){
        if(isset($_SESSION['shopingcart']))
		 {   
			 $shopingcart=$_SESSION['shopingcart'];			 
			 $this->set(compact('shopingcart'));
		 }
		 else
		 {
			 echo '<script language="javascript"> alert("Chua co san pham nao trong gio hang"); window.location.replace("'.DOMAIN.'home"); </script>';
		 }
	}

	function updateshopingcart($id=null){
		
		if(isset($_SESSION['shopingcart']))
		 {   
			 $shopingcart=$_SESSION['shopingcart'];			 
			  if(isset($shopingcart[$id]))
			  {
				  $shopingcart[$id]['sl']=$_POST['soluong'];			
				  $shopingcart[$id]['total']= $shopingcart[$id]['sl']*$shopingcart[$id]['price'];
			  }
			  $_SESSION['shopingcart']=$shopingcart;
			 
			  $this->redirect('viewshopingcart');
		 }
	}
	function buy(){
		if(isset($_SESSION['shopingcart']))
		 {  
		 	 $shopingcart=$_SESSION['shopingcart'];			 
			 $this->set(compact('shopingcart'));
		 }
		 else
		 {
			 echo '<script language="javascript"> alert("Không có sản phẩm nào trong giỏ hàng của bạn"); window.location.replace("'.DOMAIN.'"); </script>';
		 }
	}
  function category($id=null) {
		mysql_query("SET names utf8");
		if (!$id) {
			$this->Session->setFlash(__('Không tồn tại', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('products',$this->Product->find('all',array('conditions'=>array('Product.status'=>1,'category_id'=>$id),'order'=>'Product.id DESC')));
	}
	
	function getproduct($id=null)
	{
		return  $this->Product->read(null, $id);
	}
	function khachhangbinhluan($id=null){
		$data['Product']['id'] = $id;
		mysql_query("SET names utf8");
		return $this->Comment->find('all',array('conditions'=>array('Comment.status'=>1,'Comment.baiviet'=>$id),'order'=>'Comment.id DESC'));
	}
	
	
	function add($id=null) {		
		if (!empty($this->data)) {
		      if($this->Session->read('security_code')==$_POST['security']){
				
				
			   $data['Comment'] = $this->data['Comment'];
			     $data['Comment']['baiviet'] = $id;
			if ($this->Comment->save($data['Comment'])) {
				$this->Session->setFlash(__('Thêm mới danh mục thành công', true));
				//$this->redirect(array('action' => 'index'));
				echo '<script language="javascript"> location.href="'.DOMAIN.'";</script>';
			} else {
				$this->Session->setFlash(__('Thêm mơi danh mục thất bại. Vui lòng thử lại', true));
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
