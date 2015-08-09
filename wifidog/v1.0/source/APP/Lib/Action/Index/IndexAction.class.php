<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:110个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class IndexAction extends BaseAction {
public function index(){
$this->display('log');
}
public function log(){
$this->display();
}
public function reg()
{
$this->display();
}
public function doagentlog(){
if(IS_POST){
$IIIIIIII11lI = isset($_POST['user']) ?strval($_POST['user']) : '';
$IIIIIII1l1ll = isset($_POST['password']) ?strval($_POST['password']) : '';
$IIIIIIlI1l1l =D('Agent');
$IIIIIII1l1ll=md5($IIIIIII1l1ll);
$IIIIIII1l1II = $IIIIIIlI1l1l->where("account = '{$IIIIIIII11lI}' AND password = '{$IIIIIII1l1ll}'")->field('id,account,state')->find();
if($IIIIIII1l1II['state']==0 &&$IIIIIII1l1II)
{$IIIIIIII1Ill['error']=1;
$IIIIIIII1Ill['msg']="帐号已停用，请联系管理员";
return $this->ajaxReturn($IIIIIIII1Ill);
}
if($IIIIIII1l1II)
{
session('aid',$IIIIIII1l1II['id']);
session('account',$IIIIIII1l1II['account']);
session('agentname',$IIIIIII1l1II['name']);
$IIIIIIII1Ill['error']=0;
$IIIIIIII1Ill['msg']="";
$IIIIIIII1Ill['url']=U('agent/index/index');
return $this->ajaxReturn($IIIIIIII1Ill);
}else{
$IIIIIIII1Ill['error']=1;
$IIIIIIII1Ill['msg']="帐号信息不正确";
return $this->ajaxReturn($IIIIIIII1Ill);
}
}else{
$IIIIIIII1Ill['error']=1;
$IIIIIIII1Ill['msg']="服务器忙，请稍候再试";
return $this->ajaxReturn($IIIIIIII1Ill);
}
}
public function alogout(){
session(null);
$this->redirect('index/index/alog');
}
}
?>