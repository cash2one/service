<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:55个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class WapAction extends BaseApiAction{
private  $IIIIIIlIIIll;
private $IIIIIII1l1II;
private $IIIIIIlIIIl1;
public  function _initialize(){
parent::_initialize();
$this->getShopInfo();
}
private function getShopInfo(){
$IIIIIIIIIII1=$_GET['sid'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=$IIIIIIIIIII1;
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
if($IIIIIIIII11l){
$this->IIIIIII1l1II=$IIIIIIIIIII1;
Cookie('wapuid',$IIIIIIIIIII1);
$this->IIIIIIlIIIll=$IIIIIIIII11l;
$this->assign('siteinfo',$IIIIIIIII11l);
$IIIIIIlIII1l=D('Wapcatelog');
$IIIIIIIIII11['uid']=$this->IIIIIII1l1II;
$IIIIIIlIII11=$IIIIIIlIII1l->where($IIIIIIIIII11)->order('sort asc')->select();
$this->IIIIIIlIIIl1=$IIIIIIlIII11;
$this->assign('classinfo',$IIIIIIlIII11);
}else{
$this->error("参数不正确");
}
}
public function index(){
$IIIIIIIlIl1I = D('Ad');
$IIIIIIIIII11['uid']=$this->IIIIIII1l1II;
$IIIIIIIIII11['ad_pos']=0;
$IIIIIIIII1I1 = $IIIIIIIlIl1I->where($IIIIIIIIII11)->select();
$IIIIIIIIIlIl="";
foreach ($IIIIIIIII1I1 as $IIIIIIIl1lIl=>$IIIIIIII111I){
$IIIIIIIIIlIl.=$IIIIIIII111I['id'].",";
}
$IIIIIIIIIll1=D('Wap');
$IIIIIII1IIIl['uid']=$this->IIIIIII1l1II;
$IIIIIIlIIlII=$IIIIIIIIIll1->where($IIIIIII1IIIl)->find();
$this->assign('wapinfo',$IIIIIIlIIlII);
$this->assign('adid',$IIIIIIIIIlIl);
$this->assign('flash',$IIIIIIIII1I1);
$this->display($this->IIIIIIlIIIll['home_tpl_path']);
}
public function lists(){
import('ORG.Util.Page');
$IIIIIIlIIlI1=$this->_get('p','intval');
$IIIIIIlIIllI=C('WAP_List');
if(!$IIIIIIlIIlI1) $IIIIIIlIIlI1=1;
if($IIIIIIlIIlI1<1) $IIIIIIlIIlI1=1;
$IIIIIIIIII11['cid']=$this->_get('classid','intval');
$IIIIIIlIIlll=D('Arts');
$IIIIIIIII1II=$IIIIIIlIIlll->where($IIIIIIIIII11)->count();
if($IIIIIIIII1II==1){$IIIIIIIII11l=$IIIIIIlIIlll->where($IIIIIIIIII11)->find();
$this->redirect('Wap/info',array('sid'=>$IIIIIIIII11l['uid'],'cid'=>$IIIIIIIII11l['cid'],'id'=>$IIIIIIIII11l['id']));
}else{
$IIIIIIIII1Il=new Page($IIIIIIIII1II,$IIIIIIlIIllI);
$IIIIIIlIIll1=$IIIIIIlIIlll->where($IIIIIIIIII11)->order('topflag desc')->limit($IIIIIIIII1Il->firstRow.",".$IIIIIIIII1Il->listRows)->select();
foreach($this->IIIIIIlIIIl1 as $IIIIIIIl1lIl=>$IIIIIIII111I){
if($IIIIIIII111I['id']==$IIIIIIIIII11['cid']){
$IIIIIIlIIl1I=$IIIIIIII111I;
break;
}
}
$IIIIIIlIIl1l=ceil($IIIIIIIII1II/$IIIIIIlIIllI);
if($IIIIIIlIIl1l==0){
$IIIIIIlIIl1l=1;
}
if($IIIIIIlIIlI1>$IIIIIIlIIl1l){
$IIIIIIlIIlI1=$IIIIIIlIIl1l;
}
$this->assign('nowclass',$IIIIIIlIIl1I);
$this->assign('info',$this->wxdata);
$this->assign('page',$IIIIIIlIIl1l);
$this->assign('p',$IIIIIIlIIlI1);
$this->assign('listinfo',$IIIIIIlIIll1);
if($this->IIIIIIlIIIll['list_tpl_path']==""){
$this->display('list_t1');
}else{
$this->display($this->IIIIIIlIIIll['list_tpl_path']);
}
}
}
public function info(){
$IIIIIIIIIII1=$this->_get('id','intval');
$IIIIIIlIIlll=D('Arts');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=cookie('wapuid');
$IIIIIIII1Ill=$IIIIIIlIIlll->where($IIIIIIIIII11)->find();
$this->assign('data',$IIIIIIII1Ill);
if($this->IIIIIIlIIIll['info_tpl_path']==""){
$this->display('info_t1');
}else{
$this->display($this->IIIIIIlIIIll['info_tpl_path']);
}
}
}
?>