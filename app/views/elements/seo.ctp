<style>
#zyzt a:hover { text-decoration: underline; color:red;}

</style>

<?php $setting = $this -> requestAction('/comment/setting');?>
<?php foreach($setting as $settings){?>


<?php if(!empty($settings['Setting']['keyword'])) {

?>
<div id="xyzt" style="width:940px; padding:8px 20px; color:blue; font-size:17px; background:#efefef; float:left; border-radius:20px; margin:10px; line-height:23px;">
<?php echo $settings['Setting']['keyword'];?>

</div>

<?php } ?>

<?php if(empty($settings['Setting']['keyword'])) {

?>

<?php } ?>


<?php } ?>