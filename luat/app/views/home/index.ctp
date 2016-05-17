<div class="ttsog">
    <h1>Thành lập doanh nghiệp </h1>

        <div class="foosc">
		<a href="#" title="">
			<img src="<?php echo DOMAIN;?>css/images/mang1.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" />
		</a> 
		<a href="" title="Luật Việt - trên Faw">
			<img src="<?php echo DOMAIN;?>css/images/mang2.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" /> 
		</a>
		<a href="" title="">
			<img src="<?php echo DOMAIN;?>css/images/mang3.png" alt="mang xa hoi" align="absmiddle" style="margin:4px 5px;" /> 
		
		</a> 
		
    </div>
</div>
<?php $news = $this->requestAction('comment/hot');
		foreach($news as $news) { ?>
<div class="alert alert-danger  oscitas-bootstrap-container"> <img src="<?php echo DOMAIN;?>css/new.gif" width="26" style="vertical-align:middle"> <strong><a href="<?php echo DOMAIN;?>tin/<?php echo $news['News']['id'];?>/<?php echo $news['News']['alias'];?>.html" title="<?php echo $news['News']['title'];?>"><?php echo $news['News']['title'];?></a></strong> </div>
		<?php }?>
<div class="clearh5"></div>
<div class="dvtop owl-carousel owl-theme owl-responsive-1024 owl-loaded owl-text-select-on">
     <?php  //echo $this->element('slide');?>           
           
</div>
<div class="clearh5"></div>





<div class="home_category">
	<?php $menupro1 = $this->requestAction('/comment/menucategoryhome') ?>
   <?php foreach($menupro1 as $menupro1){?>
    <div class="catlist">
                <h2><a href="<?php echo DOMAIN;?>danh-sanh-tin/<?php echo $menupro1['Category']['id'];?>/<?php echo $menupro1['Category']['alias'];?>" title="Dịch vụ thành lập doanh nghiệp"><i class="fa fa-university"></i> <?php echo $menupro1['Category']['name'];?></a></h2>
        <div class="descat">
                                    <img class="imgcat" src="<?php echo DOMAINAD;?><?php echo $menupro1['Category']['images'];?>" alt="<?php echo $menupro1['Category']['name'];?>">
                        <p>
						<?php echo $menupro1['Category']['description'];?>
						</p>
            <hr class="hrcat">
        </div>
		
        <div class="licat">
		<?php $showtin = $this->requestAction('/comment/getinfo') ?>
		<?php foreach($showtin as $showtin){?>
		
                        <li><i class="fa fa-sign-in"></i>
                <a href="<?php echo DOMAIN;?>tin/<?php echo $showtin['News']['id'];?>/<?php echo $showtin['News']['alias'];?>.html" title="<?php echo $showtin['News']['title'];?>">
                    <?php echo $showtin['News']['title'];?> </a>
            </li>
		<?php } ?>         
        </div>
		
    </div>
   <?php } ?>
    
  

</div>

