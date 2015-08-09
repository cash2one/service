<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html lang="en"><head><title><?php echo C('sitename');?>--会员中心</title><meta name="keywords" content="<?php echo C('keyword');?>"/><meta name="description" content="<?php echo C('content');?>"/><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/bootstrap-responsive.min.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-style.css" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/matrix-media.css" /><link href="<?php echo ($Theme['P']['root']); ?>/matrix/font-awesome/css/font-awesome.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/font/googlefont.css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/matrix/css/datepicker.css" /></head><body><!--Header-part--><div id="header"><h1><a href="#"></a></h1></div><!--close-Header-part--><!--top-Header-menu--><div id="user-nav" class="navbar navbar-inverse"><ul class="nav"><li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i><span class="text">欢迎光临</span><b class="caret"></b></a><ul class="dropdown-menu"><li><a href="<?php echo U('User/account');?>"><i class="icon-user"></i> 修改密码</a></li><li class="divider"></li><li><a href="<?php echo U('User/logout');?>"><i class="icon-key"></i>退出</a></li></ul></li><li class=""><a title="" href="<?php echo U('User/logout');?>"><i class="icon icon-share-alt"></i><span class="text">退出</span></a></li><li class=""><a title="" href="javascript:void(0);">服务热线：<?php echo C('fwrx');?></a></li><li><a title="" href="javascript:void(0);">商务合作：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('qq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('qq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li><li><a title="" href="javascript:void(0);">技术支持：</a></li><li class=""><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo C('jszcqq');?>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<?php echo C('jszcqq');?>:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></li></ul></div><!--close-top-Header-menu--><!--sidebar-menu--><div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a><ul><li class="<?php if(($a == 'index')): ?>active"<?php endif; ?>" ><a href="<?php echo U('User/index');?>"><i class="icon icon-home"></i><span>首页</span></a></li><li class="<?php if(($a == 'info')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/info');?>"><i class="icon icon-group"></i><span>商户信息</span></a></li><li class="<?php if(($a == 'application')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/application');?>"><i class="icon icon-cogs"></i><span>应用设置</span></a></li><li class="<?php if(($a == 'appview')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/appview');?>"><i class="icon icon-twitter-sign"></i><span>应用详情</span></a></li><li class="<?php if(($a == 'routemap')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/routemap');?>"><i class="icon icon-group"></i><span>路由管理</span></a></li><li class="<?php if(($a == 'authtplset')): ?>active"<?php endif; ?>"><a href="<?php echo U('Authset/tplset');?>"><i class="icon icon-th"></i><span>认证页面</span></a></li><li class="submenu <?php if(($a == 'adv')): ?>active"<?php endif; ?>"><a href="#" id="adv"><i class="icon icon-cloud"></i><span>广告管理</span></a><ul><li><a href="<?php echo U('User/adv');?>">广告管理</a></li><li><a href="<?php echo U('User/advrpt');?>">广告统计</a></li></ul></li><li class="submenu <?php if(($a == 'web3g')): ?>active"<?php endif; ?>"><a href="#" id="web3g"><i class="icon icon-th-large"></i><span>小微官网</span></a><ul><li><a href="<?php echo U('index/web/index');?>">网站设置</a></li><li><a href="<?php echo U('web/catelog');?>">网站分类</a></li><li><a href="<?php echo U('web/arts');?>">文章管理</a></li><li><a href="<?php echo U('web/tempset');?>">模板管理</a></li></ul></li><li class="<?php if(($a == 'comment')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/comment');?>"><i class="icon icon-envelope-alt"></i><span>客户留言</span></a></li><li class="<?php if(($a == 'line')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/line');?>"><i class="icon icon-user"></i><span>在线用户管理
	  </span></a></li><li class="<?php if(($a == 'blacklist')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/blacklist');?>"><i class="icon icon-user"></i><span>用户黑白名单管理
	  </span></a></li><li class="submenu <?php if(($a == 'report')): ?>active"<?php endif; ?>" ><a href="#" id="urpt"><i class="icon icon-user"></i><span>用户统计</span></a><ul><li><a href="<?php echo U('User/userchart');?>">统计报表</a></li><li><a href="<?php echo U('User/report');?>">用户列表</a></li><li><a href="<?php echo U('User/reportwx');?>">微信用户列表</a></li></ul></li><li class="<?php if(($a == 'online')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/rpt');?>"><i class="icon icon-signal"></i><span>上网统计</span></a></li><li class="submenu <?php if(($a == 'advfun')): ?>active"<?php endif; ?>" ><a href="#" id="sale"><i class="icon icon-dashboard"></i><span>营销管理</span></a><ul><li><a href="<?php echo U('index/Adv/phonelist');?>">手机号码管理</a></li><li><a href="<?php echo U('adv/set');?>">短信帐号管理</a></li><li><a href="<?php echo U('adv/sms');?>">短信群发</a></li><li><a href="<?php echo U('adv/smslist');?>">短信发送列表</a></li></ul></li><li class="<?php if(($a == 'advyiye')): ?>active"<?php endif; ?>"><a href="<?php echo U('User/advyiye');?>"><i class="icon icon-cloud"></i><span>异业广告推广</span></a></li></ul></div><!--sidebar-menu--><!--main-container-part--><div id="content"><!--breadcrumbs--><div id="content-header"><div id="breadcrumb"><a href="<?php echo U('user/index');?>" title="返回首页" class="tip-bottom"><i class="icon-home"></i>首页</a><a href="#">营销管理</a><a href="#"  class="current">短信群发</a></div></div><!--End-breadcrumbs--><div class="container-fluid"><hr><div class="row-fluid"><div class="span8"><form action ="<?php echo U('adv/sms');?>" method ="post"><div class="controls controls-row span8"><label class="control-label span1">开始日期</label><input type="text" id="sdate" name="sdate" value="<?php echo date("Y-m-01") ?>" data-date-format="yyyy-mm-dd" class="span2 datepicker" style="width:90px;"><label class="control-label span1">结束日期</label><input type="text" id="edate" name="edate" value="<?php echo date("Y-m-d") ?>" data-date-format="yyyy-mm-dd" class="span2 datepicker" style="width:90px;">   &nbsp &nbsp <input  type ="submit" value="确定导入" class="btn btn-success btn-primary"/></form></div><div class="widget-box"><div class="widget-title"><span class="icon"><i class="icon-align-justify"></i></span><h5>编辑</h5></div><div class="widget-content nopadding"><form class="form-horizontal" name='form' action="<?php echo U('doadv');?>" method="post" enctype="multipart/form-data"><div class="control-group"><div class="span1"></div><div class="alert alert-block span10 hide" id="msgbox"><h4 class="alert-heading">提示信息</h4><div id="alertmsg"></div></div></div><div class="control-group"  id="wxacc"><label class="control-label">手机号码 :</label><div class="controls"><textarea class=" span11" rows="10" placeholder="输入手机号码 ..." name="phones" id="phones"><?php echo ($phoneslist); ?></textarea><span class="help-inline"></span></div></div>           &nbsp<font color=red size=3> 重要提示:</font>一次发送多个号码可用英文逗号分隔且不能超过300个号码，短信内容不能超过64个字符长度，1个字母和1个汉字都认为是1个字，超长会导致发送失败！
  <br>&nbsp&nbsp严禁发送营销广告类垃圾信息，系统有实时监控一旦发现此类信息将会冻结此帐户并没收余额。请谨慎操作！
  <br>&nbsp&nbsp严禁发送辱骂，恐吓，骚扰他人，黄赌毒，代开发票，六合彩，6+1 等一切违法诈信息，否则冻结帐号没收余额。请谨慎操作！
  <br>&nbsp&nbsp大量群发前先测试下，给其中两到三个号群发测试。如果能正常收到那么通道就是正常的，再来群发。否则由于群发短信延时造成的短信丢失概不负责。
 <br>&nbsp &nbsp禁止发送关键词列表下载:<a href="http://www.smsbao.com/partner/blackword.rar" target="_blank"><u>点击下载</u></a><div class="control-group"  id="wxacc"><label class="control-label">短信内容:</label><div class="controls"><textarea class="textarea_editor span11" rows="5" placeholder="请输入短信 内容..." name="info" id="info"></textarea><span class="help-inline">由于短信限制，短信内容必须加上【签名】 签名内容才可正常发送</span></div></div><div class="form-actions"><input type="button" class="btn btn-success" name="sub" id="btn_sub" value="发送短信"/>&nbsp;&nbsp;
            
            </div></form></div></div></div></div></div></div><!--end-main-container-part--><!--Footer-part--><div class="row-fluid"><div id="footer" class="span12"> 2014-2015 &copy <?php echo C('sitename');?><a href="<?php echo C('siteurl');?>"><?php echo substr(C('siteurl'),7); ?></a></div></div><!--end-Footer-part--><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/jquery.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/matrix.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/common.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/matrix/js/bootstrap-datepicker.js"></script><script>var lines;

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


</script><script type="text/javascript">  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
$(document).ready(function(){
	
	$('#sale').trigger('click');
});
  $(function(){
		$('#btn_sub').bind('click',function(){
			var u=$('#phones').val();
			var sms=$('#info').val();
			 if (u == "") {
				 AlertTips( "请输入手机号码",  2000);
			        return false;
			 }
			  if (sms == "") {
				
				  AlertTips( "请输入短信内容",2000);
			        return false;
			  }
			  $.ajax({
				  url: '<?php echo U('adv/addsms');?>',
			        type: "post",
					data:{
						'phones':u,
						'info':sms,
						'__hash__':$('input[name="__hash__"]').val()
						},
					dataType:'json',
					error:function(){
							AlertTips("服务器忙，请稍候再试",2000);
							},
					success:function(data){
							if(data.error==0){
								AlertTips(data.msg, 2000);
								$('#phones').val('');
								$('#info').val('');
								}else{
									AlertTips(data.msg, 2000);
							}
								
							
					}
				  });
			});
	  });

</script></body></html>