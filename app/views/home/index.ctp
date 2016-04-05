


<div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">			   


<div id="main-center" style="margin-top:15px;">  



<div id="fragment-1">

	<div id="danhmuccacsanpham">

<div id="noidungcacsanpham">

 <?php  $i=0; 
 $pr = $this->requestAction('comment/sanphamtieubieu/');
	 foreach($pr as $pr) { ;   ?>
<div id="khungsanpham2">
							
			
						
							<div id="anhsanpham2">
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html">

							 <img src="<?php echo DOMAINAD.'timthumb.php?src='.$pr['Product']['images']?>&amp;h=183&amp;w=236&amp;zc=1" alt="<?php echo $pr['Product']['title'];?>"/>
							 </a>
							</div>
							
							
								
								
								
								<div id="motasanpham3">
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
</div>



</div>










               </div>
			 