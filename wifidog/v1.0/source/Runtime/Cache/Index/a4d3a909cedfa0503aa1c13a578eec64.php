<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="en"><head><title><?php echo C('sitename');?>--会员中心</title><meta name="keywords" content="<?php echo C('keyword');?>"/><meta name="description" content="<?php echo C('content');?>"/><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap-responsive.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-style.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-media.css" /><link href="<?php echo ($Theme['P']['root']); ?>/matrix/font-awesome/css/font-awesome.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/font/googlefont.css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/datepicker.css" /></head><body><!--Header-part--><div id="header"><h1><a href="#"></a></h1></div><!--close-Header-part--><!--top-Header-menu--><div id="user-nav" class="navbar navbar-inverse"><ul class="nav"><li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">欢迎光临</span><b class="caret"></b></a><ul class="dropdown-menu"><li><a href="<?php echo U('User/account');?>"><i class="icon-user"></i> 修改密码</a></li><li class="divider"></li><li><a href="<?php echo U('User/logout');?>"><i class="icon-key"></i>退出</a></li></ul></li><li class=""><a title="" href="<?php echo U('User/logout');?>"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li><li class=""><a title="" href="javascript:void(0);">服务热线：<?php echo C('fwrx');?></a></li><li><a title="" href="javascript:void(0);">商务合作：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('qq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li><li><a title="" href="javascript:void(0);">技术支持：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('jszcqq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('jszcqq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li></ul></div><!--close-top-Header-menu--><!--sidebar-menu--><div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a><ul><li class="<?php if(($a == 'index')): ?>active"<?php endif; ?>" ><a href="<?php echo U('User/index');?>"><i class="icon icon-home"></i><span>首页</span></a></li><li class="<?php if(($a == 'info')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/info');?>"><i class="icon icon-group"></i><span>商户信息</span></a></li><li class="<?php if(($a == 'application')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/application');?>"><i class="icon icon-cogs"></i><span>应用设置</span></a></li><li class="<?php if(($a == 'appview')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/appview');?>"><i class="icon icon-twitter-sign"></i><span>应用详情</span></a></li><li class="<?php if(($a == 'routemap')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/routemap');?>"><i class="icon icon-group"></i><span>路由管理</span></a></li><li class="<?php if(($a == 'authtplset')): ?>active"<?php endif; ?>"><a href="<?php echo U('Authset/tplset');?>"><i class="icon icon-th"></i><span>认证页面</span></a></li><li class="submenu <?php if(($a == 'adv')): ?>active"<?php endif; ?>"><a href="#" id="adv"><i class="icon icon-cloud"></i><span>广告管理</span></a><ul><li><a href="<?php echo U('User/adv');?>">广告管理</a></li><li><a href="<?php echo U('User/advrpt');?>">广告统计</a></li></ul></li><li class="submenu <?php if(($a == 'web3g')): ?>active"<?php endif; ?>"><a href="#" id="web3g"><i class="icon icon-th-large"></i><span>小微官网</span></a><ul><li><a href="<?php echo U('index/web/index');?>">网站设置</a></li><li><a href="<?php echo U('web/catelog');?>">网站分类</a></li><li><a href="<?php echo U('web/arts');?>">文章管理</a></li><li><a href="<?php echo U('web/tempset');?>">模板管理</a></li></ul></li><li class="<?php if(($a == 'comment')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/comment');?>"><i class="icon icon-envelope-alt"></i><span>客户留言</span></a></li><li class="<?php if(($a == 'line')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/line');?>"><i class="icon icon-user"></i><span>在线用户管理
	  </span></a></li><li class="<?php if(($a == 'blacklist')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/blacklist');?>"><i class="icon icon-user"></i><span>用户黑白名单管理
	  </span></a></li><li class="submenu <?php if(($a == 'report')): ?>active"<?php endif; ?>" ><a href="#" id="urpt"><i class="icon icon-user"></i><span>用户统计</span></a><ul><li><a href="<?php echo U('User/userchart');?>">统计报表</a></li><li><a href="<?php echo U('User/report');?>">用户列表</a></li><li><a href="<?php echo U('User/reportwx');?>">微信用户列表</a></li></ul></li><li class="<?php if(($a == 'online')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/rpt');?>"><i class="icon icon-signal"></i><span>上网统计</span></a></li><li class="submenu <?php if(($a == 'advfun')): ?>active"<?php endif; ?>" ><a href="#" id="sale"><i class="icon icon-dashboard"></i><span>营销管理</span></a><ul><li><a href="<?php echo U('index/Adv/phonelist');?>">手机号码管理</a></li><li><a href="<?php echo U('adv/set');?>">短信帐号管理</a></li><li><a href="<?php echo U('adv/sms');?>">短信群发</a></li><li><a href="<?php echo U('adv/smslist');?>">短信发送列表</a></li></ul></li><li class="<?php if(($a == 'advyiye')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/advyiye');?>"><i class="icon icon-cloud"></i><span>异业广告推广</span></a></li></ul></div><!--sidebar-menu--><div id="content"><div id="content-header"><div id="breadcrumb"><a href="<?php echo U('user/index');?>" title="返回首页" class="tip-bottom"><i class="icon-home"></i>首页</a><a href="#" class="current">用户统计</a></div><h1>微信用户统计</h1>   &nbsp&nbsp注：如果没有绑定微信公众号统计不到数据，如果微信公众号没有微信认证，则微信统计列表得不到微信用户详细数据！
  </div><div class="container-fluid"><hr><div class="row-fluid"><div class="span12"><form action ="<?php echo U('user/reportwx');?>" method ="get"><div class="controls controls-row span8"><label class="control-label span1">开始日期</label><input type="text" id="sdate" name="sdate" value="<?php echo date("Y-m-01") ?>" data-date-format="yyyy-mm-dd" class="span2 datepicker" style="width:90px;"><label class="control-label span1">结束日期</label><input type="text" id="edate" name="edate" value="<?php echo date("Y-m-d") ?>" data-date-format="yyyy-mm-dd" class="span2 datepicker" style="width:90px;">   &nbsp &nbsp <input  type ="submit" value="查询" class="btn btn-success btn-primary"/></form></div><div class="controls controls-row span12">今日&nbsp&nbsp关注：<font size=4 color=red><?php if(($gztoday["gzl"]) == ""): ?>0<?php else: echo ($gztoday['gzl']); endif; ?></font>人 &nbsp取消关注：<font size=4 color=blue><?php if(($gztoday["qxl"]) == ""): ?>0<?php else: echo ($gztoday['qxl']); endif; ?></font>人 &nbsp &nbsp|
昨日&nbsp&nbsp关注：<font size=4 color=red><?php if(($gzyestoday["0"]["gzl"]) == ""): ?>0<?php else: echo ($gzyestoday[0]['gzl']); endif; ?></font>人 &nbsp取消关注：<font size=4 color=blue><?php if(($gzyestoday["0"]["qxl"]) == ""): ?>0<?php else: echo ($gzyestoday[0]['qxl']); endif; ?></font>人&nbsp &nbsp|
本周&nbsp&nbsp关注：<font size=4 color=red><?php if(($gzweek["0"]["gzl"]) == ""): ?>0<?php else: echo ($gzweek[0]['gzl']); endif; ?></font>人 &nbsp取消关注：<font size=4 color=blue><?php if(($gzweek["0"]["qxl"]) == ""): ?>0<?php else: echo ($gzweek[0]['qxl']); endif; ?></font>人 &nbsp &nbsp|
本月&nbsp&nbsp关注：<font size=4 color=red><?php if(($gzyue["0"]["gzl"]) == ""): ?>0<?php else: echo ($gzyue[0]['gzl']); endif; ?></font>人 &nbsp取消关注：<font size=4 color=blue><?php if(($gzyue["0"]["qxl"]) == ""): ?>0<?php else: echo ($gzyue[0]['qxl']); endif; ?></font>人&nbsp &nbsp| 


</div><div class="widget-box"><div class="widget-title"><span class="icon"><i class="icon-th"></i></span><h5>微信统计列表 &nbsp &nbsp &nbsp 总关注人数：<font size=4 color=red><?php if(($count) == ""): ?>0<?php else: echo ($count); ?></font>人<?php endif; ?></h5></div><div class="widget-content nopadding"><table class="table table-bordered table-striped"><thead><tr><th>编号</th><th>微信昵称</th><th>性别</th><th>省份</th><th>城市</th><th>头像</th><th>关注时间</th></tr></thead><tbody><?php if(is_array($lists)): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr><td><?php echo ($i); ?></td><td><?php echo ($vo["nickname"]); ?></td><td><?php if ($vo['sex']==1) {echo "男";}else if($vo['sex']==2) {echo "女";} ?></td><td><?php echo ($vo["province"]); ?></td><td><?php echo ($vo["city"]); ?></td><td><img src="<?php echo ($vo["headimgurl"]); ?>" style="height:50px;width:50px;"></td><td><?php echo (date('Y-m-d ',$vo["subscribe_time"])); ?></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></tbody></table></div></div><div class="pagination pull-right"><?php echo ($page); ?></div></div></div></div></div><!--Footer-part--><div class="row-fluid"><div id="footer" class="span12"> 2014-2015 &copy <?php echo C('sitename');?><a href="<?php echo C('siteurl');?>"><?php echo substr(C('siteurl'),7); ?></a></div></div><!--end-Footer-part--><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.ui.custom.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/matrix.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/common.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap-datepicker.js"></script><script>var lines;

$(function () {
	
	var stack = 0, bars = true, lines = false, steps = false;
	
	    
	 $('.datepicker').datepicker();
  	   	

  		$("#query").bind("click",function(){
			var st=new Date($("#sdate").val());	
			var et=new Date($("#edate").val());	
			if(st.getTime()>et.getTime()){
				AlertTips("开始日期不能大于结束日期",2000);
					return;
			}

			 $.ajax({
	  			  url: '<?php echo U('xxxxx');?>',
	  		        type: "get",
	  				data:{
	  					'mode':'query',
	  					'sdate':$("#sdate").val(),
	  					'edate':$("#edate").val(),
	  					},
	  				dataType:'json',
	  				error:function(){
	  						AlertTips("服务器忙，请稍候再试",2000);
	  						},
	  				success:function(data){
	  						$('#btnkey').val('query');
	  						$('#btnkey').attr('sdate',$("#sdate").val());
	  						$('#btnkey').attr('edate',$("#edate").val());
	  						var bt=[];
	  						var templist=[];
	  						
	  						data=eval(data)  ;
	  						for(var vo in data){
	  							templist.push([data[vo].t,data[vo].td]);
	  							bt.push([data[vo].t,data[vo].ct]);
	  						}
	  						 var plot= $.plot($("#placeholder"), [ bt ], {xaxis:{ticks:templist},  grid: { hoverable: true, clickable: true, borderColor:'#000',borderWidth:1}, series:{lines:{fill:true, show: true}, points:
	  						    { show: true,
	  						    	  }}});
	  					
	  						
	  				}
	  			  });
  	  	});
  		
});


</script><script>$(document).ready(function(){
	$('#urpt').trigger('click');
});
</script></body></html>