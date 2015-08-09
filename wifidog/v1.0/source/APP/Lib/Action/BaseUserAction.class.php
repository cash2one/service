<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:30个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class  BaseUserAction extends BaseAction{
protected function _initialize()
{
parent::_initialize();
$this->isLogin();
}
private function isLogin()
{
if(!session('uid'))
{
$this->redirect('index/index/log');
}
}
}
?>