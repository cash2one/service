<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content=" initial-scale=1.0, maximum-scale=1.0, user-scalable=no"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><meta http-equiv="refresh" content="<?php echo ($waitsecond); ?>;URL=<?php echo ($wifiurl); ?>"><title></title><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/css.css"><!--风格--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/media.css"><!--自适应--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/form.css"><!--自适应--><link href="<?php echo ($Theme['P']['js']); ?>/swiper/swiper.css" rel="stylesheet" /><link  href="<?php echo ($Theme['T']['css']); ?>/login.css"  rel="stylesheet"/><style>.btnbox img {
	width: 70px;
}
#bbox {
	margin-top: -20px
}
</style></head><body><div class="topbar"><div class="headtitle font18"><?php echo ($shopinfo[0]['shopname']); ?></div></div><div class="mainbox  bgform clearfix"><?php if(C('OPENPUSH') == 1): ?><div class="focus"><div id='aaa' class="swiper-container" style='height:350px'><div id='bbb' class="swiper-wrapper" style='height:350px'><div id='ccc' class="swiper-slide" style='height:350px'><a href="<?php echo U('userauth/showdlgg',array('id'=>$adsone['id']));?>"><img src="<?php echo ($adsone["pic"]); ?>"  style='height:350px;width:100%'></a></div><?php if(is_array($ad)): $i = 0; $__LIST__ = $ad;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div  class="swiper-slide"><a href="<?php echo U('userauth/showdlgg',array('id'=>$vo['id']));?>"><img src="<?php echo ($vo["pic"]); ?>"  style='height:350px;width:100%'></a></div><?php endforeach; endif; else: echo "" ;endif; ?></div></div><div class="pagination"></div></div><?php endif; ?><div style="text-align: center;margin:-45px auto;" ><div class="loadingbox"><!-- <img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/wait.gif"/> --><div class="loading"></div><p id="loadtext">		正在验证中，请耐心等待...
</p></div></div><div class="blockdiv"></div></div><div class="footer font16">		技术支持:<?php echo C('fwrx');?></div></body><script type="text/javascript" src="<?php echo ($Theme['P']['js']); ?>/jquery.js"></script><?php if(C('OPENPUSH') == 1): ?><script type="text/javascript" src="<?php echo ($Theme['P']['js']); ?>/swiper/swiper.js"></script><script>           var mySwiper = new Swiper('.swiper-container',{
        	    pagination: '.pagination',
        	    loop:true,
        	    grabCursor: true,
        	    paginationClickable: true,
        	    calculateHeight:true,
        		autoplay:3000,
        	  });

  var secs =<?php echo ($waitsecond); ?>; //倒计时的秒数 
function load(){
    for(var i=secs;i>=0;i--) 
    { 
        window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000); 
    } 
}

function doUpdate(num){ 
  if(num==0){
    document.getElementById('loadtext').innerHTML = '认证中......' ;
  }else{
    document.getElementById('loadtext').innerHTML = '还需('+num+')秒认证成功' ;
  }
}
load();
 </script><?php endif; ?><style>#aaa #bbb #ccc{
	width: 100%
}
</style><script>function adapt(){ 
var tableWidth = $("#imgTable").width(); //表格宽度 
var img = new Image(); 
img.src =$('#imgs').attr("src") ; 
var imgWidth = img.width; //图片实际宽度 
if(imgWidth<tableWidth){ 
$('#imgs').attr("style","width: auto"); 
}else{ 
$('#imgs').attr("style","width: 100%"); 
} 
} 
</script></html>