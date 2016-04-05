<?php if($session->read('lang')==1){?>
<div id="left">
               <?php echo $this->element('left');?>
               </div>

   		       <div id="main"  style="float:left;">	
 <div id="main-center">
<div id="danhmuccacsanpham">
    <div id="tieudecacdanhmuc"><h1 style="font-size:14px;"> <?php echo $views['News']['title']?> </h1></div>
    <div class="clearfix"> 		                   
                <div class="roundBoxBody" style="padding:20px 10px !important;min-height: 545px !important;">
                        <?php echo $views['News']['content']?>
                </div>  
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style ">
<a class="addthis_button_preferred_1"><img src="<?php echo DOMAIN;?>images/btn_fb_55px.gif"/></a>
<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
<a class="addthis_button_tweet"></a>
<a class="addthis_button_pinterest_pinit"></a>
<a class="addthis_counter addthis_pill_style"></a>

</div>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=xa-50c409c76063356d"></script>
<!-- AddThis Button END -->                
             </div>  
			 

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-comments" data-href="<?php echo DOMAIN; ?>chi-tiet-tin/<?php echo $views['News']['id']?>" data-num-posts="3" data-width="550"></div>



             <div class="clearfix"></div>
             <?php if($list_other!=null){?>                      
                            <div style="padding: 10px !important;">
                                <h2>Tin tức liên quan</h2> <hr style="width: 200px;" />
                            
                            <div style="margin:10px; text-align:justify;" class="imf-product">
                            	<ul class="list-news" style="list-style: none outside none;">
                                    <?php foreach($list_other as $news){ ?>
                                		<li><a href="<?php echo DOMAIN;?>tin/<?php echo $news['News']['id'];?>">- <?php echo $news['News']['title']?></a></li>
                                    <?php } ?>
                                </ul>
                            </div> 
                            </div>                       
                <?php } ?>
                            
</div>   
</div>

 </div>
			    
<?php } if($session->read('lang')==2){?>
<div id="sanphamchitiet">
    <div class="top"><?php echo $views['News']['title_en']?></div>
    <div class="clearfix"> 		                   
                <div class="roundBoxBody" style="padding:20px 10px !important;min-height: 845px !important;">
                        <?php echo $views['News']['content_en']?>
                </div>                  
             </div>            
             <div class="clearfix"></div>
             <?php if($list_other!=null){?>                      
                            <div style="padding: 10px !important;">
                                <h2>Related News</h2> <hr style="width: 200px;" />
                            
                            <div style="margin:10px; text-align:justify;" class="imf-product">
                            	<ul class="list-news" style="list-style: none outside none;">
                                    <?php foreach($list_other as $news){ ?>
                                		<li><a href="<?php echo DOMAIN;?>tin-tuc/chi-tiet-tin/<?php echo $news['News']['id'];?>">- <?php echo $news['News']['title_en']?></a></li>
                                    <?php } ?>
                                </ul>
                            </div> 
                            </div>                       
                <?php } ?>
                            
</div>   
<?php }?>



