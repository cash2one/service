<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="en"><head><title><?php echo C('sitename');?>--会员中心</title><meta name="keywords" content="<?php echo C('keyword');?>"/><meta name="description" content="<?php echo C('content');?>"/><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap-responsive.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-style.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-media.css" /><link href="<?php echo ($Theme['P']['root']); ?>/matrix/font-awesome/css/font-awesome.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/font/googlefont.css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/uniform.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/select2.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/datepicker.css" /></head><body><!--Header-part--><div id="header"><h1><a href="#"></a></h1></div><!--close-Header-part--><!--top-Header-menu--><div id="user-nav" class="navbar navbar-inverse"><ul class="nav"><li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">欢迎光临</span><b class="caret"></b></a><ul class="dropdown-menu"><li><a href="<?php echo U('User/account');?>"><i class="icon-user"></i> 修改密码</a></li><li class="divider"></li><li><a href="<?php echo U('User/logout');?>"><i class="icon-key"></i>退出</a></li></ul></li><li class=""><a title="" href="<?php echo U('User/logout');?>"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li><li class=""><a title="" href="javascript:void(0);">服务热线：<?php echo C('fwrx');?></a></li><li><a title="" href="javascript:void(0);">商务合作：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('qq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li><li><a title="" href="javascript:void(0);">技术支持：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('jszcqq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('jszcqq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li></ul></div><!--close-top-Header-menu--><!--sidebar-menu--><div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a><ul><li class="<?php if(($a == 'index')): ?>active"<?php endif; ?>" ><a href="<?php echo U('User/index');?>"><i class="icon icon-home"></i><span>首页</span></a></li><li class="<?php if(($a == 'info')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/info');?>"><i class="icon icon-group"></i><span>商户信息</span></a></li><li class="<?php if(($a == 'application')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/application');?>"><i class="icon icon-cogs"></i><span>应用设置</span></a></li><li class="<?php if(($a == 'appview')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/appview');?>"><i class="icon icon-twitter-sign"></i><span>应用详情</span></a></li><li class="<?php if(($a == 'routemap')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/routemap');?>"><i class="icon icon-group"></i><span>路由管理</span></a></li><li class="<?php if(($a == 'authtplset')): ?>active"<?php endif; ?>"><a href="<?php echo U('Authset/tplset');?>"><i class="icon icon-th"></i><span>认证页面</span></a></li><li class="submenu <?php if(($a == 'adv')): ?>active"<?php endif; ?>"><a href="#" id="adv"><i class="icon icon-cloud"></i><span>广告管理</span></a><ul><li><a href="<?php echo U('User/adv');?>">广告管理</a></li><li><a href="<?php echo U('User/advrpt');?>">广告统计</a></li></ul></li><li class="submenu <?php if(($a == 'web3g')): ?>active"<?php endif; ?>"><a href="#" id="web3g"><i class="icon icon-th-large"></i><span>小微官网</span></a><ul><li><a href="<?php echo U('index/web/index');?>">网站设置</a></li><li><a href="<?php echo U('web/catelog');?>">网站分类</a></li><li><a href="<?php echo U('web/arts');?>">文章管理</a></li><li><a href="<?php echo U('web/tempset');?>">模板管理</a></li></ul></li><li class="<?php if(($a == 'comment')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/comment');?>"><i class="icon icon-envelope-alt"></i><span>客户留言</span></a></li><li class="<?php if(($a == 'line')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/line');?>"><i class="icon icon-user"></i><span>在线用户管理
	  </span></a></li><li class="<?php if(($a == 'blacklist')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/blacklist');?>"><i class="icon icon-user"></i><span>用户黑白名单管理
	  </span></a></li><li class="submenu <?php if(($a == 'report')): ?>active"<?php endif; ?>" ><a href="#" id="urpt"><i class="icon icon-user"></i><span>用户统计</span></a><ul><li><a href="<?php echo U('User/userchart');?>">统计报表</a></li><li><a href="<?php echo U('User/report');?>">用户列表</a></li><li><a href="<?php echo U('User/reportwx');?>">微信用户列表</a></li></ul></li><li class="<?php if(($a == 'online')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/rpt');?>"><i class="icon icon-signal"></i><span>上网统计</span></a></li><li class="submenu <?php if(($a == 'advfun')): ?>active"<?php endif; ?>" ><a href="#" id="sale"><i class="icon icon-dashboard"></i><span>营销管理</span></a><ul><li><a href="<?php echo U('index/Adv/phonelist');?>">手机号码管理</a></li><li><a href="<?php echo U('adv/set');?>">短信帐号管理</a></li><li><a href="<?php echo U('adv/sms');?>">短信群发</a></li><li><a href="<?php echo U('adv/smslist');?>">短信发送列表</a></li></ul></li><li class="<?php if(($a == 'advyiye')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/advyiye');?>"><i class="icon icon-cloud"></i><span>异业广告推广</span></a></li></ul></div><!--sidebar-menu--><!--main-container-part--><div id="content"><!--breadcrumbs--><div id="content-header"><div id="breadcrumb"><div id="breadcrumb"><a href="<?php echo U('user/index');?>" title="返回首页" class="tip-bottom"><i class="icon-home"></i>首页</a><a href="#" class="current">推广广告管理</a></div></div><h1>投放推广广告</h1></div><!--End-breadcrumbs--><div class="container-fluid" ><hr><div class="row-fluid"><div class="span8"><div class="widget-box"><div class="widget-title"><span class="icon"><i class="icon-align-justify"></i></span></div><div class="widget-content nopadding"><form name="doad"  action="<?php echo U('user/addadvyiye');?>"  method="post" enctype="multipart/form-data" class="form-horizontal"><div class="control-group"><div class="alert span9" style="display: none;margin: 10px 0 10px 150px;"><span id="alertmsg"></span></div></div><div class="control-group"><label class="control-label">广告标题:</label><div class="controls"><input class="span11" type="text"  data-toggle="tooltip" data-trigger="focus" title="请输入标题" data-placement="right" name="title" id="title" value="<?php echo ($info['title']); ?>"/></div></div><div class="control-group"><label class="control-label">内容:</label><div class="controls"><textarea class="textarea_editor span11" rows="20" placeholder="输入内容 ..." name="info"><?php echo (htmlspecialchars_decode($info["info"])); ?></textarea></div></div><!-- <div class="control-group"><label class="control-label">广告备注:</label><div class="controls"><textarea class="textarea_editor span11" rows="2" placeholder="输入内容 ..." name="info"><?php echo (htmlspecialchars_decode($info["info"])); ?></textarea></div></div> --><div class="control-group"><label class="control-label">投放行业:</label><div class="controls"><?php if(is_array($enumdata["trades"])): $i = 0; $__LIST__ = $enumdata["trades"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label class="checkbox"><input type="checkbox" value="<?php echo ($vo["key"]); ?>" name="trade[]" <?php if($info['trade']==$vo['key']){echo "disabled";} ?>/><?php echo ($vo["txt"]); ?></label><?php endforeach; endif; else: echo "" ;endif; ?></div></div><div class="control-group"><label class="control-label">排序:</label><div class="controls"><input class="span11" type="text"  data-toggle="tooltip" data-trigger="focus" title="输入广告投放顺序，数字越大越靠后" data-placement="right" name="sort" id="sort" value="<?php echo ($info['sort']); ?>"/></div></div><div class="control-group"><label class="control-label">广告图片:</label><div class="controls"><img src="<?php echo ($info['pic']); ?>" style="width:200px;"/></br></div></div><div class="control-group"><label class="control-label">选择广告:</label><div class="controls"><input type="file"  name="img" id="upload"/><span >上传图片比例建议:760*480</span></div></div><div class="control-group"><label class="control-label">投放时间:</label><div class="controls"><label>投放时间:</label><div class="" id="startdt" data-date="<?php echo (date('Y-m-d',$info["startdate"])); ?>" data-date-format="yyyy-mm-dd"><input type="text" class="span9 datepicker" value="<?php echo date("Y-m-d") ?>" data-date-format="yyyy-mm-dd" name="startdate" id="startdate" ></div><label>到:</label><div id="enddt" data-date="<?php echo (date('Y-m-d',$info["enddate"])); ?>" data-date-format="yyyy-mm-dd"><input type="text" class="span9 datepicker" value="<?php echo date("Y-m-d",strtotime("+1 month")) ?>" data-date-format="yyyy-mm-dd" name="enddate" id="enddate" ></div></div></div><div class="control-group"><input type="submit"   class="btn btn-success" id="btn_save" value="保存信息" style="margin: 20px;">                                &nbsp;
                                  <a class="btn btn-primary" href="<?php echo U('advyiye');?>">返回列表</a></div></div></form></div><div class="span4 column pull-right"></div></div></div></div></div></div><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/kindeditor/kindeditor-min.js" type="text/javascript"></script><script src="<?php echo ($Theme['P']['root']); ?>/kindeditor/lang/zh_CN.js" type="text/javascript"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.ui.custom.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/matrix.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.uniform.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/select2.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/common.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap-datepicker.js"></script><script>        KindEditor.ready(function(K) {
            K.create('textarea[name="info"]', {
                autoHeightMode : true,
                items:['source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template',  'cut', 'copy', 'paste',
                        'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                        'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                        'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                        'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                        'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 
                        'flash', 'media', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                        'anchor', 'link', 'unlink', '|', 'about'],
                        afterUpload:false,
                        allowFlashUpload:false,
                        allowFileUpload:false,
                        allowImageUpload:false,
                        allowMediaUpload:false,
            });
        });
        
    
    </script><script>var lines;

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
	$('#advyiye').trigger('click');
});
</script></body></html>