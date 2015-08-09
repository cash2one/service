<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" /><title><?php echo ($shopinfo[0]['shopname']); ?></title><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/css.css"><!--风格--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/media.css"><!--自适应--><link href="<?php echo ($Theme['P']['js']); ?>/swiper/swiper.css" rel="stylesheet" /><script type="text/javascript" src="<?php echo ($Theme['P']['js']); ?>/jquery.js"></script><style type="text/css">  .info{width:100%;text-align: left;display: block;height: auto;line-height: 27px;background-color: #ffffff;}   



</style></head><body><!-- 头部 BOF--><div class="topbar"><div class="headtitle font18"><?php echo ($shopinfo[0]['shopname']); ?></div></div><!-- 头部 EOF--><div class="mainbox bgindex clearfix"><!-- 轮播广告 BOF--><div class="focus"><div class="swiper-container"><div class="swiper-wrapper"><?php if(!empty($ad)): if(is_array($ad)): $i = 0; $__LIST__ = $ad;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div  class="swiper-slide"><?php if(($vo['mode']) == "1"): ?><a href="<?php echo U('userauth/showad',array('id'=>$vo['id'],'uid'=>$vo['uid']));?>"><img src="<?php echo ($vo["ad_thumb"]); ?>" width="100%"></a><?php else: ?><img src="<?php echo ($vo["ad_thumb"]); ?>" width="100%"><?php endif; ?></div><?php endforeach; endif; else: echo "" ;endif; else: ?><div  class="swiper-slide"><img src="<?php echo ($Theme['P']['root']); ?>/images/ad/noad01.jpg" width="100%"></div><div  class="swiper-slide"><img src="<?php echo ($Theme['P']['root']); ?>/images/ad/noad02.jpg" width="100%"></div><?php endif; ?></div></div></div><!-- 轮播广告 EOF --><div id="info" class="info" ><div style="background-color:#f99c00;"><font  size=4>&nbsp&nbsp&nbsp<?php echo ($shopxinxi['shopname']); ?>欢迎您使用本店免费WIFI(电脑版)</font><hr size=1 color="#909092"></div><div style="padding-left:15px;">&nbsp&nbsp<?php echo ($shopxinxi['info']); ?></div><hr size=1 color="#909092"><div style="padding-left:20px;height:60px; "><div style="width:100%px;height:50px;float:left;"><img src="<?php echo ($Theme['P']['root']); ?>/images/tel.png" width="50" height="50"  /></div><div style="width:100%px;height:50px;line-height:26px;"><p>&nbsp&nbsp&nbsp<font color="#909092" size=4>联系电话</font></p><p>&nbsp&nbsp<a href="tel:<?php echo ($shopxinxi["tel"]); ?>" class="autotel"><font color="#EE4907" size=4><?php echo ($shopxinxi['tel']); ?></font></a></p></div></div><hr size=1 color="#909092"><div style="padding-left:20px;height:60px;"><div style="width:100%px;height:50px;float:left;"><img src="<?php echo ($Theme['P']['root']); ?>/images/dizhi.png" width="50" height="50"  /></div><div style="width:100%px;height:50px;line-height:26px;"><p>&nbsp&nbsp&nbsp<font color="#909092" size=4>详细地址</font></p><p>&nbsp&nbsp<a href="<?php echo showmapurl($shopxinxi);?>"><font color="#237DB9" size=4><?php echo ($shopxinxi['address']); ?></font></a></p></div></div><hr size=1 color="#909092"></div><!-- 功能菜单 BOF--><div class="bbox"  id="bbox" style="display:none;"><div class="boxcontent"><?php if(($show) == "1"): if($authmode['open'] == true): if(($authmode['overmax']) == "0"): if(($authmode['wx']) == "1"): ?><a href="<?php echo U('userauth/weixin');?>"><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/01.png"/><div class="btntitle">								微信认证
								</div></div></a><?php endif; if(($authmode['wxmm']) == "1"): ?><a href="<?php echo U('userauth/wxauth');?>"><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/01.png"/><div class="btntitle">								微信密码认证
								</div></div></a><?php endif; if(($authmode['allow']) == "1"): ?><a href="<?php echo U('userauth/noAuth');?>"><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/02.png"/><div class="btntitle">							一键上网
							</div></div></a><?php endif; if(($authmode['phone']) == "1"): if($duanxin == 0): ?><a href="<?php echo U('userauth/mobile');?>"><?php else: ?><a href="<?php echo U('userauth/mobileff');?>"><?php endif; ?><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/03.png"/><div class="btntitle">							手机认证
							</div></div></a><?php endif; if(($authmode['reg']) == "1"): if($duanxin == 0): ?><a href="<?php echo U('userauth/reg');?>"><?php else: ?><a href="<?php echo U('userauth/regff');?>"><?php endif; ?><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/04.png"/><div class="btntitle">							注册认证
							</div></div></a><a href="<?php echo U('userauth/login');?>"><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/05.png"/><div class="btntitle">							用户登录
							</div></div></a><?php endif; ?><a href="<?php echo U('userauth/comments');?>"><div class="btnbox"><img src="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/img/06.png"/><div class="btntitle">							客户留言
							</div></div></a><div class="clear"></div><?php else: ?><h2 style="text-align: center;line-height:40px;">每日免费上网次数是<?php echo ($shopinfo[0]['countmax']); ?>次 </br><?php endif; else: ?><h2 style="text-align: center;line-height:40px;">当前时间不提供免费上网服务.</br><?php if(($authmode['openflag']) == "true"): ?>上网开放时间为每日 <?php echo ($authmode["opensh"]); ?>:00点至<?php echo ($authmode["openeh"]); ?>:00点<?php endif; ?></h2><?php endif; endif; ?></div></div><br><div align="center"><input type="image" id="button1"  value="点击免费上网" onclick="button();" src="<?php echo ($Theme['P']['root']); ?>/images/wang.png" width="95%px" height="54px" ></div><!-- 功能菜单 BOF--><div class="footer font16">		技术支持:<?php echo C('fwrx');?></div></div><script type="text/javascript" src="<?php echo ($Theme['P']['js']); ?>/swiper/swiper.js"></script><script type="text/javascript">var btn1=document.getElementById('button1');
var box1=document.getElementById('bbox');
var info1=document.getElementById('info');
function button()

{
if(btn1.value=="点击免费上网"){box1.style.display='';info1.style.display='none';btn1.value="点击免费上网 ";
	}else{box1.style.display='none';btn1.value="点击免费上网";info1.style.display='';}
//$(".bbox").show();


}
           var mySwiper = new Swiper('.swiper-container',{
        	    loop:true,
        	    grabCursor: true,
        	    paginationClickable: true,
        	    calculateHeight:true,
        		autoplay:3000,
        	  });
           $(function(){
	           	$.ajax({
				  	url: '<?php echo U('login/countad');?>',
			        type: "post",
					data:{
						'ids':"<?php echo ($adid); ?>",
						},
					dataType:'json',
					error:function(){},
					success:function(data){}
				  });
           	});
 </script></body></html>