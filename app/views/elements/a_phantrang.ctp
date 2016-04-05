<style type='text/css'>
	#phantrang {float:right; color:#FF0103; font-weight:bold; padding-right:20px;}
	#phantrang a { color:#FF0103; font-weight:bold;}
	#phantrang a:hover {color:#041DFF;}
	#phantrang span {color:#041DFF;}

</style>
<?php if($this->Paginator->counter()!="1 of 1" && $this->Paginator->counter()!="0 of 1"){
		
		if($session->read('lang')==1) { 
			
			echo "Trang:&nbsp ".$this->Paginator->numbers();
		} else {  
			echo "Page:&nbsp ".$this->Paginator->numbers();
		}
	}
?>
<!--		
<div id='phantrang'>
<?php
	if($this->Paginator->counter()!="1 of 1" && $this->Paginator->counter()!="0 of 1"){
		echo $this->Paginator->prev('Previous ', null, null, array('class' => 'disabled')); //Shows the next and previous links
		echo " | ".$this->Paginator->numbers()." | "; //Shows the page numbers
		echo $this->Paginator->next(' Next', null, null, array('class' => 'disabled')); //Shows the next and previous links
		echo " Page ".$this->Paginator->counter(); // prints X of Y, where X is current page and Y is number of pages
	}
?>
</div> -->