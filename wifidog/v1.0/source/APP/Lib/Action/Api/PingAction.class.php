<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:70个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class PingAction extends BaseApiAction{
private $IIIIIIIll1ll = null;
private $IIIIIIIll1l1 = null;
private $IIIIIIIllII1 = null;
private $IIIIIIIllIII = null;
private $IIIIIIIll11I = null;
private $IIIIIIIll11l = null;
public function index(){
echo "Pong";
if (isset($_REQUEST["gw_id"])) {
$this->IIIIIIIllII1 = $_REQUEST['gw_id'];
}
if(!empty($this->IIIIIIIllII1)){
$IIIIIIIIIll1=D('Routemap');
$IIIIIIIIII11['gw_id']=$this->IIIIIIIllII1;
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
if($IIIIIIIII11l!=false){
$IIIIIIIlllI1=time();
$IIIIIII1IlII['last_heartbeat_time']=$IIIIIIIlllI1;
$IIIIIII1IlII['user_agent']=getAgent();
$IIIIIII1IlII['sys_uptime']=$_GET['sys_uptime'];
$IIIIIII1IlII['sys_memfree']=$_GET['sys_memfree'];
$IIIIIII1IlII['sys_load']=$_GET['sys_load'];
$IIIIIII1IlII['wifidog_uptime']=$_GET['wifidog_uptime'];
$IIIIIII1IlII['notes']=$_SERVER['REMOTE_ADDR'];
$IIIIIIIIIll1->where($IIIIIIIIII11)->save($IIIIIII1IlII);
}
}
}
}
?>