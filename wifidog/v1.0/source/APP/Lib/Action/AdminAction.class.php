<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:50个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class AdminAction extends BaseAction{
public  $IIIIIIIIIIII;
public function doLoadID($IIIIIIIIIII1){
$IIIIIIIIIIlI['m']=$this->getActionName();
$IIIIIIIIIIlI['a']=$IIIIIIIIIII1;
$this->assign('nownav',$IIIIIIIIIIlI);
}
protected function _initialize(){
parent::_initialize();
if (C('USER_AUTH_ON') &&!in_array(MODULE_NAME,explode(',',C('NOT_AUTH_MODULE')))) {
import("@.ORG.WIFIRBAC");
if (!WIFIRBAC::AccessDecision(GROUP_NAME)) {
if (!$_SESSION [C('USER_AUTH_KEY')]) {
redirect(PHP_FILE .C('USER_AUTH_GATEWAY'));
}
if (C('RBAC_ERROR_PAGE')) {
redirect(C('RBAC_ERROR_PAGE'));
}else {
if (C('GUEST_AUTH_ON')) {
$this->assign('jumpUrl',PHP_FILE .C('USER_AUTH_GATEWAY'));
}
$this->error(L('_VALID_ACCESS_'));
}
}else{
$this->IIIIIIIIIIII=session(C('USER_AUTH_KEY'));
$this->loadMenu();
}
}
}
private  function  loadMenu(){
$IIIIIIIIII11['status']=1;
$IIIIIIIIII11['menuflag']=1;
$IIIIIIIIIlII['sort']='asc';
$IIIIIIIIIlII['id']='asc';
$IIIIIIIIIIlI=M('treenode')->where($IIIIIIIIII11)->order($IIIIIIIIIlII)->field('id,title,g,m,a,ico,single,pid,level')->select();
$this->assign('nav',$IIIIIIIIIIlI);
if(session('adminmame')==C('SPECIAL_USER')){
$IIIIIIIIIlIl=M('treenode')->field('id')->select();
foreach ($IIIIIIIIIlIl as $IIIIIIIIIlI1){
$IIIIIIIIIllI[]	=	$IIIIIIIIIlI1['id'];
}
$this->assign('navids',$IIIIIIIIIllI);
}else{
$IIIIIIIIIlIl=WIFIRBAC::getAccessIDList($_SESSION[C('USER_AUTH_KEY')]);
$this->assign('navids',$IIIIIIIIIlIl);
}
}
}
?>