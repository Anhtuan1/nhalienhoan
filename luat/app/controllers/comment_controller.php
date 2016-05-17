<?php
class CommentController extends AppController {

	var $name = 'Comment';
	var $uses=array('TotalVisitor','Online','Category','News','Infomation','Gallery','Album','Banner','Helps','Setting','Video','Slideshow','Partner','Advertisement','Catproduct','Product','Weblink','Manufacturer','Product');
	
  function getOrder(){
		mysql_query("SET names utf8");      	
		return $this->Infomation->find('all',array('order' => 'Infomation.id DESC'));
	}
  function getAlbum(){
		mysql_query("SET names utf8");      	
		return $this->Album->find('all',array('conditions'=>array('Album.status'=>1),'limit' => '12','order' => 'Album.id ASC'));
	}
	//tin tuc
    function menucategory(){
		mysql_query("SET names utf8");
		return $this->Category->find('all',array('conditions'=>array('Category.status'=>1,'Category.parent_id'=>null),'order'=>'Category.tt ASC'));
	}
	function menucategoryhome(){
		mysql_query("SET names utf8");
		return $this->Category->find('all',array('conditions'=>array('Category.status'=>1,'Category.parent_id'=>null,'Category.home'=>1),'order'=>'Category.tt ASC'));
	}
    function showcategory($id=null){
        mysql_query("SET names utf8");
		return $this->Category-> find('all',array('conditions'=>array('Category.parent_id '=>$id),'order'=>'Category.tt ASC'));
	}
	 function showcategory1($id=null){
        mysql_query("SET names utf8");
		return $this->Category-> find('all',array('conditions'=>array('Category.parent_id '=>$id),'order'=>'Category.tt ASC'));
	}
	 function showcategory2($id=null){
        mysql_query("SET names utf8");
		return $this->Category-> find('all',array('conditions'=>array('Category.parent_id '=>$id),'order'=>'Category.tt ASC'));
	}
	function menunews1(){
		mysql_query("SET names utf8");
		return $this->Category->find('all',array('conditions'=>array('Category.status'=>1,'Category.parent_id'=>'156'),'order'=>'Category.tt DESC'));
	}
    
	// gioi thieu
	function menuintroduct(){
		mysql_query("SET names utf8");
		return $this->Category->find('all',array('conditions'=>array('Category.status'=>1,'Category.parent_id'=>'146'),'order'=>'Category.tt ASC'));
	}
	function banner(){
		return $this->Banner->find('all',array('conditions'=>array('Banner.status'=>1),'order'=>'Banner.id DESC'));
	}
	
	function setting(){
		return $this->Setting->find('all',array('conditions'=>array(),'order'=>'Setting.id DESC'));
	}
	function adv(){
		//return $this->Gallery->find('all',array('conditions'=>array('Gallery.status'=>1),'order'=>'Gallery.id DESC','limit'=>2));
		return $this->Banner->find('all',array('conditions'=>array('Banner.status'=>1),'order'=>'Banner.id DESC','limit'=>2));
	}
	function doitac(){
		//return $this->Gallery->find('all',array('conditions'=>array('Gallery.status'=>1),'order'=>'Gallery.id DESC','limit'=>2));
		return $this->Partner->find('all',array('conditions'=>array('Partner.status'=>1),'order'=>'Partner.id DESC'));
	}
	function menu_active(){
		return $this->Category2->find('all',array('conditions'=>array('Category2.parent_id'=>145),'order'=>'Category2.id ASC'));
	}
	function helpsonline(){
	return $this->Helps->find('all',array('conditions'=>array('Helps.status'=>1),'order'=>'Helps.id DESC'));
	}
	function id_product($id){
	return $this->Product->read(null,$id);
	//pr($this->Product->read(null,$id));die;
	}
    function hot(){
	return $this->News->find('all',array('conditions'=>array('News.status'=>1),'order'=>'News.id DESC','limit'=>6));	
	}
   
	function getinfo($cat=null){
	return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>$cat),'order'=>'News.id DESC','limit'=>8));	
	}
	function videos(){
		mysql_query("SET names utf8");
		return $this->Video->find('all',array('conditions'=>array('Video.status'=>1,'Video.left'=>0),'order'=>'Video.id DESC','limit'=>1));
	}
    function videosright(){
		mysql_query("SET names utf8");
		return $this->Video->find('all',array('conditions'=>array('Video.status'=>1,'Video.left'=>1),'order'=>'Video.id DESC','limit'=>1));
	}
	function tintuc(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>156),'order'=>'News.id DESC','limit'=>5));
	}
	
	function slideshow(){
		mysql_query("SET names utf8");
		return $this->Slideshow->find('all',array('conditions'=>array('Slideshow.status'=>1),'order'=>'Slideshow.id DESC'));
	}
	function library_image(){
		return $this->Gallery->find('all',array('conditions'=>array('Gallery.status'=>1),'order'=>'Gallery.id DESC','limit'=>10));
	}
	function shows(){
	mysql_query("SET names utf8");
	 return $this->Category->find('all',array('conditions'=>array('Category.parent_id'=>'201'),'order'=>'Category.id ASC'));
	}
	// SẢN PHẨM
	function menuproduct(){
	mysql_query("SET names utf8");
	 return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.parent_id'=>'3'),'order'=>'Catproduct.id ASC'));
	}
	
	function submenuproduct($id=null){
		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.status'=>1,'Catproduct.parent_id '=>$id),'order'=>'Catproduct.order ASC'));
	}
    function chonmau(){
		return $this->Manufacturer-> find('all',array('conditions'=>array(),'order'=>'Manufacturer.id ASC'));
	}
	 function tenhang($id=null){
		return $this->Manufacturer-> find('all',array('conditions'=>array('Manufacturer.id'=>$id)));
	}
    function showsmenu(){
	mysql_query("SET names utf8");
	 return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.parent_id'=>'12'),'order'=>'Catproduct.id ASC'));
	}
	
	function showsmenu1($id=null){
		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id),'order'=>'Catproduct.id ASC'));
	}
	function showsmenu2($id=null){
		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id),'order'=>'Catproduct.id ASC'));
	}
	
	
	function danhmuc(){
 	 	return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.parent_id'=>11),'order'=>'Catproduct.name ASC'));
 	}
	function typical(){
		return $this->Product->find('all',array('conditions'=>array('Product.status'=>1),'order'=>'Product.id DESC','limit'=>10));
	}
    function productnew(){
		return $this->Product->find('all',array('conditions'=>array('Product.status'=>1),'order'=>'Product.id DESC','limit'=>10));
	}
    function khuyenmai(){
		return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.display'=>'1'),'order'=>'Product.id DESC','limit'=>10));
	}
	function business(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>218),'order'=>'News.id DESC','limit'=>5));
	}
	function customers(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>219),'order'=>'News.id DESC','limit'=>5));
	}
	function science(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>220),'order'=>'News.id DESC','limit'=>5));
	}
    function help(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>156),'order'=>'News.id DESC','limit'=>8));
	}
    function tinkhuyenmai(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>227),'order'=>'News.id DESC','limit'=>5));
	}
    function tinkhuyenmaile(){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>228),'order'=>'News.id DESC','limit'=>5));
	}
    function weblink(){
		return $this->Weblink->find('all',array('conditions'=>array('Weblink.status'=>1),'order'=>'Weblink.id DESC'));
	}
    function cat(){
		return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.status'=>1,'Catproduct.parent_id'=>144)));
	}
    function hsx(){
		return $this->Manufacturer->find('all',array('conditions'=>array('Manufacturer.status'=>1,'Manufacturer.parent_id '=>null)));
	}
    function catcon(){
		return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.status'=>1)));
	}
    function adv1(){
		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1,'Advertisement.display'=>0),'limit'=>1));
	}
    function adv2(){
		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1,'Advertisement.display'=>1),'limit'=>1));
	}
    function advf(){
		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1,'Advertisement.display'=>2),'order'=>'Advertisement.id DESC'));
	}
	function advf10(){
		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1,'Advertisement.display'=>3),'order'=>'Advertisement.id DESC','limit'=>1));
	}
     function advr(){
		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1,'Advertisement.display'=>3),'order'=>'Advertisement.id DESC'));
	}
	
	function menucatproduct4(){
		mysql_query("SET names utf8");
		return $this->Catproduct->find('all',array('conditions'=>array('Catproduct.status'=>1,'Catproduct.parent_id'=>null),'order'=>'Catproduct.id ASC'));
		$_SESSION['huong']=1;
	}

	function submenuproduct3($id=null){

		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id,'Catproduct.status'=>1),'order'=>'Catproduct.id ASC'));

	}
	function submenuproduct4($id=null){

		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id,'Catproduct.status'=>1),'order'=>'Catproduct.id ASC'));

	}
	function submenuproduct2($id=null){

		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id,'Catproduct.status'=>1),'order'=>'Catproduct.id ASC'));

	}


	

	// tin thuoc danh muc

	function submenuproduct1($id=null){

		return $this->Catproduct-> find('all',array('conditions'=>array('Catproduct.parent_id '=>$id,'Catproduct.status'=>1),'order'=>'Catproduct.id ASC'));

	}
	
	
	function thongtintintuc(){
	return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>229),'order'=>'News.id DESC','limit'=>3));	
	}
	function thongtintintucngoai(){
	return $this->News->find('all',array('conditions'=>array('News.status'=>1),'order'=>'News.id DESC','limit'=>5));	
	}
	function sanphambanchay(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.spbanchay'=>1),'order'=>'Product.id DESC','limit'=>7));	
	}
	function sanphamtieubieu(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>1),'order'=>'Product.id DESC','limit'=>18));	
	}
	function sanphammoi(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.newpro'=>1),'order'=>'Product.id DESC','limit'=>6));	
	}
	function binhnuocnong(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.binhnuocnong'=>1),'order'=>'Product.id DESC','limit'=>6));	
	}
	function maylocnuoc(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.maylocnuoc'=>1),'order'=>'Product.id DESC','limit'=>9));	
	}
	function spkhuyenmai(){
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.spkhuyenmai'=>1),'order'=>'Product.id DESC','limit'=>9));	
	}
	function binhluan() { 
	  $this->paginate = array('conditions'=>array('Comment.status'=>1),'limit' => '4','order' => 'Comment.id DESC');
	   $this->set('comment', $this->paginate('Comment',array()));
	
	
	}
	   function ll(){

		mysql_query("SET names utf8");

		return $this->Advertisement->find('all',array('conditions'=>array('Advertisement.status'=>1),'order'=>'Advertisement.id DESC'));

	}
	
	function submenunew($id=null){

		return $this->Category-> find('all',array('conditions'=>array('Category.parent_id '=>$id,'Category.status'=>1),'order'=>'Category.tt DESC'));

	}
	function latest(){
		mysql_query("SET names utf8");
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.hotnew'=>1),'order'=>'News.id DESC','limit'=>8));
	}
	function shownhac(){
		mysql_query("SET names utf8");
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>267),'order'=>'News.id ASC','limit'=>15));
	}
	function showsanpham($id=null) { 
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.newpro'=>1),'order'=>'Product.id DESC','limit'=>12));	
	
	}
	function dathangtheonhom($id=null) { 
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.spdatmuatheonhom'=>1),'order'=>'Product.id DESC','limit'=>6));	
	
	}
	function showsanphambanchay($id=null) { 
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.spbanchay'=>1),'order'=>'Product.id DESC','limit'=>6));	
	
	}
	function showsanphamnoibat($id=null) { 
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.sptieubieu'=>1),'order'=>'Product.id DESC','limit'=>16));	
	
	}
	function showsanpham1($id=null) { 
	return $this->Product->find('all',array('conditions'=>array('Product.status'=>1,'Product.catproduct_id'=>$id),'order'=>'Product.id DESC','limit'=>5));	
	
	}
	function sdt(){

		mysql_query("SET names utf8");

		return $this->Video->find('all',array('conditions'=>array('Video.status'=>1),'order'=>'Video.id DESC','limit'=>5));

	}
	
	function bth_site_online()
        {
            $ip = $this->get_ip();
            
            //update total visitors
            $row = $this->TotalVisitor->query("SELECT total FROM total_visitors");
            $total = $row[0]['total_visitors']['total'] + 1;
            $this->TotalVisitor->query("UPDATE total_visitors SET total = '".$total."'");
            
            $time_now = time(); 
            $date_out = $time_now - 24*60*60; //24h
            
            //delete record if expire 
            $this->Online->query("DELETE FROM onlines WHERE time < {$date_out}"); 
            $sql_query = $this->Online->query("SELECT * FROM onlines WHERE ip='$ip'");

            //not exists IP
            if ( count( $sql_query ) <= 0 ) 
            {
                $this->Online->query("INSERT INTO onlines ( ip, time) VALUES ('$ip','$time_now')");
            }
            //update time
            else 
            {
                $this->Online->query("UPDATE onlines SET time='$time_now' WHERE ip='$ip'");
            }
	}

   
        function bth_get_statistics()
        {
            $time_now = time(); // th?i gian hi?n t?i
            $time_out = $time_now - (3 * 60); //3 minutes
            $date_out = $time_now - 24*60*60;

            //tong so nguoi dang online
            $query = $this->Online->query("select * from onlines WHERE time >= {$time_out}");
            
            if(count($query)>0)
            {
                $who_is_online = count($query); 
            }
            else
            {
                $who_is_online = 0;
            }

            //count 24h
            $query = $this->Online->query("select * from onlines WHERE time >= {$date_out}");
            
            if(count($query)>0)
            {
                $who_is_online_day = count($query); //tong so nguoi dang online
            }
            else
            {
                $who_is_online_day = 0;
            }

            $row = $this->TotalVisitor->query("SELECT total FROM total_visitors");
            $total = $row[0]['total_visitors']['total']; //total pageviews

            return array($who_is_online, $who_is_online_day, $total);
        }
		function get_ip()
        {
                //Get client IP
                if (!empty($_SERVER['HTTP_CLIENT_IP']))  //check ip from share internet
                {
                    $ip=$_SERVER['HTTP_CLIENT_IP'];
                }
                //Check ip is pass from proxy
                elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
                {
                    $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
                }
                else
                {
                    $ip=$_SERVER['REMOTE_ADDR'];
                }

                return $ip;
        }
		
		function videos1(){
 
  return $this->Video->find('all',array('conditions'=>array('Video.status'=>1),'order'=>'Video.id DESC','limit'=>4));
 }
 function videoslish1(){

  
  return $this->Video->find('all',array('conditions'=>array(),'order'=>'Video.id DESC','limit'=>1));
 }
	
	 function get_video($id=null)
 {
  //$id=$_GET['id'];
  $a=$this->Video->findById($id);
  //echo json_encode(DOMAINAD.$a['Video']['video']); die;
  //echo DOMAINAD.$a['Video']['video']; die;

  echo '<iframe width="300" height="250" src="http://www.youtube.com/embed/'. $a['Video']['LinkUrl'] .' " frameborder="0" allowfullscreen></iframe>';
 
  die();
 }
function showtin($id=null){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.category_id'=>$id),'order'=>'News.id DESC','limit'=>8));
	}
	function showtin2($id=null){
		return $this->News->find('all',array('conditions'=>array('News.status'=>1,'News.hotnew'=>1),'order'=>'News.id DESC','limit'=>8));
	}
function daxem($id=null) { 
	
	
	$product=$this->Product->read(null,$id);	
//	
	if(!isset($_SESSION['daxem'])){  $_SESSION['daxem']=array();};
	 		
	 if(isset($_SESSION['daxem']))	 
	 {   
	  if(isset($daxem[$id]))
		 {		 	
					
			 $_SESSION['daxem']=$shopingcart;			 
		 }
	 		 else
		 {	
		 		$daxem[$id]['pid'] = $id;		
				$daxem[$id]['title']=$product['Product']['title'];	
				$daxem[$id]['alias']=$product['Product']['alias'];
				$daxem[$id]['images']=$product['Product']['images'];	
				$daxem[$id]['giakhuyenmai']=$product['Product']['giakhuyenmai'];
				$daxem[$id]['price'] = $product['Product']['price'];				
				$_SESSION['daxem']=$daxem;				
	}
	 	}	
	
	
	}
}

?>
