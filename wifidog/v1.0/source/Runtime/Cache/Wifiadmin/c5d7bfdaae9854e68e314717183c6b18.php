<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html><head><title><?php echo C('sitename');?>-代理商平台</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><meta name="viewport" content="width=device-width, initial-scale=1.0" /><!-- bootstrap --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" /><!-- libraries --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/font-awesome.css" type="text/css" rel="stylesheet" /><!-- global styles --><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/layout.css" /><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/elements.css" /><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/icons.css" /><!-- open sans font --><link href='<?php echo ($Theme['P']['root']); ?>/italic.css' rel='stylesheet' type='text/css' /><!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]--><!-- libraries --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/uniform.default.css" type="text/css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/select2.css" type="text/css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/compiled/form-showcase.css" type="text/css" media="screen" /><body><!-- navbar --><div class="navbar navbar-inverse"><div class="navbar-inner"><button type="button" class="btn btn-navbar visible-phone" id="menu-toggler"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="brand" href="<?php echo U('index');?>"><img src="<?php echo ($Theme['P']['img']); ?>/wifilogo-mini.png" /></a><ul class="nav pull-right"><li class=" hidden-phone"><a href="javascript:void(0);">登录帐号:(<?php echo (session('adminmame')); ?>)</a></li><li class=" hidden-phone"><a href="<?php echo U('Index/pwd');?>">修改密码</a></li><li class="settings hidden-phone"><a href="<?php echo U('login/loginout');?>" role="button"><i class="icon-share-alt"></i></a></li></ul></div></div><!-- end navbar --><!-- sidebar --><div id="sidebar-nav"><ul id="dashboard-menu"><?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 1): if(in_array($vo['id'],$navids)): if($vo['single'] == 1): if((strtolower($nownav['m']) == strtolower($vo['m']) ) && strtolower($nownav['a']) == strtolower($vo['a'])): ?><li class="active"><div class="pointer"><div class="arrow"></div><div class="arrow_border"></div></div><?php else: ?><li><?php endif; ?><a href="<?php echo U(''.$vo['m'].'/'.$vo['a'].'');?>"  ><i class="<?php echo ($vo["ico"]); ?>"></i><span><?php echo ($vo["title"]); ?></span></a></li><?php else: if($nownav['a'] == $vo['id']): ?><li class="active"><div class="pointer"><div class="arrow"></div><div class="arrow_border"></div></div><?php else: ?><li><?php endif; ?><a class="dropdown-toggle" href="#" ><i class="<?php echo ($vo["ico"]); ?>"></i><span><?php echo ($vo["title"]); ?></span><i class="icon-chevron-down"></i></a><?php if($nownav['a'] == $vo['id']): ?><ul class="active submenu"><?php else: ?><ul class="submenu"><?php endif; if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sonnode): $mod = ($i % 2 );++$i; if($sonnode['pid'] == $vo['id']): if(in_array($sonnode['id'],$navids)): ?><li><a href="<?php echo U(''.$sonnode['m'].'/'.$sonnode['a'].'');?>"><?php echo ($sonnode['title']); ?></a></li><?php endif; endif; endforeach; endif; else: echo "" ;endif; ?></ul></li><?php endif; endif; endif; endforeach; endif; else: echo "" ;endif; ?></ul></div><!-- end sidebar --><!-- main container --><div class="content"><div class="container-fluid"><div id="pad-wrapper" class="form-page"><div class="row-fluid form-wrapper"><div class="span12"><h4>添加商户信息</h4></div><!-- left column --><div class="span8 column"><form name=""><div class="alert span10" style="display: none;"><span id="alertmsg"></span></div><div class="field-box"><label>所属代理商:</label><div class="ui-select"><select name="pid" id="pid"><option value="-1">选择代理商</option><?php if(is_array($agent)): $i = 0; $__LIST__ = $agent;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if(($shop['pid']) == $vo['id']): ?>selected<?php endif; ?>><?php echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></div></div><div class="field-box"><label>登录帐号:</label><input class="span8" type="text"  data-toggle="tooltip" data-trigger="focus" title="4-20个字母，数字组成" data-placement="right" name="user" id="user"/></div><div class="field-box"><label>登录密码:</label><input class="span8" type="password"  data-toggle="tooltip" data-trigger="focus" title="4-20个字母，数字" data-placement="right" name="password" id="password"/></div><div class="field-box"><label>商户名称:</label><input class="span8" type="text"  data-toggle="tooltip" data-trigger="focus" title="商户名称不能超过20个字" data-placement="right" name="shopname" id="shopname" value="<?php echo ($shop["shopname"]); ?>"/></div><div class="field-box"><label>联系人:</label><input class="span8" type="text" name="linker" id="linker" value="<?php echo ($shop["linker"]); ?>"/></div><div class="field-box"><label>手机号码:</label><input class="span8" type="text" name="phone" id="phone" value="<?php echo ($shop["phone"]); ?>" /></div><div class="field-box"><label>路由注册上限:</label><div class="span8"><label class="radio"><input type="radio" name="linkflag" value="0" checked>限制(免费注册用户)
                                        	
                                    </label><label class="radio"><input type="radio" name="linkflag" value="1">不限制(付费用户或代理商开户)
                                        		
                                    </label></div></div><div class="field-box"><label>路由注册上限:</label><input class="span8" type="text" name="maxcount" id="maxcount" value="<?php echo C('OpenMaxCount');?>" /></div><div class="field-box"><label>消费水平:</label><?php if(is_array($enumdata["shoplevel"])): $i = 0; $__LIST__ = $enumdata["shoplevel"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label class="checkbox"><input type="checkbox" value="<?php echo ($vo["key"]); ?>" name="shoplevel" <?php if(strpos($shop['shoplevel'],"#".$vo['key']."#")>-1){echo "checked";} ?>/><?php echo ($vo["txt"]); ?></label><?php endforeach; endif; else: echo "" ;endif; ?></div><div class="field-box"><label>行业类别:</label><?php if(is_array($enumdata["trades"])): $i = 0; $__LIST__ = $enumdata["trades"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><label class="checkbox"><input type="radio" value="<?php echo ($vo["key"]); ?>" name="trade" <?php if($i==1){echo "checked";} ?>/><?php echo ($vo["txt"]); ?></label><?php endforeach; endif; else: echo "" ;endif; ?></div><div class="field-box"><label>所属商圈:</label><div class="ui-select"><select name="province" id="province"></select></div><div class="ui-select"><select name="city" id="city" ><option value="市辖区">市辖区</option><option value="市辖县">市辖县</option></select></div><div class="ui-select"><select name="area" id="area" ></select></div></div><div class="field-box"><label>地址:</label><input class="span8" type="text"  data-toggle="tooltip" data-trigger="focus" title="输入商铺所在地址" data-placement="right" name="address" id="address" value="<?php echo ($shop["address"]); ?>"/></div><div class="field-box "><input type="button"   class="btn-glow primary " id="btn_save" value="确认提交"></div></form></div><!-- right column --><div class="span4 column pull-right"></div></div></div></div></div><!-- scripts --><script src="<?php echo ($Theme['P']['js']); ?>/jquery.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/theme.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/jquery.uniform.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/common.js"></script><script src="<?php echo ($Theme['P']['js']); ?>/region_select.js"></script><script type="text/javascript">                        new PCAS('province', 'city', 'area', '', '', '');

                        $(function () {
                        	
                            // add uniform plugin styles to html elements
                            $("input:checkbox, input:radio").uniform();

                            $('#btn_save').bind('click',function(){
                            	var user=$('#user').val();
                            	var psd=$('#password').val();
                				var s=$('#shopname').val();
                				var link=$('#linker').val();
                				var phone=$('#phone').val();
                				var pro=$('#province').val();
                				var city=$('#city').val();
                				var area=$('#area').val();
                				var ad=$('#address').val();
                				var sid=$('#sid').val();
                				var linkflag=$("input[name='linkflag']:checked").val();
                				var max=$('#maxcount').val();
								var agent=$('#pid').val();
                				var shoplevel="";
                				
                				$("input[name='shoplevel']").each(function(){
                					if($(this).parent().hasClass('checked')){
                						shoplevel+="#"+$(this).val()+"#";
                					}
                				});
                				var trade="";
                				$("input[name='trade']").each(function(){
                					if($(this).parent().hasClass('checked')){
                						trade=$(this).val();
                					}
                				});
                				if (user == "") {
              					  AlertTips("登录帐号不能为空",1500);
              				        return false;
              				  }
                				if (psd == "") {
              					  AlertTips("密码不能为空",1500);
              				        return false;
              				  }

                				  if (s == "") {
                					  AlertTips("商户名称不能为空",1500);
                				        return false;
                				  }
                				  if (link == "") {
                					  
                					  AlertTips("联系人不能为空",1500);
                				        return false;
                				  }
                				if(!isaccount(user)){
                	                	
                					  AlertTips("登录帐号由4-20位数字或字母组成",1500);
                				        return false;
                				 }
                				 if(!isPhone(phone)){
                	
                					  AlertTips("请输入11位手机号码",1500);
                				        return false;
                				 }
                				 if (max == "") {
               					  AlertTips("注册人数上限不能为空",1500);
               				        return false;
               				  }
               				  if(!isNums(max)){
               					  AlertTips("注册人数上限必须是数字",1500);
               				        return false;
               					}
               					if(max=="0"){
               						  AlertTips("注册人数上限必须大于0",1500);
               					        return false;
               						}
                				  $.ajax({
                					  	url: '<?php echo U('addshop');?>',
                				        type: "post",
                						data:{
                    						'account':user,
                    						'password':psd,
                							'shopname':s,
                							'linker':link,
                							'phone':phone,
                							'province':pro,
                							'city':city,
                							'area':area,
                							'address':ad,
                							'shoplevel':shoplevel,
                							'trade':trade,
                							'maxcount':max,
                							'linkflag':linkflag,
											'pid':agent,
                							'id':sid,
                							'__hash__':$('input[name="__hash__"]').val()
                							},
                						dataType:'json',
                						error:function(){
                			
                								AlertTips("服务器忙，请稍候再试",1500);
                								},
                						success:function(data){
                								
                								if(data.error==0){
                									location.href=data.url;
                								}else{
                									AlertTips(data.msg,200000);
                								}
                						}
                					  });
                				});
                        });
                    </script></body></html>