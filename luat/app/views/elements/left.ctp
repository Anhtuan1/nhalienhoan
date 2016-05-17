<div id="wapsdb">
<?php $menupro1 = $this->requestAction('/comment/menucategory') ?>
   <?php foreach($menupro1 as $menupro1){?>
<div class="wapsdblist">
<h3><a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro1['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>"> <?php echo $menupro1['Category']['name'];?> </a> </h3>
<?php $menupro2 = $this->requestAction('/comment/submenunew/'.$menupro1['Category']['id']) ?>
   <?php foreach($menupro2 as $menupro2){?>
<li>
<i class="fa fa-check-circle-o"></i>
	<a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro2['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>"> <?php echo $menupro2['Category']['name'];?> </a>
</li>
   <?php } ?>
</div>
   <?php } ?>
</div>

	
			