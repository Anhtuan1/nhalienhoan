



<script type="text/javascript" src="<?php echo DOMAIN; ?>js/jquery.easing.js"></script>
<div id="lofslidecontent45" class="lof-slidecontent">
<div class="preload"><div></div></div>

 <?php $listnews =$this->requestAction('comment/latest'); ?>
  <div class="lof-main-outer">
  	<ul class="lof-main-wapper">
    <?php foreach($listnews as $listnew1) { ?>
  		<li>
        		<img src="<?php echo DOMAINAD.$listnew1['News']['images']; ?>" title="<?php echo $listnew1['News']['title']; ?>" height="300" width="400">           
                 <div class="lof-main-item-desc">
                 <!-- <h3><a target="_parent" title="<?php echo $listnew1['News']['title']; ?>" href="<?php echo DOMAIN; ?>news/view/<?php echo $listnew1['News']['id']; ?>"><?php echo $listnew1['News']['title']; ?></a></h3> -->
<a target="_parent" title="<?php echo $listnew1['News']['title']; ?>" href="<?php echo DOMAIN; ?>news/view/<?php echo $listnew1['News']['id']; ?>/<?php echo $listnew1['News']['alias']; ?>.html">
             <p><?php echo $listnew1['News']['introduction']; ?></p> </a>
             </div>
        </li>
        <?php } ?>  
      </ul>  	
  </div>
 

  <div class="lof-navigator-outer" style="width:286px;">
  		<ul class="lof-navigator">
		<?php $listnews =$this->requestAction('comment/latest'); ?>
        <?php foreach($listnews as $listnew2) { ?>
            <li>
            	<div>
                	<img src="<?php echo DOMAINAD.$listnew2['News']['images']; ?>" style="height:40px; margin-bottom:10px;" />
                	<h3><?php echo $listnew2['News']['title']; ?></h3> 
                  	<!--<span><?php echo $listnew2['News']['introduction']; ?></span> -->
                </div>    
            </li>
            <?php } ?>     		
        </ul>
  </div>
 </div>

<style>
	
	ul.lof-main-wapper li {
		position:relative;	
	}
</style>


