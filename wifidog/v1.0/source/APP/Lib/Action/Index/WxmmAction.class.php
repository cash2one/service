<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:90个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class WxmmAction extends Action {
private $IIIIIIll11II="";
private $IIIIIIll11Il="";
private $IIIIIIIlII11=0;
private $IIIIIIll11I1="";
private $IIIIIIll11lI="";
public function index()
{
$IIIIIIIlI111 = $_GET['token'];
$IIIIIIIII1I1=D('shop')->where("token='{$IIIIIIIlI111}'")->field('id,wxsuccess,wxgzts,wxappid,threadurl')->find();
if($IIIIIIIII1I1){
$this->IIIIIIIlII11=$IIIIIIIII1I1['id'];
$this->IIIIIIll11II=$IIIIIIIII1I1['wxsuccess'];
$this->IIIIIIll11Il=$IIIIIIIII1I1['wxgzts'];
$this->IIIIIIll11I1=$IIIIIIIII1I1['wxappid'];
$this->IIIIIIll11lI=$IIIIIIIII1I1['threadurl'];
import('@.ORG.Wechat');
$IIIIIIll11ll = new Wechat($IIIIIIIlI111);
$IIIIIIII1Ill = $IIIIIIll11ll->request();
list($IIIIIIll11l1,$IIIIIIll111I) = $this->reply($IIIIIIII1Ill);
$IIIIIIll11ll->response($IIIIIIll11l1,$IIIIIIll111I);
}
}
private function reply($IIIIIIII1Ill) {
if($IIIIIIII1Ill['MsgType']=="text"){
$IIIIIIIIII11['wxcode']=$IIIIIIII1Ill['Content'];
$IIIIIIIIII11['shopid']=$this->IIIIIIIlII11;
if(strlen($IIIIIIIIII11['wxcode'])==6 &&isNumber($IIIIIIIIII11['wxcode'])){
$IIIIIII1IIII=D('authlist')->where($IIIIIIIIII11)->find();
if($IIIIIII1IIII){
$IIIIIIll1111['over_time']='0';
$IIIIIIll1111['wxcode']='ok';
$IIIIIIll1111['mode']='3';
$IIIIIIll1111['wxopenid']=$IIIIIIII1Ill['FromUserName'];
$IIIIIIl1IIII['online_time']='0';
$IIIIIIl1IIII['phone']='13888888888';
$IIIIIIl1IIII['mode']='3';
if((D('authlist')->where($IIIIIIIIII11)->save($IIIIIIll1111)) &&(D('member')->where("token='{$IIIIIII1IIII['token']}'")->save($IIIIIIl1IIII))){
$IIIIIIIl1I11['shopid']=$this->IIIIIIIlII11;
$IIIIIIIl1I11['wxopenid']=$IIIIIIII1Ill['FromUserName'];
$IIIIIIIl1I11['state']=1;
$IIIIIIIl1I11['mac']=$IIIIIII1IIII['mac'];
$IIIIIIIl1I11['add_date']=time();
$IIIIIIIl1I11['user']='微信关注用户';
D('blacklist')->add($IIIIIIIl1I11);
$IIIIIIll11l1=$this->IIIIIIll11II;
return array($IIIIIIll11l1,"text");
}else{
$IIIIIIll11l1="认证失败，请重试！";
return array($IIIIIIll11l1,"text");
}
}else{
$IIIIIIll11l1="认证码错误，请重试！";
return array($IIIIIIll11l1,"text");
}
}else if(!empty($this->IIIIIIll11lI)){
$this->threadsend();
}
}else
if($IIIIIIII1Ill['MsgType']=='event'){
if($IIIIIIII1Ill['Event']=="subscribe"){
$IIIIIIll11l1=$this->IIIIIIll11Il;
$IIIIIIl1IIIl = $this->getAccessToken();
$IIIIIII1l11I = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=".$IIIIIIl1IIIl."&openid=".$IIIIIIII1Ill['FromUserName']."&lang=zh_CN";
$IIIIIIII11lI=json_decode($this->curlGet($IIIIIII1l11I));
$IIIIIIlllIll['shopid']=$this->IIIIIIIlII11;
$IIIIIIlllIll['add_date']=getNowDate();
if(D('wxdata')->where($IIIIIIlllIll)->find())
{
D('wxdata')->where($IIIIIIlllIll)->setInc('gzl');
}else{
D('wxdata')->add($IIIIIIlllIll);
D('wxdata')->where($IIIIIIlllIll)->setInc('gzl');
}
if ($IIIIIIII11lI->subscribe == 1) {
$IIIIIIl1III1['shopid']=$this->IIIIIIIlII11;
$IIIIIIl1III1['wxopenid']=$IIIIIIII1Ill['FromUserName'];
$IIIIIIl1III1['nickname']=$IIIIIIII11lI->nickname;
$IIIIIIl1III1['sex']=$IIIIIIII11lI->sex;
$IIIIIIl1III1['city']=$IIIIIIII11lI->city;
$IIIIIIl1III1['province']=$IIIIIIII11lI->province;
$IIIIIIl1III1['headimgurl']=$IIIIIIII11lI->headimgurl;
$IIIIIIl1III1['subscribe_time']=$IIIIIIII11lI->subscribe_time;
D('wxuser')->add($IIIIIIl1III1);
if(!empty($this->IIIIIIll11lI)){$this->threadsend();}
}
}else if($IIIIIIII1Ill['Event']=="unsubscribe"){
$IIIIIIIl1I11['shopid']=$this->IIIIIIIlII11;
$IIIIIIIl1I11['wxopenid']=$IIIIIIII1Ill['FromUserName'];
$IIIIIIIl1I11['state']=1;
$IIIIIIIllIII=D('blacklist')->where($IIIIIIIl1I11)->find();
D('blacklist')->where($IIIIIIIl1I11)->delete();
$IIIIIIl1IIlI['mac']=$IIIIIIIllIII['mac'];
$IIIIIIl1IIlI['shopid']=$this->IIIIIIIlII11;
$IIIIIIII11lI['wxopenid']=$IIIIIIII1Ill['FromUserName'];
$IIIIIIII11lI['shopid']=$this->IIIIIIIlII11;
D('authlist')->where($IIIIIIl1IIlI)->order('last_time desc')->limit(1)->delete();
D('wxuser')->where($IIIIIIII11lI)->delete();
$IIIIIIlllIll['shopid']=$this->IIIIIIIlII11;
$IIIIIIlllIll['add_date']=getNowDate();
D('wxdata')->where($IIIIIIlllIll)->setInc('qxl');
if(!empty($this->IIIIIIll11lI)){$this->threadsend();}
}
if(!empty($this->IIIIIIll11lI)){$this->threadsend();}
return array($IIIIIIll11l1,"text");
}else
{
if(!empty($this->IIIIIIll11lI)){$this->threadsend();}
}
}
private function getAccessToken() {
$IIIIIIll11I1=explode('=',$this->IIIIIIll11I1);
$IIIIIIl1IIl1=$IIIIIIll11I1[0];
$IIIIIIl1II1I=$IIIIIIll11I1[1];
$IIIIIIlllll1['shopid']=$this->IIIIIIIlII11;
$IIIIIIlllll1['add_date']=getNowDate();
$IIIIIIIlI111=D('wxdata')->where($IIIIIIlllll1)->find();
if($IIIIIIIlI111 &&!empty($IIIIIIIlI111['expiresin']) &&!empty($IIIIIIIlI111['add_time']))
{if(time()-$IIIIIIIlI111['add_time'] >= $IIIIIIIlI111['expiresin']){
$IIIIIII1l11I = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$IIIIIIl1IIl1."&secret=".$IIIIIIl1II1I;
$IIIIIIII1Ill=json_decode($this->curlGet($IIIIIII1l11I));
$IIIIIIl1II1l['expiresin']=$IIIIIIII1Ill->expires_in;
$IIIIIIl1II1l['accesstoken']=$IIIIIIII1Ill->IIIIIIl1IIIl;
$IIIIIIl1II1l['add_time']=time();
D('wxdata')->where($IIIIIIlllll1)->save($IIIIIIl1II1l);
return $IIIIIIII1Ill->IIIIIIl1IIIl;
exit;
}else {return $IIIIIIIlI111['accesstoken'];}
}else {
$IIIIIII1l11I = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$IIIIIIl1IIl1."&secret=".$IIIIIIl1II1I;
$IIIIIIII1Ill=json_decode($this->curlGet($IIIIIII1l11I));
$IIIIIIl1II1l['expiresin']=$IIIIIIII1Ill->expires_in;
$IIIIIIl1II1l['accesstoken']=$IIIIIIII1Ill->IIIIIIl1IIIl;
$IIIIIIl1II1l['add_time']=time();
$IIIIIIl1II1l['shopid']=$this->IIIIIIIlII11;
$IIIIIIl1II1l['add_date']=getNowDate();
D('wxdata')->where($IIIIIIlllll1)->add($IIIIIIl1II1l);
return $IIIIIIII1Ill->IIIIIIl1IIIl;
exit;
}
}
private function curlGet($IIIIIIIll11I,$IIIIIIl1IlII = 'get',$IIIIIIII1Ill = '') {
$IIIIIIl1IlIl = curl_init();
$IIIIIIl1IllI = "Accept-Charset: utf-8";
curl_setopt($IIIIIIl1IlIl,CURLOPT_URL,$IIIIIIIll11I);
curl_setopt($IIIIIIl1IlIl,CURLOPT_CUSTOMREQUEST,strtoupper($IIIIIIl1IlII));
curl_setopt($IIIIIIl1IlIl,CURLOPT_SSL_VERIFYPEER,FALSE);
curl_setopt($IIIIIIl1IlIl,CURLOPT_SSL_VERIFYHOST,FALSE);
curl_setopt($IIIIIIl1Il1I,CURLOPT_HTTPHEADER,$IIIIIIl1IllI);
curl_setopt($IIIIIIl1IlIl,CURLOPT_USERAGENT,'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
curl_setopt($IIIIIIl1IlIl,CURLOPT_FOLLOWLOCATION,1);
curl_setopt($IIIIIIl1IlIl,CURLOPT_AUTOREFERER,1);
curl_setopt($IIIIIIl1IlIl,CURLOPT_POSTFIELDS,$IIIIIIII1Ill);
curl_setopt($IIIIIIl1IlIl,CURLOPT_RETURNTRANSFER,true);
$IIIIIIIl1l11 = curl_exec($IIIIIIl1IlIl);
return $IIIIIIIl1l11;
}
private function  threadsend(){
$IIIIIIl1I1II = file_get_contents("php://input");
$IIIIIIl1I1Il="$this->IIIIIIll11lI";
$IIIIIIl1I1I1 = $this->api_notice_increment($IIIIIIl1I1Il,$IIIIIIl1I1II);
header("Content-type: text/xml");
exit($IIIIIIl1I1I1);
}
private function api_notice_increment($IIIIIIIll11I,$IIIIIIII1Ill) {
$IIIIIIl1IlIl = curl_init();
$IIIIIIl1IllI = "Accept-Charset: utf-8";
curl_setopt($IIIIIIl1IlIl,CURLOPT_URL,$IIIIIIIll11I);
curl_setopt($IIIIIIl1IlIl,CURLOPT_CUSTOMREQUEST,"POST");
curl_setopt($IIIIIIl1IlIl,CURLOPT_SSL_VERIFYPEER,FALSE);
curl_setopt($IIIIIIl1IlIl,CURLOPT_SSL_VERIFYHOST,FALSE);
curl_setopt($IIIIIIl1Il1I,CURLOPT_HTTPHEADER,$IIIIIIl1IllI);
curl_setopt($IIIIIIl1IlIl,CURLOPT_USERAGENT,'Mozilla/5.0 (compatible; MSIE 5.01; Windows NT 5.0)');
curl_setopt($IIIIIIl1IlIl,CURLOPT_FOLLOWLOCATION,1);
curl_setopt($IIIIIIl1IlIl,CURLOPT_AUTOREFERER,1);
curl_setopt($IIIIIIl1IlIl,CURLOPT_POSTFIELDS,$IIIIIIII1Ill);
curl_setopt($IIIIIIl1IlIl,CURLOPT_RETURNTRANSFER,true);
$IIIIIIl1I1ll = curl_exec($IIIIIIl1IlIl);
if (curl_errno($IIIIIIl1IlIl)) {
return false;
}else {
return $IIIIIIl1I1ll;
}
}
}
?>