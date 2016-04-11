
<div class="row">
<div class="col-md-3">
<div class="navbar-collapse collapse">
   <?php echo $this->element('left');?>
</div>
</div>  		
<div class="col-md-9 col-xs-12">
 <?php  $i=0; 
 $pr = $this->requestAction('comment/sanphamtieubieu/');
	 foreach($pr as $pr) { ;   ?>
<div class="col-xs-6">
<div class="anhsanpham2">
 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html">
 <img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=183&amp;w=236&amp;zc=1" alt="<?php echo $pr['Product']['title'];?>"/>
 </a>
</div>					
<div class="motasanpham3">
	<h4>
	 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
	</h4>
	<h5>
	Mã SP: BA<?php echo $pr['Product']['id'];?>
	</h5>
	</h4>

	</div>
</div>
<?php  $i++; ?>
<?php }?>


</div>
</div>