<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content=" initial-scale=1.0, maximum-scale=1.0, user-scalable=no"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"><title><?php echo ($shopinfo[0]['shopname']); ?></title><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/css.css"><!--风格--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/media.css"><!--自适应--><link rel="stylesheet" type="text/css" href="<?php echo ($Theme['P']['root']); ?>/tmpl/wifiadv/css/form.css"><!--自适应--></head><body><div class="topbar"><div class="headtitle font18"><?php echo ($shopinfo[0]['shopname']); ?></div></div><div class="mainbox bgform clearfix"><div class="formbox"><form name="regform"><div class="tips" id="tips"></div><label class="lb_title mr-tb-5" >关注微信公众号:&nbsp;&nbsp;<?php echo ($wxname); ?></br>微信名称：&nbsp;&nbsp;<?php echo ($wxpwd); ?></label><br><center><img src="<?php echo ($wxewm); ?>" width="250" height="250"></center><div class="tips mr-tb-5" id="scode"   ><div class="onSuccess" id="scodetext">请打开微信，搜索或扫一扫(截图本屏并扫一扫相册里的文件）以上微信公众号关注后并发送<?php if($wxrzfs == 1): ?>验证码:<font size=5 color=yellow><?php echo ($wxcode); ?></font>，<?php else: ?>:"上网"，<?php endif; ?> 在<?php echo ($temptime); ?>分钟内完成微信认证(否则将断开网络）。
</div><?php if($weixint == 1): ?><a  class="btn_base corner-all-10 t-wh c-wifiadv uba mr-tb-10" href="javascript:launch_app();" id="btn_reg">点击打开微信</a><?php endif; ?></div></form><div class="blockdiv"></div></div><script>//launch client app
    function launch_app() {
        if (navigator.userAgent.match(/(iPhone|iPod|iPad);?/i)) {　　　　　　　　　　　 // 判断useragent，当前设备为ios设备
            var loadDateTime = new Date();　　　　　　　　　　　　 // 设置时间阈值，在规定时间里面没有打开对应App的话，直接去App store进行下载。
            window.setTimeout(function() {
                    var timeOutDateTime = new Date();
                    if (timeOutDateTime - loadDateTime < 5000) {
                        window.location = "weixin:";
                    } else {
                        window.close();
                    }
                },
                25);
            window.location = "weixin:";　　 // ios端URL Schema
        } else if (navigator.userAgent.match(/android/i)) {　　　　　　　　　　　　 // 判断useragent，当前设备为andriod设备
            　　　　　　　　　　　　
            window.open('http://weixin.qq.com/r/RHU6NQjE1japhxlWnyBg', 'newwindow', '');　　　　　　　　　
        } else {
            // 判断useragent为桌面环境
            //window.location= "http://www.baidu.com";
            alert("Are  You PC Browser ?!");
        }　　　　　　　
    }
    </script></body></html>