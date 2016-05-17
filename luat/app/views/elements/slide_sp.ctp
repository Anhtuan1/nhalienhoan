<script src="<?php echo DOMAIN;?>js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<?php echo DOMAIN;?>js/slides.min.jquery.js"></script>
	<style type="text/css" media="screen">
		#slides4 .slides_container {
			width:770px;
			display:none;
			margin:auto;
		}

		#slides4 .slides_container .s4 {
			width:770px;
			height:540px;
			display:block;
			color:#FFF;
		}
		#slides4 .pagination {
			display:inline;
			list-style:none;
			margin-left:330px;
			padding:0;
			text-align:center;
		}
		#slides4 .prev {width:50px; position:absolute; z-index:30; margin-top:-300px;}
		#slides4 .next{width:50px; position:absolute; z-index:30;margin-left:975px; margin-top:-300px; }
		/*
			Optional:
			Show the current slide in the pagination
		*/
		#slides4 .pagination .current a {
			color:red;
		}
		.pagination {
			margin:26px auto 0;
			margin-left:330px;
			width:100px;
		}

		.pagination li {
			margin:0 1px;
			list-style:none;
			padding-left:360px;
		}

		.pagination li a {
			display:block;
			width:12px;
			height:0;
			padding-top:12px;
			background-image:url(<?php echo DOMAIN; ?>css/images/pagination.png);
			background-position:0 0;
			float:left;
			overflow:hidden;
		}

		.pagination li.current a {
			background-position:0 -12px;
		}
	</style>
	<script>
		$(function(){
			$('#slides4').slides({
				preload: true,
				effect: 'slide',
				hoverPause: true,
				play: 5000,
				pause: 2500,
				generateNextPrev: false
			});
		});
	</script>
	<div id="slides4">
		<?php $p=$this->requestAction('/comment/showsanphamnoibat/'); $dem=(int)(count($p)/4); if(count($p)%4!=0) {$dem++;} ?>
		<div class="slides_container">
			<?php for($i=0;$i<$dem;$i++) { ?>
				<div class="s4">
					<?php for($j=0;$j<4;$j++) { ?>
						<?php if(($i*4+$j)<count($p)) { ?>
							<?php $k=$i*4+$j; $pr=$p[$k] ; ?>
							<div id="khungsanpham2">
							<?php if(!empty($pr['Product']['phantram'])) { ?>
							<img alt="banchay" src="<?php echo DOMAIN;?>css/images/banchay.png" style=" position: absolute; width:80px;" />
							<div  class='phantramgiamgia'>							
								<?php echo $pr['Product']['phantram'];?>
							</div>

							<?php } ?>
							<a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html" >
							<!--<img alt="banchay" src="<?php echo DOMAIN;?>images/banchay.png" style=" position: absolute; width:80px;" />-->
							<div id="anhsanpham2">
							<img alt="" src="<?php echo DOMAINAD;?><?php echo $pr['Product']['images'];?>"/>
							</div>
							</a>
							<div id="motasanpham2">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>
							</div>

							<div id="motasanpham3" class="chiechop">
							<h4>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"><?php echo $pr['Product']['title'];?></a>
							</h4>

							<?php if(!empty($pr['Product']['giakhuyenmai'])) { ?>
							<h5>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"> <?php echo number_format( $pr['Product']['price'],0);?> đ </a>
							</h5>
							<h6>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html">  <?php echo number_format( $pr['Product']['price'],0);?> đ  </a>
							</h6>
							<?php } ?>

							<?php if(empty($pr['Product']['giakhuyenmai'])) { ?>
							<h5>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html"> <?php echo number_format( $pr['Product']['price'],0);?> đ </a>
							</h5>
							<h6>
							 <a href="<?php echo DOMAIN;?>sp/<?php echo $pr['Product']['id'];?>/<?php echo $pr['Product']['alias'];?>.html">  <?php echo number_format( $pr['Product']['price'],0);?> đ  </a>
							</h6>
							<?php } ?>

							</div>

							</div>
						<?php } else {break;}?>
					<?php } ?>
				</div>
			<?php } ?>
		</div>
		<!--<a href="#" class="prev"><img src="<?php echo DOMAIN; ?>css/images/pre.png" alt="Prev"></a>
		<a href="#" class="next"><img src="<?php echo DOMAIN; ?>css/images/next.png" alt="Next"></a>-->
	</div>

