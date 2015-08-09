<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:100个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class AuthsetAction extends  BaseUserAction{
public  $IIIIIIlI1lII;
private function getShop(){
$IIIIIIIIIII1=session('uid');
$IIIIIIIlIlll=D('Shop')->where(array('id'=>$IIIIIIIIIII1))->field('tpl_id,tpl_path')->find();
$this->IIIIIIlI1lII= $IIIIIIIlIlll;
}
public function tplset(){
$this->getShop();
$this->assign('info',$this->IIIIIIlI1lII);
$IIIIIIII1lII=D('Authtpl')->where('state')->order('id asc')->select();
$this->assign('tpl',$IIIIIIII1lII);
$this->assign('a','authtplset');
$this->display();
}
public function dotplset(){
$this->getShop();
$IIIIIIIIIII1=session('uid');
$IIIIIIlI1lll=I('get.tpl','int');
$IIIIIIlIIIll=D('Authtpl')->where(array('id'=>$IIIIIIlI1lll))->find();
if($IIIIIIlIIIll==false){
exit;
}
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
if($this->IIIIIIlI1lII){
D('Shop')->where($IIIIIIIIII11)->save(array('tpl_id'=>$IIIIIIlI1lll,'tpl_path'=>$IIIIIIlIIIll['keyname']));
}
}
}
?>