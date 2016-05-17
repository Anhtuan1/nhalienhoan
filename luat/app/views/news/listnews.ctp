


             
            

 <div class="wapcont">


<style>
.m<?php echo $cat['Category']['id'];?> { 
color:#000;
    
	background:#F3F3F3;
	border-top:2px solid #404040;
}

</style>


     <h1><?php echo $cat['Category']['name'];?></h1>
	 <div class="mycont"> </div>
        <?php if(count($listnews)==1) { ?>
		<?php foreach ($listnews as $listnews) { ?>
		<div class="m1" style="padding:3px 10px !important;min-height: 385px !important;">            
		<?php echo $listnews['News']['content'] ?>
		</div>
		<?php } ?>
		      <?php } else { if(count($listnews) > 1) { ?>
		<div class="arlist">            
             <div class="clearfix"> 		                   
                <div class="roundBoxBody">
                     <?php  if($listnews){?>
                        <?php  foreach($listnews as $itm){ ?>
                            <div class="intro-content" >                           
                                	 <a  style="color: #237BA0 !important;" href="<?php echo DOMAIN?>tin/<?php echo $itm['News']['id']?>/<?php echo $itm['News']['alias']?>.html">
                                            <img src="<?php echo DOMAINAD;?><?php echo $itm['News']['images']?>" alt="<?php echo $itm['News']['title']?>" style="max-width:200px; float:left; margin-right:10px;">
                                     </a>
                                  
								  
                                    <h3>
                                        <a  style="color: #237BA0 !important;" href="<?php echo DOMAIN?>tin/<?php echo $itm['News']['id']?>/<?php echo $itm['News']['alias']?>.html">
                                            <?php echo strip_tags($this->Text->truncate( $itm['News']['title'],130,array('ending' => '...','exact' => false)));?>
                                        </a>
                                    </h3>     
                                    <div style="padding-left:30px;">	                                                        		
                                   		<?php echo strip_tags($this->Text->truncate( $itm['News']['introduction'],290,array('ending' => '...','exact' => false)));?>
                                    </div>
                                    </div>
                                    <div class="detail" align="right" style="margin-right:40px;">
                                    	<a href="<?php echo DOMAIN?>tin/<?php echo $itm['News']['id']?>/<?php echo $itm['News']['alias']?>.html">
                                    	      <u><i>Chi tiết</i></u> 
    			                      	 </a> 
                                         
                                    </div> 
                             
                             
                              <div class="clearfix"></div><br /><div style="border-bottom: 1px dotted black;"></div>   
                        <?php } }else{?> 
                            <div id="noidung">
                                <p>Chưa có tin</p>
                            </div>
                        <?php }?>
     	
                   <div id="page" style="float: right;">        	
                        <?php if($paginator->numbers()!=null){
            				$paginator->options(array('url' => $this->passedArgs));
            				echo $paginator->prev('<<', null, null, array('class' => 'disabled'));echo "&nbsp;&nbsp;&nbsp;";
            				echo $paginator->numbers();echo "&nbsp;&nbsp;&nbsp;";
            				echo $paginator->next('>>' , null, null, array('class' => 'disabled'));
            				echo "</span>";
                        }?>
                   </div>                             
                                            
                </div>
             </div>            
             <div class="clearfix"></div>
        </div> 
		<?php } }?>
		
        <div class="b"><div class="b"><div class="b"></div></div></div>
    
</div>
  <?php echo $this->element('left');?>
			    