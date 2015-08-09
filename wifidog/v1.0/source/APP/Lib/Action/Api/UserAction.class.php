<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:65个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class UserAction extends BaseApiAction{
private $IIIIIII1IlIl;
private  $IIIIIIIl1IlI="";
private  function CheckUser(){
if(cookie('token')!=""&&cookie('mid')!=""){
$IIIIIIIIIll1=D('Member');
$IIIIIIIIII11['token']=session('token');
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
if($IIIIIIIII11l==false){
$this->IIIIIII1IlIl=$IIIIIIIII11l;
$this->assign('user',$IIIIIIIII11l);
}else{
$this->redirect(U('Api/login',array('gw_address'=>cookie('gw_address'),'gw_id'=>cookie('gw_id'),'gw_port'=>cookie('gw_port'))));
}
}else{
$this->redirect(U('Api/login',array('gw_address'=>cookie('gw_address'),'gw_id'=>cookie('gw_id'),'gw_port'=>cookie('gw_port'))));
}
}
private  function load_shopinfo(){
if( cookie('gw_id')!=null){
$IIIIIIIIIl1I="select a.*,b.shopname,b.authaction,b.jumpurl,b.tpl_path,b.ratelimit from ".C('DB_PREFIX')."routemap a left join ".C('DB_PREFIX')."shop b on a.shopid=b.id ";
$IIIIIIIIIl1I.=" where a.gw_id='".cookie('gw_id')."' limit 1";
$IIIIIII1Illl=D('Routemap');
$IIIIIIIII11l=$IIIIIII1Illl->query($IIIIIIIIIl1I);
if($IIIIIIIII11l!=false){
cookie('shopid',$IIIIIIIII11l[0]['id']);
$this->IIIIIIIl1IlI=$IIIIIIIII11l[0]['tpl_path'];
$this->IIIIIIIlIlll=$IIIIIIIII11l;
$this->assign("shopinfo",$IIIIIIIII11l);
}
$IIIIIII1Illl=null;
}
}
public function index(){
$this->CheckUser();
$this->load_shopinfo();
switch($this->IIIIIIIlIlll[0]['authaction']){
case "1":
$IIIIIII1Ill1=$this->IIIIIIIlIlll[0]['jumpurl'];
break;
case "0":
break;
case "2":
if(cookie('gw_url')!=null){
$IIIIIII1Ill1=cookie('gw_url');
}
break;
case "3":
$IIIIIII1Ill1=U('api/wap/index',array('sid'=>$this->IIIIIIIlIlll[0]['shopid']));
break;
}
$IIIIIIIIII11['id']=cookie('mid');
$IIIIIIII1l1l=D('member')->where($IIIIIIIIII11)->find();
if($IIIIIIII1l1l['mode']=='4'){$IIIIIII1Ill1=U('api/userauth/indexgreen');}elseif($IIIIIIII1l1l['mode']=='5'){$IIIIIII1Ill1=U('api/userauth/wxauthmm');}
if($IIIIIIII1l1l['online_time'] !=0){$IIIIIIIlllI1=round(($IIIIIIII1l1l['online_time']-time())/60,0);}else{$IIIIIIIlllI1=0;}
$this->assign('limit',$this->IIIIIIIlIlll[0]['ratelimit']);
$this->assign('time',$IIIIIIIlllI1);
$this->assign('jumpurl',$IIIIIII1Ill1);
if(empty($this->IIIIIIIl1IlI)||$this->IIIIIIIl1IlI==""||strtolower($this->IIIIIIIl1IlI)=="default"){
$this->display();
}else{
$this->display("index$".$this->IIIIIIIl1IlI);
}
}
}
?>