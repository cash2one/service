<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content=" initial-scale=1.0, maximum-scale=1.0, user-scalable=no"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><title><?php echo ($shopinfo[0]['shopname']); ?></title><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/css.css"><!--风格--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/media.css"><!--自适应--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/form.css"><!--自适应--><title><?php echo ($shopinfo[0]['shopname']); ?></title><style type="text/css">img{vertical-align:middle;}  
</style></head><body><div class="topbar"><div class="headtitle font18"><?php echo ($shopinfo[0]['shopname']); ?></div></div><div class="mainbox bgform clearfix"><div class="newsbox"><div class="newshead"><div class="newtitle"><?php echo ($adinfo["title"]); ?></div><div>日期:<?php echo (date('Y-m-d',$adinfo["add_time"])); ?></div></div><br><div  class="swiper-slide"><img src="<?php echo ($adinfo["pic"]); ?>" width="100%"></div><br><div class="newsinfo"><?php echo (htmlspecialchars_decode($adinfo["info"])); ?></div><br><br>相关链接：<br><br><?php if(is_array($alldlgg)): $i = 0; $__LIST__ = $alldlgg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U('userauth/showdlgg',array('id'=>$vo['id']));?>"><img src="<?php echo ($vo["pic"]); ?>" width="80" height="80" >&nbsp<?php echo ($vo["title"]); ?></a><br><br><?php endforeach; endif; else: echo "" ;endif; ?><a class="btn_base corner-all-10 c-eee  t-333  uba b-wh mr-tb-10" href="javascript:void(0);" id="btn_back">返&nbsp&nbsp&nbsp回</a></div><div class="blockdiv"></div><div class="footer font16">		技术支持:<?php echo C('fwrx');?></div></div><script type="text/javascript" src="<?php echo ($Theme['P']['js']); ?>/jquery.js"></script><script>	$(document).ready(function(){
		  
		$('#btn_back').bind('click',function(){
			history.go(-1);
		});
	});

	
</script></body></html>