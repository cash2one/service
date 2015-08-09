<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:85个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class AuthAction extends BaseApiAction{
private  function isonline($IIIIIIIlI11I){
import("ORG.Util.Date");
$IIIIIIIIlll1=new Date(time());
$IIIIIIIlI11l=$IIIIIIIIlll1->dateDiff($IIIIIIIlI11I,'s');
return $IIIIIIIlI11l;
}
private $IIIIIIIlI111;
private $IIIIIIIllIII;
private $IIIIIIIllIIl;
private $IIIIIIIllII1;
public function index(){
if (!empty ($_REQUEST['mac'])){
$this->IIIIIIIllIII=$_REQUEST['mac'];
}
if (!empty ($_REQUEST['ip'])){
$this->IIIIIIIllIIl=$_REQUEST['ip'];
}
if (!empty ($_REQUEST['gw_id'])){
$this->IIIIIIIllII1=$_REQUEST['gw_id'];
}
if (!empty ($_REQUEST['token'])){
$IIIIIIIllIlI=$_REQUEST['token'];
$IIIIIIIIIll1=new Model();
$IIIIIIIllIll=D('Authlist');
$IIIIIIIllIl1=D('member');
$IIIIIIIllI1I['token']=$IIIIIIIllIlI;
$IIIIIIIIII11['token']=$IIIIIIIllIlI;
$IIIIIIIIIl11=$IIIIIIIllIll->where($IIIIIIIIII11)->find();
$IIIIIIIllI1l['id']=$IIIIIIIIIl11['shopid'];
$IIIIIIIllI11=D('shop')->where($IIIIIIIllI1l)->find();
$IIIIIIIlllII=$_REQUEST['stage'];
if(($IIIIIIIlllII=='login') and ($IIIIIIIIIl11['mode']=='4'||$IIIIIIIIIl11['mode']=='5')){
$IIIIIIIlllIl['token']=$IIIIIIIllIlI;
$IIIIIIIlllIl['mac']=$this->IIIIIIIllIII;
if(D('authlist')->where($IIIIIIIlllIl)->find())
{
if($IIIIIIIllI11['timelimit']=='0'){
$IIIIIIIllll1='0';}
else
{$IIIIIIIllll1=time()+$IIIIIIIllI11['timelimit']*60;}
$IIIIIIIlll1I['over_time']=$IIIIIIIllll1;
$IIIIIIIlll1I['mode']='3';
$IIIIIIIlll1l['online_time']=$IIIIIIIllll1;
$IIIIIIIlll1l['phone']='13888888888';
$IIIIIIIlll1l['mode']='3';
D('authlist')->where($IIIIIIIlllIl)->save($IIIIIIIlll1I);
D('member')->where($IIIIIIIIII11)->save($IIIIIIIlll1l);
}
}
if($IIIIIIIIIl11){
$IIIIIIIlll11['shopid']=$IIIIIIIIIl11['shopid'];
$IIIIIIIlll11['mac']=array('eq',$this->IIIIIIIllIII);
$IIIIIIIlll11['state']=0;
$IIIIIIIll1II=D('blacklist')->where($IIIIIIIlll11)->count();
if($IIIIIIIll1II>0){
echo ("Auth: 0");
exit;
}
$IIIIIIIllI1l['id']=$IIIIIIIIIl11['shopid'];
$IIIIIIIllI11=D('shop')->where($IIIIIIIllI1l)->find();
$IIIIIIIll1Il=$IIIIIIIllI11['ratelimit']*1024*1024;
if(!empty($_GET['incoming']) and $IIIIIIIll1Il !=0 and intval($_GET['incoming']) >$IIIIIIIll1Il)
{
echo ("Auth: 0");
exit;
}
if(empty($IIIIIIIIIl11['over_time'])||$IIIIIIIIIl11['over_time']==""){
$this->IIIIIIIlI111=$IIIIIIIllIlI;
echo ("Auth: 1");
$IIIIIIII1Ill['mac']=$this->IIIIIIIllIII;
$IIIIIIII1Ill['login_ip']=$this->IIIIIIIllIIl;
$IIIIIIII1Ill['pingcount']=$IIIIIIIIIl11['pingcount']+1;
$IIIIIIII1Ill['last_time']=time();
$IIIIIIII1Ill['update_time']=time();
$IIIIIIII1Ill['incoming']=$_GET['incoming'];
$IIIIIIIll1I1['login_ip']=$this->IIIIIIIllIIl;
$IIIIIIIllIl1->where($IIIIIIIllI1I)->save($IIIIIIIll1I1);
$IIIIIIIllIll->where($IIIIIIIIII11)->save($IIIIIIII1Ill);
}else{
$IIIIIIIll1lI=$IIIIIIIIIl11['over_time']-time();
if($IIIIIIIll1lI<0){
echo ("Auth: 0");
exit;
}else{
$this->IIIIIIIlI111=$IIIIIIIllIlI;
echo ("Auth: 1");
$IIIIIIII1Ill['mac']=$this->IIIIIIIllIII;
$IIIIIIII1Ill['login_ip']=$this->IIIIIIIllIIl;
$IIIIIIII1Ill['pingcount']=$IIIIIIIIIl11['pingcount']+1;
$IIIIIIII1Ill['last_time']=time();
$IIIIIIII1Ill['update_time']=time();
$IIIIIIII1Ill['incoming']=$_GET['incoming'];
$IIIIIIIll1I1['login_ip']=$this->IIIIIIIllIIl;
$IIIIIIIllIl1->where($IIIIIIIllI1I)->save($IIIIIIIll1I1);
$IIIIIIIllIll->where($IIIIIIIIII11)->save($IIIIIIII1Ill);
}
}
}else{
echo ("Auth: 0");
exit;
}
}else{
echo ("Auth: 0");
}
}
}
?>