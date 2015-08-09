<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="en"><head><title><?php echo C('sitename');?>--会员中心</title><meta name="keywords" content="<?php echo C('keyword');?>"/><meta name="description" content="<?php echo C('content');?>"/><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap-responsive.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-style.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-media.css" /><link href="<?php echo ($Theme['P']['root']); ?>/matrix/font-awesome/css/font-awesome.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/font/googlefont.css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/uniform.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/select2.css" /></head><body><!--Header-part--><div id="header"><h1><a href="#"></a></h1></div><!--close-Header-part--><!--top-Header-menu--><div id="user-nav" class="navbar navbar-inverse"><ul class="nav"><li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">欢迎光临</span><b class="caret"></b></a><ul class="dropdown-menu"><li><a href="<?php echo U('User/account');?>"><i class="icon-user"></i> 修改密码</a></li><li class="divider"></li><li><a href="<?php echo U('User/logout');?>"><i class="icon-key"></i>退出</a></li></ul></li><li class=""><a title="" href="<?php echo U('User/logout');?>"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li><li class=""><a title="" href="javascript:void(0);">服务热线：<?php echo C('fwrx');?></a></li><li><a title="" href="javascript:void(0);">商务合作：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('qq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li><li><a title="" href="javascript:void(0);">技术支持：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('jszcqq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('jszcqq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li></ul></div><!--close-top-Header-menu--><!--sidebar-menu--><div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a><ul><li class="<?php if(($a == 'index')): ?>active"<?php endif; ?>" ><a href="<?php echo U('User/index');?>"><i class="icon icon-home"></i><span>首页</span></a></li><li class="<?php if(($a == 'info')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/info');?>"><i class="icon icon-group"></i><span>商户信息</span></a></li><li class="<?php if(($a == 'application')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/application');?>"><i class="icon icon-cogs"></i><span>应用设置</span></a></li><li class="<?php if(($a == 'appview')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/appview');?>"><i class="icon icon-twitter-sign"></i><span>应用详情</span></a></li><li class="<?php if(($a == 'routemap')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/routemap');?>"><i class="icon icon-group"></i><span>路由管理</span></a></li><li class="<?php if(($a == 'authtplset')): ?>active"<?php endif; ?>"><a href="<?php echo U('Authset/tplset');?>"><i class="icon icon-th"></i><span>认证页面</span></a></li><li class="submenu <?php if(($a == 'adv')): ?>active"<?php endif; ?>"><a href="#" id="adv"><i class="icon icon-cloud"></i><span>广告管理</span></a><ul><li><a href="<?php echo U('User/adv');?>">广告管理</a></li><li><a href="<?php echo U('User/advrpt');?>">广告统计</a></li></ul></li><li class="submenu <?php if(($a == 'web3g')): ?>active"<?php endif; ?>"><a href="#" id="web3g"><i class="icon icon-th-large"></i><span>小微官网</span></a><ul><li><a href="<?php echo U('index/web/index');?>">网站设置</a></li><li><a href="<?php echo U('web/catelog');?>">网站分类</a></li><li><a href="<?php echo U('web/arts');?>">文章管理</a></li><li><a href="<?php echo U('web/tempset');?>">模板管理</a></li></ul></li><li class="<?php if(($a == 'comment')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/comment');?>"><i class="icon icon-envelope-alt"></i><span>客户留言</span></a></li><li class="<?php if(($a == 'line')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/line');?>"><i class="icon icon-user"></i><span>在线用户管理
	  </span></a></li><li class="<?php if(($a == 'blacklist')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/blacklist');?>"><i class="icon icon-user"></i><span>用户黑白名单管理
	  </span></a></li><li class="submenu <?php if(($a == 'report')): ?>active"<?php endif; ?>" ><a href="#" id="urpt"><i class="icon icon-user"></i><span>用户统计</span></a><ul><li><a href="<?php echo U('User/userchart');?>">统计报表</a></li><li><a href="<?php echo U('User/report');?>">用户列表</a></li><li><a href="<?php echo U('User/reportwx');?>">微信用户列表</a></li></ul></li><li class="<?php if(($a == 'online')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/rpt');?>"><i class="icon icon-signal"></i><span>上网统计</span></a></li><li class="submenu <?php if(($a == 'advfun')): ?>active"<?php endif; ?>" ><a href="#" id="sale"><i class="icon icon-dashboard"></i><span>营销管理</span></a><ul><li><a href="<?php echo U('index/Adv/phonelist');?>">手机号码管理</a></li><li><a href="<?php echo U('adv/set');?>">短信帐号管理</a></li><li><a href="<?php echo U('adv/sms');?>">短信群发</a></li><li><a href="<?php echo U('adv/smslist');?>">短信发送列表</a></li></ul></li><li class="<?php if(($a == 'advyiye')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/advyiye');?>"><i class="icon icon-cloud"></i><span>异业广告推广</span></a></li></ul></div><!--sidebar-menu--><div id="content"><div id="content-header"><div id="breadcrumb"><a href="<?php echo U('user/index');?>" title="返回首页" class="tip-bottom"><i class="icon-home"></i>首页</a><a href="#" class="current">应用设置</a></div><h1>应用设置</h1></div><div class="container-fluid"><hr><div class="row-fluid"><div class="span8"><div class="widget-box"><div class="widget-title"><span class="icon"><i class="icon-align-justify"></i></span><h5>编辑</h5></div><div class="widget-content nopadding"><form name='form' action="index.php?m=User&a=doapp" method="post" class="form-horizontal" enctype="multipart/form-data"><div class="control-group"><label class="control-label">认证模式:</label><div class="controls"><?php if(is_array($authmode)): $i = 0; $__LIST__ = $authmode;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label><input type="checkbox" value="<?php echo ($vo["key"]); ?>" name="authmode[]" <?php echo showauthcheck($vo['key'],$info['authmode']);?>/><?php echo ($vo["txt"]); ?></label><?php endforeach; endif; else: echo "" ;endif; ?></div></div><div class="control-group"  ><label class="control-label">手机认证短信选择：</label><div class="controls"><label><input type="radio" value="0" name="renzheng" <?php if(substr($info['authmode'],-1)=="0"){echo "checked";} ?>>虚拟信息认证 </label><label><input type="radio" value="1" name="renzheng" <?php if(substr($info['authmode'],-1)=="1"){echo "checked";} ?> >短信认证 </label><span class="help-block">请选择手机信息认证方式</span></div><label class="control-label">短信认证内容：</label><div class="controls"><textarea rows="3" class="span11" name="duanxin" ><?php echo ($info["duanxin"]); ?></textarea><span class="help-block">短信认证模板，不要超过64个字，验证码位置请用"$code"代替！</span></div><label class="control-label">每日短信认证发送条数 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入条数"  name="smscount" id="countmax" value="<?php echo ($info['smscount']); ?>"/><span class="help-block">本日允许通过发送短信认证条数</span></div></div><div class="control-group"  id="wxacc" style="display:none;"><label class="control-label">微信公众号 :</label><div class="controls"><input type="text" class="span11" placeholder="微信号"  name="wx" id="wx" value="<?php echo echojsonkey(showauthdata($ma,$info['authmode']),'user');?>" /><span class="help-block">请输入您想让用户关注的微信公众号</span></div></div><div class="control-group" id="wxauth" style="display:none;"><label class="control-label">微信名称 :</label><div class="controls"><input type="text" class="span11" placeholder="输入微信名称" name="wxauthpwd" id="wxauthpwd" value="<?php echo echojsonkey(showauthdata($ma,$info['authmode']),'pwd');?>"/><span class="help-block">输入微信名称</span></div><label class="control-label">微信原始ID号 :</label><div class="controls"><input type="text" class="span11" placeholder="输入微信原始ID号" name="wxysid" id="wxysid" value="<?php echo echojsonkey(showauthdata($ma,$info['authmode']),'ysid');?>"/><span class="help-block">输入微信原始ID号</span></div></div><div class="control-group" id="wxmima" style="display:none;"><label class="control-label">微信认证密码 :</label><div class="controls"><input type="text" class="span11" placeholder="输入微信认证密码" name="wxpass" id="wxpass" value="<?php echo echojsonkey(showauthdata('4',$info['authmode']),'pass');?>"/><span class="help-block">输入微信认证密码</span></div></div><div class="control-group" id="wxewm" style="display:none;"><label class="control-label">微信二维码:</label><div class="controls"><img src="<?php echo ($info['wxewm']); ?>" style="width:150px;"/></div><label class="control-label">上传图片:</label><div class="controls"><input type="file"  name="img"></div><div class="controls"><span class="help-block blue span8">建议上传图片规格:200*200</span></div><label class="control-label">微信认证方式选择：</label><div class="controls"><div style="float:left;"><label><input type="radio" value="0" name="wxrzfs" <?php if($info['wxrzfs']=="0"){echo "checked";} ?>>自动回复一键认证 </label><label><input type="radio" value="1" name="wxrzfs" <?php if($info['wxrzfs']=="1"){echo "checked";} ?> >回复验证码认证（取消关注会断网） </label><span class="help-block">选择一种微信认证方式，自动回复一键认证和回复验证码认证。</span><label><br></label></div></div><label class="control-label">微信认证成功提示：</label><div class="controls"><textarea rows="3" class="span11" name="wxsuccess" ><?php echo ($info["wxsuccess"]); ?></textarea><span class="help-block">商家的微信公众平台绑定本网站指定的URL和TOKEN后认证成功的提示，取消关注会断网！</span></div><label class="control-label">关注微信后的提示：</label><div class="controls"><textarea rows="3" class="span11" name="wxgzts" ><?php echo ($info["wxgzts"]); ?></textarea><span class="help-block">商家的微信公众平台绑定本网站指定的URL和TOKEN后关注后的提示（如果设置了第三方微信平台URL此功能无效），取消关注会断网！</span></div><label class="control-label">微信公众号的AppID和appsecret :</label><div class="controls"><input type="text"  class="span11" placeholder=""  name="wxappid" id="wxappid" value="<?php echo ($info['wxappid']); ?>"/><span class="help-block">微信公众号的AppID和appsecret，请以"＝"号为分隔（即"appid=appsecret"），不设置或设置错误拉取不到关注粉丝数据（微信公众号必须通过微信认证)。</span></div><label class="control-label">第三方微信平台URL :</label><div class="controls"><input type="text"  class="span11" placeholder=""  name="threadurl" id="threadurl" value="<?php echo ($info['threadurl']); ?>"/><span class="help-block">第三方微信平台的URL，设置后可对接第三方微信平台。</span></div></div><div class="control-group"><label class="control-label">上网时段控制 :</label><div class="controls"><select name="sh" id="sh" class="span3"><?php $__FOR_START_4631__=0;$__FOR_END_4631__=24;for($i=$__FOR_START_4631__;$i < $__FOR_END_4631__;$i+=1){ ?><option value="<?php echo ($i); ?>" <?php if(($info['sh']) == $i): ?>selected<?php endif; ?>><?php echo ($i); ?>:00点</option><?php } ?></select><label class="span1">到</label><select name="eh" id="eh" class="span3"><?php $__FOR_START_14200__=0;$__FOR_END_14200__=24;for($i=$__FOR_START_14200__;$i < $__FOR_END_14200__;$i+=1){ ?><option value="<?php echo ($i); ?>" <?php if(($info['eh']) == $i): ?>selected<?php endif; ?>><?php echo ($i); ?>:00点</option><?php } ?></select><div class="span5"></div><span class="span12 help-block">允许用户上网的时间范围。0到23点代表全天开放 0到0点代表全天不开放</span></div></div><div class="control-group"><label class="control-label">上网限制 :</label><div class="controls"><label><input type="radio" value="1" name="countflag" <?php if(($info['countflag']) == "1"): ?>checked<?php endif; ?>>启用
                 </label><label><input type="radio" value="0" name="countflag" <?php if(($info['countflag']) == "0"): ?>checked<?php endif; ?>>停用 
    		</label><span class="help-block">上网限制,可有效防止员工长时间占用无线网络</span></div></div><div class="control-group"><label class="control-label">上网允许认证次数 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入认证次数"  name="countmax" id="countmax" value="<?php echo ($info['countmax']); ?>"/><span class="help-block">本日允许使用wifi的次数（在启用上网限制功能后有效）</span></div></div><div class="control-group"><label class="control-label">临时上网时间限制 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入时间(单位:分钟)"  name="temptime" id="temptime" value="<?php echo ($info['temptime']); ?>"/><span class="help-block">允许用户临时上网的时间，以用于微信认证(单位:分钟)。注:不限制时间请填:0</span></div></div><div class="control-group"><label class="control-label">上网时间限制 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入时间(单位:分钟)"  name="timelimit" id="timelimit" value="<?php echo ($info['timelimit']); ?>"/><span class="help-block">允许用户上网的时间(单位:分钟)。注:不限制时间请填:0</span></div></div><div class="control-group"><label class="control-label">上网流量限制 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入限制流量(单位:M)"  name="ratelimit" id="ratelimit" value="<?php echo ($info['ratelimit']); ?>"/><span class="help-block">允许用户的下载流量(单位:M)。注:不限制流量请填:0</span></div></div><div class="control-group"><label class="control-label">上网倒计时 :</label><div class="controls"><input type="text"  class="span11" placeholder="请输入倒计时间(单位:秒)"  name="djs" id="djs" value="<?php echo ($info['djs']); ?>"/><span class="help-block">使用倒计时模板时，倒计时时间（单位为:秒）</span></div></div><div class="control-group"><label class="control-label">认证后行为:</label><div class="controls"><label><input type="radio" value="1" name="authaction" <?php if(($info['authaction']) == "1"): ?>checked<?php endif; ?>>跳转指定网页
                 </label><label><input type="radio" value="0" name="authaction" <?php if(($info['authaction']) == "0"): ?>checked<?php endif; ?>>不跳转
    		</label><label><input type="radio" value="2" name="authaction" <?php if(($info['authaction']) == "2"): ?>checked<?php endif; ?>>跳转请求网页
				 </label><label><input type="radio" value="3" name="authaction" <?php if(($info['authaction']) == "3"): ?>checked<?php endif; ?>>跳转到微官网
				 </label><span class="help-block">用户通过认证后引导用户行为选择。</span></div></div><div class="control-group"><label class="control-label">指定跳转URL :</label><div class="controls"><input type="text" class="span11" placeholder="跳转网页地址 " name="jumpurl" id="jumpurl" value="<?php echo ($info['jumpurl']); ?>"/></div></div><div class="control-group"><div class="span1"></div><div class="alert alert-block span10 hide" id="msgbox"><h4 class="alert-heading">提示信息</h4><div id="alertmsg"></div></div></div><div class="form-actions"><input type="submit" class="btn btn-success" name="sub" value="保存"/></div></form></div></div></div></div></div></div><!--Footer-part--><div class="row-fluid"><div id="footer" class="span12"> 2014-2015 &copy <?php echo C('sitename');?><a href="<?php echo C('siteurl');?>"><?php echo substr(C('siteurl'),7); ?></a></div></div><!--end-Footer-part--><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.ui.custom.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/matrix.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.uniform.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/select2.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/common.js"></script><script>$(document).ready(function(){
	$('input[type=checkbox],input[type=radio],input[type=file]').uniform();
	
	$('select').select2();

	$("input[name='authmode[]']").each(function(){
		if($(this).attr('checked')&&$(this).val()==3){
			$('#wxauth').show();
			$('#wxacc').show();
			$('#wxewm').show();
		}
		if($(this).attr('checked')&&$(this).val()==4){
			$('#wxauth').show();
			$('#wxacc').show();
			$('#wxewm').show();
			$('#wxmima').show();

		}
		$(this).bind('click',function(){
				
				if($(this).attr('checked')&&$(this).val()==3){
						$('#wxauth').show();
						$('#wxacc').show();
						$('#wxewm').show();
				}else if($(this).attr('checked')&&$(this).val()==4){
						$('#wxauth').show();
						$('#wxacc').show();
						$('#wxewm').show();
						$('#wxmima').show();
				}else if(!$(this).attr('checked')&&$(this).val()==3)
				{
						$('#wxauth').hide();
						$('#wxacc').hide();
						$('#wxewm').hide();
				}else if(!$(this).attr('checked')&&$(this).val()==4)
				{
						$('#wxauth').hide();
						$('#wxacc').hide();
						$('#wxewm').hide();
						$('#wxmima').hide();
				}
		});
	});

	$("input[name='sub']").bind('click',function(){
		var rs=true;
		
		
		
		$("input[name='authmode[]']").each(function(){
			if($(this).attr('checked')&&$(this).val()==3){
				
				 var v=$('#wxauthpwd').val();  
						
					 if (v == "") {
						
						 AlertTips("请输入微信名称",2000);
					        rs= false;
					 }
					 /* if(!isaccount(v)){
						
						 AlertTips("请输入微信认证密码",2000);
					        rs= false;
					 }   */
					 var wx=$('#wx').val();
						
					 if (wx == "") {
						
						 AlertTips("请输入微信公众号",2000);
					        rs= false;
					 }
				
				}
			if($(this).attr('checked')&&$(this).val()==4){
				
				 var v=$('#wxpass').val();  
						
					 if (v == "") {
						
						 AlertTips("请输入微信认证密码",2000);
					        rs= false;
					 }
					  if(!isaccount(v)){
						
						 AlertTips("请输入微信认证密码",2000);
					        rs= false;
					 }   
					 var wx=$('#wx').val();
						
					 if (wx == "") {
						
						 AlertTips("请输入微信公众号",2000);
					        rs= false;
					 }
					 var v1=$('#wxauthpwd').val();  
						
					 if (v1 == "") {
						
						 AlertTips("请输入微信名称",2000);
					        rs= false;
					 }
				
				}
		});
			
		return rs;
	});
});
</script></body></html>