<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="en"><head><title><?php echo C('sitename');?>--代理商平台</title><meta name="keywords" content="<?php echo C('keyword');?>"/><meta name="description" content="<?php echo C('content');?>"/><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/elements.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap-responsive.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-style.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-media.css" /><link href="<?php echo ($Theme['P']['root']); ?>/matrix/font-awesome/css/font-awesome.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/font/googlefont.css" rel="stylesheet" /><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.min.js"></script></head><body><link href="<?php echo ($Theme['P']['root']); ?>/css/qq/css/contact.css" rel="stylesheet" type="text/css" /><!--Header-part--><div id="header"><h1><a href="#"></a></h1></div><!--close-Header-part--><!--top-Header-menu--><div id="user-nav" class="navbar navbar-inverse"><ul class="nav"><li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>登录帐号:(<?php echo (session('account')); ?>)</a><ul class="dropdown-menu"><li><a href="<?php echo U('index/pwd');?>"><i class="icon-user"></i> 修改密码</a></li><li class="divider"></li><li><a href="<?php echo U('index/index/alogout');?>"><i class="icon-key"></i>退出</a></li></ul></li><li class=""><a title="" href="<?php echo U('index/index/alogout');?>"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li></ul></div><!--close-top-Header-menu--><!--sidebar-menu--><div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a><ul><li class="<?php if(($nav['a'] == 'index')): ?>active"<?php endif; ?>"><a href="<?php echo U('Index/index');?>"><i class="icon icon-home"></i><span>首页</span></a></li><li class="<?php if(($nav['a'] == 'account')): ?>active"<?php endif; ?>"><a href="<?php echo U('Index/account');?>"><i class="icon icon-group"></i><span>账户管理</span></a></li><li class="<?php if(($nav['a'] == 'routerp')): ?>active"<?php endif; ?>"><a href="<?php echo U('Index/routerp');?>"><i class="icon icon-home"></i><span>路由监控</span></a></li><li class="submenu <?php if(($nav['a'] == 'shop')): ?>active"<?php endif; ?>"><a href="#" id="shop"><i class="icon icon-user"></i><span>商户管理</span></a><ul><li><a href="<?php echo U('Index/shoplist');?>">商户列表</a></li><li><a href="<?php echo U('Index/shopadd');?>">添加商户</a></li></ul></li><li class="submenu <?php if(($nav['a'] == 'adman')): ?>active"<?php endif; ?>"><a href="#" id="adman"><i class="icon icon-cloud"></i><span>广告管理</span></a><ul><li><a href="<?php echo U('Admanage/shopad');?>">广告列表</a></li><li><a href="<?php echo U('Admanage/adrpt');?>">广告统计</a></li></ul></li><li class="submenu <?php if(($nav['a'] == 'pushadv')): ?>active"<?php endif; ?>"><a href="#" id="pushadv"><i class="icon icon-th-large"></i><span>广告推送管理</span></a><ul><li><a href="<?php echo U('pushadv/set');?>">推送设置</a></li><li><a href="<?php echo U('pushadv/index');?>">广告列表</a></li><li><a href="<?php echo U('pushadv/add');?>">投放广告</a></li><li><a href="<?php echo U('pushadv/rpt');?>">投放统计</a></li></ul></li><li class="<?php if(($nav['a'] == 'report')): ?>active"<?php endif; ?>"><a href="<?php echo U('Index/report');?>"><i class="icon icon-envelope-alt"></i><span>资金报表</span></a></li></ul></div><!--sidebar-menu--><!--main-container-part--><div id="content"><!--breadcrumbs--><div id="content-header"><div id="breadcrumb"><a href="<?php echo U('index/index');?>" title="返回首页" class="tip-bottom"><i class="icon-home"></i>首页</a><a href="#" class="current">路由监控</a></div><h1>在线路由统计</h1></div><!--End-breadcrumbs--><div id="pad-wrapper"><div class="btn-group pull-right"><button class="hide " id="today"></button><button class="glow left " id="live">在线路由</button><button class="glow right" id="die">离线路由</button></div></div><div class="row span11"><div id="placeholder" style="height:300px;"></div></div><div class="table-wrapper orders-table section"><div class="pull-left"><h4>统计列表</h4></div><div class="span8"><table class="table table-hover"><thead><tr><th>ID</th><th>路由商家</th><th>最后在线时间</th></tr></thead><tbody id="gridbox"></tbody></table><div id="ajaxpage" class="pagination pull-right"></div></div></div></div></div><script src="<?php echo ($Theme['P']['js']); ?>/jquery.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/theme.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/common.js"></script><script src="<?php echo ($Theme['P']['js']); ?>/flot/jquery.flot.js"></script><script src="<?php echo ($Theme['P']['js']); ?>/flot/jquery.flot.pie.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/matrix.js"></script><script>function AjaxPage(obj){
	var url=$(obj).attr('jump');
	$.getJSON(url,function(data){
		data=eval(data)  ;
		
		 rendertable(data);
	});
}

$(function () {
	
	var stack = 0, bars = true, lines = false, steps = false;
	
	    
	
  	  $("#today").bind("click",function(){
		  $.ajax({
			  url: '<?php echo U('index/routerp');?>',
		        type: "get",
				data:{
					'mode':'today',
					
					},
				dataType:'json',
				error:function(){
						AlertTips("服务器忙，请稍候再试",2000);
						},
				success:function(jsondata){
						var json=eval(jsondata);
						
						var dataset=[];
						var piedata = [];
						
						piedata.push({ label: "在线路由:"+json[0].livecount+"台", data: Math.floor(json[0].livecount) });
								
						
										
						piedata.push({label:"离线路由:"+json[0].diecount+"台",data:Math.floor(json[0].diecount)});

						

						

						 $.plot($("#placeholder"), piedata, { 

							series: {
								pie: { 
									show: true,
									 
								}
						 
							},
							legend: {
						            show: false
						     },
							}
							
						 );
					
						
				}
			  });
  	  	  });

  	$("#live").bind("click",function(){
		  $.ajax({
			  url: '<?php echo U('index/routerp');?>',
		        type: "get",
				data:{
					'flag':'a',
					'info':1
					},
				dataType:'json',
				error:function(){
						AlertTips("服务器忙，请稍候再试",2000);
						},
				success:function(data){
						var bt=[];
						data=eval(data)  ;
						
						 rendertable(data);
				}
			  });
	  	  });
  	$("#die").bind("click",function(){
		  $.ajax({
			  url: '<?php echo U('index/routerp');?>',
		        type: "get",
				data:{
					'flag':'d',
					'info':1
					},
				dataType:'json',
				error:function(){
						AlertTips("服务器忙，请稍候再试",2000);
						},
				success:function(data){
						var bt=[];
						data=eval(data)  ;
						
						 rendertable(data);
				}
			  });
	  	  });
		$("#today").trigger("click");
  	 
  	doRef();
});
function doRef(){
	setTimeout(function(){
		$("#today").trigger("click");
		},30000);
	
}
function rendertable(data){
	
	$("#gridbox").empty();
	$("#ajaxpage").empty();
	var trHtml="";
	var sumshow=0;
	var sumhit=0;
	var dt=data.list;
	for(var vo in dt){
		trHtml+="<tr>";
		trHtml+="<td>"+dt[vo].id+"</td>";

		trHtml+="<td>"+dt[vo].shopname+"</td>";
		trHtml+="<td>"+dt[vo].last_heartbeat_time+"</td>";
		trHtml+="</tr>";
		

	}
	
	$("#gridbox").append(trHtml);
	$("#ajaxpage").append(data.pg);
}


</script></body></html>