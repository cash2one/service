<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html><html><head><title><?php echo C('sitename');?>-代理商平台</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><meta name="viewport" content="width=device-width, initial-scale=1.0" /><!-- bootstrap --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" /><!-- libraries --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/font-awesome.css" type="text/css" rel="stylesheet" /><!-- global styles --><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/layout.css" /><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/elements.css" /><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/icons.css" /><!-- open sans font --><link href='<?php echo ($Theme['P']['root']); ?>/italic.css' rel='stylesheet' type='text/css' /><!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]--><!-- libraries --><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/uniform.default.css" type="text/css" rel="stylesheet" /><link href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/lib/select2.css" type="text/css" rel="stylesheet" /><link rel="stylesheet" href="<?php echo ($Theme['P']['root']); ?>/bootadmin/css/compiled/form-showcase.css" type="text/css" media="screen" /><body><!-- navbar --><div class="navbar navbar-inverse"><div class="navbar-inner"><button type="button" class="btn btn-navbar visible-phone" id="menu-toggler"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="brand" href="<?php echo U('index');?>"><img src="<?php echo ($Theme['P']['img']); ?>/wifilogo-mini.png" /></a><ul class="nav pull-right"><li class=" hidden-phone"><a href="javascript:void(0);">登录帐号:(<?php echo (session('adminmame')); ?>)</a></li><li class=" hidden-phone"><a href="<?php echo U('Index/pwd');?>">修改密码</a></li><li class="settings hidden-phone"><a href="<?php echo U('login/loginout');?>" role="button"><i class="icon-share-alt"></i></a></li></ul></div></div><!-- end navbar --><!-- sidebar --><div id="sidebar-nav"><ul id="dashboard-menu"><?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 1): if(in_array($vo['id'],$navids)): if($vo['single'] == 1): if((strtolower($nownav['m']) == strtolower($vo['m']) ) && strtolower($nownav['a']) == strtolower($vo['a'])): ?><li class="active"><div class="pointer"><div class="arrow"></div><div class="arrow_border"></div></div><?php else: ?><li><?php endif; ?><a href="<?php echo U(''.$vo['m'].'/'.$vo['a'].'');?>"  ><i class="<?php echo ($vo["ico"]); ?>"></i><span><?php echo ($vo["title"]); ?></span></a></li><?php else: if($nownav['a'] == $vo['id']): ?><li class="active"><div class="pointer"><div class="arrow"></div><div class="arrow_border"></div></div><?php else: ?><li><?php endif; ?><a class="dropdown-toggle" href="#" ><i class="<?php echo ($vo["ico"]); ?>"></i><span><?php echo ($vo["title"]); ?></span><i class="icon-chevron-down"></i></a><?php if($nownav['a'] == $vo['id']): ?><ul class="active submenu"><?php else: ?><ul class="submenu"><?php endif; if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sonnode): $mod = ($i % 2 );++$i; if($sonnode['pid'] == $vo['id']): if(in_array($sonnode['id'],$navids)): ?><li><a href="<?php echo U(''.$sonnode['m'].'/'.$sonnode['a'].'');?>"><?php echo ($sonnode['title']); ?></a></li><?php endif; endif; endforeach; endif; else: echo "" ;endif; ?></ul></li><?php endif; endif; endif; endforeach; endif; else: echo "" ;endif; ?></ul></div><!-- end sidebar --><!-- main container --><div class="content"><div class="container-fluid"><div id="pad-wrapper" class="form-page"><div class="row-fluid form-wrapper"><div class="span12"><h4>添加代理商</h4></div><!-- left column --><div class="span8 column"><form name=""><div class="alert span10" style="display: none;"><span id="alertmsg"></span></div><div class="field-box"><label>代理商级别:</label><div class="ui-select"><select name="level" id="level"><option value="-1">选择代理商等级</option><?php if(is_array($lvlist)): $i = 0; $__LIST__ = $lvlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if(($info['level']) == $vo['id']): ?>selected<?php endif; ?>><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></div></div><div class="field-box"><label>登录帐号:</label><input class="span8" type="text"  data-toggle="tooltip" data-trigger="focus" title="4-20个字母，数字组成" data-placement="right" name="user" id="user" readonly="readonly" value="<?php echo ($info["account"]); ?>"/></div><div class="field-box"><label>登录密码:</label><input class="span8" type="password"  data-toggle="tooltip" data-trigger="focus" title="4-20个字母，数字" data-placement="right" name="password" id="password"/></div><div class="field-box"><label>代理商名称:</label><input class="span8" type="text"  data-toggle="tooltip" data-trigger="focus" title="代理商名称不能超过20个字" data-placement="right" name="name" id="name" value="<?php echo ($info["name"]); ?>"/></div><div class="field-box"><label>联系人:</label><input class="span8" type="text" name="linker" id="linker" value="<?php echo ($info["linker"]); ?>"/></div><div class="field-box"><label>手机号码:</label><input class="span8" type="text" name="phone" id="phone" value="<?php echo ($info["phone"]); ?>" /></div><div class="field-box"><label>加盟费用:</label><input class="span8" type="text"  name="fee" id="fee" value="<?php echo ($info["fee"]); ?>"/></div><div class="field-box"><label>所属商圈:</label><div class="ui-select"><select name="province" id="province"></select></div><div class="ui-select"><select name="city" id="city" ><option value="市辖区">市辖区</option><option value="市辖县">市辖县</option></select></div><div class="ui-select"><select name="area" id="area" ></select></div></div><div class="field-box"><label>地址:</label><input class="span8" type="text"   name="address" id="address" value="<?php echo ($info["address"]); ?>"/></div><div class="field-box"><label>状态:</label><div class="span8"><label class="radio"><input type="radio" name="state" id="status1" value="1" <?php if(($info['state']) == "1"): ?>checked<?php endif; ?>/>                                        	正常
                                    </label><label class="radio"><input type="radio" name="state" id="status2" value="0" <?php if(($info['state']) == "0"): ?>checked<?php endif; ?>/>                                        		停用
                                    </label></div></div><div class="field-box "><input type="hidden" name="id" id="id" value="<?php echo ($info["id"]); ?>"><input type="button"   class="btn-glow primary " id="btn_save" value="确认提交"></div></form></div><!-- right column --><div class="span4 column pull-right"></div></div></div></div></div><!-- scripts --><script src="<?php echo ($Theme['P']['js']); ?>/jquery.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/bootstrap.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/theme.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/jquery.uniform.min.js"></script><script src="<?php echo ($Theme['P']['root']); ?>/bootadmin/js/common.js"></script><script src="<?php echo ($Theme['P']['js']); ?>/region_select.js"></script><script type="text/javascript">                        new PCAS('province', 'city', 'area', '<?php echo ($info["province"]); ?>', '<?php echo ($info["city"]); ?>', '<?php echo ($info["area"]); ?>');

                        $(function () {
                        	
                            // add uniform plugin styles to html elements
                            $("input:checkbox, input:radio").uniform();

                            $('#btn_save').bind('click',function(){
                            	var user=$('#user').val();
                            	var psd=$('#password').val();
                				var s=$('#name').val();
                				var link=$('#linker').val();
                				var phone=$('#phone').val();
                				var pro=$('#province').val();
                				var city=$('#city').val();
                				var area=$('#area').val();
                				var ad=$('#address').val();
                				var lv=$('#level').val();
                				var fee=$('#fee').val();
                				var st=$("input[name='state']:checked").val();
                				var linkflag=$("input[name='linkflag']:checked").val();
               					var pid=$('#id').val();
                				if(lv=="-1"){
                					  AlertTips("请选择代理商等级",1500);
                				        return false;
                    				}
                				
                				
                				if (user == "") {
              					  AlertTips("登录帐号不能为空",1500);
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
                				  if(fee==""){
                					  AlertTips("代理费不能为空",1500);
              				        return false;
                    				 }
                				
                				 if(!isPhone(phone)){
                	
                					  AlertTips("请输入11位手机号码",1500);
                				        return false;
                				 }
                				
                				  $.ajax({
                					  	url: '<?php echo U('edit');?>',
                				        type: "post",
                						data:{
                    						'id':pid,
                    						'password':psd,
                							'name':s,
                							'linker':link,
                							'phone':phone,
                							'province':pro,
                							'city':city,
                							'area':area,
                							'address':ad,
                							'level':lv,
                							'state':st,
                							'fee':fee,
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