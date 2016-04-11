<div class="row">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->

					<div id="slider">
						<!-- Wrapper for slides -->						
						<div class="carousel-inner" role="listbox">						
						
							<?php $slide = $this -> requestAction('/comment/slideshow');?>
							 <?php  $dem = 0; foreach($slide as $slide){ ?>							
								<div class="item <?php if($dem==0) { echo 'active'; }?>">
									<a href="#"><img src="<?php echo DOMAINAD;?><?php echo $slide['Slideshow']['images'];?>" alt="thiet bi mam non"></a>
								</div>	
							<?php $dem++; } ?>
						</div>
						
					</div>
					<ol class="carousel-indicators" id="chose_move">
					<?php for($i=0;$i<$dem;$i++) {?>
						<li data-target="#myCarousel" data-slide-to="<?php echo $i;?>" class="nomal_chose <?php if($i==0) { echo 'active'; }?>"></li>
					<?php } ?>
					</ol>
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					  </a>
</div>

</div>