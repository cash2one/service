<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:115个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class UserAction extends BaseAction{
public function __construct() {
parent::__construct();
header("Content-type:text/html;charset=utf-8");
}
public function info(){
$this->isLogin();
$uid = session('uid');
$info = D('Shop')
->where("id = {$uid}")
->field('shopname,province,city,area,address,shopgroup,shoplevel,trade,linker,phone')
->find();
include CONF_PATH.'enum/enum.php';
$this->assign('enumdata',$enumdata);
$this->assign('info',$info);
$this->assign('a','info');
$this->display();
}
public function index()
{
$this->isLogin();
$dbnote=D('Notice');
$notes=$dbnote->limit(10)->order('add_time desc')->select();
$this->assign('notice',$notes);
$this->assign('a','index');
$this->display();
}
public function doindex()
{
$this->isLogin();
$user = D('Shop');
$uid = session('uid');
$lv="";
foreach($_POST['shoplevel'] as $K=>$v )
{
$lv.="#".$v."#";
}
$_POST['shoplevel']=$lv;
if($_POST['phone']){
if(!isPhone($_POST['phone'])){
$this->error('手机号码不正确');
}
}
$where['id']=$uid;
if($user->create($_POST,2)){
if($user->where($where)->save())
{
$this->success('修改成功');
}else{
Log::write($user->getError());
$this->error('操作出错，请重新操作');
}
}else{
$this->error($user->getError());
}
}
private function isLogin()
{
if(!session('uid'))
{
$this->redirect('index/index/log');
}
}
public function login()
{
$this->display();
}
public function dologin()
{
if(IS_POST){
$user = isset($_POST['user']) ?strval($_POST['user']) : '';
$pass = isset($_POST['password']) ?strval($_POST['password']) : '';
$userM = M('Shop');
$pass=md5($pass);
$uid = $userM->where("account = '{$user}' AND password = '{$pass}'")->field('id,account,shopname,pid')->find();
if($uid)
{
session('uid',$uid['id']);
session('user',$uid['account']);
session('shop_name',$uid['shopname']);
session('pid',$uid['pid']);
$data['error']=0;
$data['msg']="";
$data['url']=U('user/index');
return $this->ajaxReturn($data);
}else{
$data['error']=1;
$data['msg']="帐号信息不正确";
return $this->ajaxReturn($data);
}
}else{
$data['error']=1;
$data['msg']="服务器忙，请稍候再试";
return $this->ajaxReturn($data);
}
}
public  function register()
{
$this->display();
}
public function doregist()
{
if(IS_POST){
C('TOKEN_ON',false);
$hid = isset($_POST['doact']) ?strval($_POST['doact']) : '';
if($hid == 'doreg')
{
$user = D('Shop');
$_POST['mode']=0;
$_POST['authmode']='#0#<0';
$_POST['authaction']='1';
$_POST['token']=md5(uniqid());
if ($user->create()){
$aid=$user->add();
if($aid)
{
session('uid',$aid);
session('user',$_POST['account']);
session('shop_name',$_POST['shopname']);
$data['error']=0;
$data['msg']="OK";
$data['url']=U('user/index');
return $this->ajaxReturn($data);
}else{
$data['error']=1;
$data['msg']="服务器忙，请稍候再试";
return $this->ajaxReturn($data);
}
}else{
$data['error']=1;
$data['msg']=$user->getError();
return $this->ajaxReturn($data);
}
}else{
$data['error']=1;
$data['msg']="服务器忙，请稍候再试";
return $this->ajaxReturn($data);
}
}else{
$data['error']=1;
$data['msg']="服务器忙，请稍候再试";
return $this->ajaxReturn($data);
}
}
public function logout()
{
session(null);
$this->redirect('index/index');
}
public function account()
{
$this->isLogin();
$this->assign('a','account');
$this->display();
}
public function doaccount()
{
$this->isLogin();
$uid = session('uid');
$pass = isset($_POST['password']) ?$_POST['password'] : '';
if($pass)
{
$user = D('Shop');
if($user->create()){
if($user->where("id = {$uid}")->save())
{
$this->success('修改密码成功');
}else{
$this->error('修改密码错误');
}
}
}else{
$this->error('密码不允许为空');
}
}
public function application()
{
$this->isLogin();
include CONF_PATH.'enum/enum.php';
$this->assign('authmode',$enumdata['authmode']);
$db=D('Shop');
$uid = session('uid');
$where['id']=$uid;
$info=$db->where($where)->field('authmode,duanxin,authaction,jumpurl,timelimit,sh,eh,countflag,countmax,smscount,ratelimit,temptime,wxewm,djs,wxsuccess,wxappid,threadurl,wxgzts,wxrzfs') ->find();
if ( strpos($info['authmode'],"#3=")>-1 ) 
{$ma=3;}
elseif(strpos($info['authmode'],"#4=")>-1)
{$ma=4;}
$this->assign('ma',$ma);
$this->assign('a','application');
$this->assign('info',$info);
$this->display();
}
public function appview()
{
$this->isLogin();
include CONF_PATH.'enum/enum.php';
$this->assign('authmode',$enumdata['authmode']);
$db=D('Shop');
$uid = session('uid');
$where['id']=$uid;
$info=$db->where($where)->field('authmode,duanxin,authaction,jumpurl,timelimit,sh,eh,countflag,countmax,token,smscount,ratelimit,temptime,wxewm,djs,wxsuccess,wxappid,threadurl,wxgzts,wxrzfs') ->find();
if ( strpos($info['authmode'],"#3=")>-1 ) 
{$ma=3;}
elseif(strpos($info['authmode'],"#4=")>-1)
{$ma=4;}
$this->assign('ma',$ma);
$this->assign('a','appview');
$this->assign('info',$info);
$this->display();
}
public function doapp()
{
$this->isLogin();
$uid = session('uid');
$db=D('Shop');
$where['id']=$uid;
$info=$db->where($where)->find();
$authmode="";
$sh=(int)$_POST['sh'];
$eh=(int)$_POST['eh'];
$upfileok=false;
if($sh>$eh){
$this->error('上网结束时段不能小于开始时段');
}
foreach($_POST['authmode'] as $K=>$v )
{
if($v=='3'){
$pwd=$_POST['wxauthpwd'];
$ac=$_POST['wx'];
$wx['user']=$ac;
$wx['pwd']=$pwd;
$wx['ysid']=$_POST['wxysid'];
$authmode.="#".$v."=".json_encode($wx)."#";
}
elseif($v=='4'){
$pwd=$_POST['wxauthpwd'];
$ac=$_POST['wx'];
$wx['user']=$ac;
$wx['pwd']=$pwd;
$wx['ysid']=$_POST['wxysid'];
$wx['pass']=$_POST['wxpass'];
$authmode.="#".$v."=".json_encode($wx)."#";
}else{
$authmode.="#".$v."#";
}
}
if( strpos($authmode,"#3=")>-1 ||strpos($authmode,"#4=")>-1)
{
if(empty($info['wxewm'])&&empty($_FILES['img']['name'])){
$this->error('请上传一张微信二维码图片!');
}else
{
if (!is_null($_FILES['img']['name'])&&$_FILES['img']['name']!="")
{
import('ORG.Net.UploadFile');
$upload             = new UploadFile();
$upload->maxSize    = C('AD_SIZE') ;
$upload->allowExts  = C('AD_IMGEXT');
$upload->savePath   =  C('AD_WXEWM');
if(!$upload->upload()) {
$this->error($upload->getErrorMsg());
}else{
$file           =  $upload->getUploadFileInfo();
$_POST['wxewm'] = trim( $file[0]['savepath'],'.').$file[0]['savename'];
$upfileok=true;
}
}
}
}
$authmode.="<".$_POST['renzheng'];
if(!isNumber($_POST['ratelimit'])){
$this->error('上网流量限制必须是数字');}
$isCount=(int)$_POST['countflag'];
if($isCount>0){
if(empty($_POST['countmax'])){
$this->error('上网允许认证次数不能为空');
}
if(!isNumber($_POST['countmax'])){
$this->error('上网允许认证次数必须是数字');
}
$maxcount=(int)$_POST['countmax'];
if($maxcount<0||$maxcount>300){
$this->error('上网允许认证次数范围在1-300');
}
}else{
$_POST['countmax']=0;
}
$_POST['authmode']=$authmode;
if($_POST['authmode']==null||$_POST['authmode']==''){
$_POST['authmode']="#0#";
}
if(!$_POST['timelimit']==""){
if(!is_numeric($_POST['timelimit'])){
$this->error('输入的上网时间必须是数字类型');
}
}
if($_POST['authaction']==1&&$_POST['jumpurl']==""){
$this->error('请输入要跳转的网址');
}
if($_POST['authaction']==1)
if(!isUrl($_POST['jumpurl'])){
$this->error('输入的网址必须以http://开始');
}
$_POST['update_time']=time();
if($db->where($where)->save($_POST)){
if(file_exists( ".{$info['wxewm']}")&&$upfileok)
{
unlink(".{$info['wxewm']}");
}
$this->success('操作成功');
}else{
$this->error('操作失败');
}
}
public function adv()
{
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','adv');
$uid = session('uid');
$where['uid']=$uid;
$ad = D('Ad');
$count=$ad->where($where)->count();
$page=new UserPage($count,C('ad_page'));
$result = $ad->where($where)->field('id,ad_pos,ad_thumb,ad_sort,mode')->limit($page->firstRow.','.$page->listRows)->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function advyiye()
{
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','advyiye');
$uid = session('uid');
$where['shopid']=$uid;
$ad = D('Pushadv');
$count=$ad->where($where)->count();
$page=new UserPage($count,C('ad_page'));
$result = $ad->where($where)->field('id,add_time,pic,trade,startdate,enddate,sort,state')->limit($page->firstRow.','.$page->listRows)->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function addadv()
{
$this->isLogin();
$this->display();
}
public function deladvcache()
{
$path="./Runtime/Cache/Api";
if (is_array($path)) {
foreach ($path as $subPath)
delDirAndFile($subPath,$delDir);
}
if (is_dir($path)) {
$handle = opendir($path);
if ($handle) {
while (false !== ( $item = readdir($handle) )) {
if ($item != "."&&$item != "..")
is_dir("$path/$item") ?delDirAndFile("$path/$item",$delDir) : unlink("$path/$item");
}
closedir($handle);
if ($delDir)
return rmdir($path);
}
}else {
if (file_exists($path)) {
return unlink($path);
}else {
return FALSE;
}
}
clearstatcache();
echo "<script>alert('清理成功');</script>";
echo "<script>window.location ='adv.html'</script>";
}
public function delad()
{
$this->isLogin();
$id = isset($_GET['id']) ?intval($_GET[id]) : 0;
if($id)
{
$thumb = D('ad')->where("id={$id}")->field("ad_thumb")->select();
if(D('ad')->delete($id))
{
if(file_exists( ".{$thumb[0]['ad_thumb']}"))
{
unlink(".{$thumb[0]['ad_thumb']}");
}
$this->success('删除成功',U('user/adv'));
}else{
$this->error('操作出错');
}
}
}
public function editad()
{
$this->isLogin();
$id = isset($_GET['id']) ?intval($_GET['id']) : 0;
$uid        = session('uid');
$where['id']=$id;
$where['uid']=$uid;
if($id)
{
$result = D('Ad')
->where($where)
->find();
$this->assign('info',$result);
$this->display();
}else{
$this->error('无此广告信息');
}
}
public function doeditad()
{
$this->isLogin();
$uid = session('uid');
$id = I('post.id','0','int');
$where['id']=$id;
$where['uid']=$uid;
$upfileok=false;
$db=D('Ad');
$result =$db
->where($where)
->field('id,ad_thumb')
->find();
if($result==false){
$this->error('无此广告信息');
exit;
}
import('ORG.Net.UploadFile');
$upload             = new UploadFile();
$upload->maxSize    = C('AD_SIZE');
$upload->allowExts  = C('AD_IMGEXT');
$upload->savePath   =  C('AD_SAVE');
if (!is_null($_FILES['img']['name'])&&$_FILES['img']['name']!="") {
if(!$upload->upload()) {
$this->error($upload->getErrorMsg());
}else{
$info =  $upload->getUploadFileInfo();
$_POST['ad_thumb'] = trim( $info[0]['savepath'],'.').$info[0]['savename'];
$upfileok=true;
}
}
if($result)
{
$_POST['uid']=$uid;
if($db->create()){
if($db->where($where)->save()){
if(file_exists( ".{$result['ad_thumb']}") &&$upfileok)
{
unlink(".{$result['ad_thumb']}");
}
$this->success('修改成功',U('user/adv'));
}else{
$this->error('操作出错');
}
}else{
$this->error($db->getError());
}
}
}
public function doadv()
{
$this->isLogin();
$uid  = session('uid');
import('ORG.Net.UploadFile');
$upload             = new UploadFile();
$upload->maxSize    = C('AD_SIZE') ;
$upload->allowExts  = C('AD_IMGEXT');
$upload->savePath   =  C('AD_SAVE');
if(!$upload->upload()) {
$this->error($upload->getErrorMsg());
}else{
$info           =  $upload->getUploadFileInfo();
$ad             = D('Ad');
$_POST['uid']    = $uid;
$_POST['ad_thumb'] = trim( $info[0]['savepath'],'.').$info[0]['savename'];
$_POST['ad_sort'] = isset($_POST['ad_sort']) ?$_POST['ad_sort'] : 0;
if($ad->create()){
if($ad->add())
{
$this->success('添加广告成功',U('user/adv'));
}else{
$this->error('添加失败，请重新添加');
}
}else{
$this->error('添加失败，请重新添加');
}
}
}
public function addadvyiye(){
include CONF_PATH.'enum/enum.php';
$this->assign('enumdata',$enumdata);
if(IS_POST){
import('ORG.Net.UploadFile');
$upload             = new UploadFile();
$upload->maxSize    = C('AD_SIZE') ;
$upload->allowExts  = C('AD_IMGEXT');
$upload->savePath   =  C('AD_PUSHSAVE');
$lv="";
foreach($_POST['trade'] as $K=>$v )
{
$lv.="#".$v."#";
}
$_POST['trade']=$lv;
if($_POST['startdate']==""||$_POST['enddate']==""){
$this->error('请选择广告投放时间段');
}
if(!$upload->upload()) {
$this->error($upload->getErrorMsg());
}else{
$info           =  $upload->getUploadFileInfo();
$ad             = D('Pushadv');
$_POST['shopid'] = session('uid');
$shop=D('shop');
$awhere['id']=session('uid');
$resu=$shop->where($awhere)->find();
$_POST['aid']=$resu['pid'];
$_POST['state']=0;
$_POST['add_time']=time();
$_POST['pic'] = trim( $info[0]['savepath'],'.').$info[0]['savename'];
$_POST['sort'] = isset($_POST['sort']) ?$_POST['sort'] : 0;
$_POST['startdate']=strtotime($_POST['startdate']);
$_POST['enddate']=strtotime($_POST['enddate']);
if($ad->create()){
if($ad->add())
{
$this->success('添加广告成功',U('user/advyiye'));
}else{
$this->error('添加失败，请重新添加');
}
}else{
$this->error($ad->getError());
}
}
}else{$shop=D('shop');
$awhere['id']=session('uid');
$resu=$shop->where($awhere)->find();
$this->assign('info',$resu);
$this->display();
}
}
public function route(){
$this->assign('a','route');
$this->isLogin();
$db= D('Routemap');
$uid=session('uid');
$where['shopid']=$uid;
$info= $db->where($where)->find();
$this->assign('info',$info);
$this->display();
}
public function saveroute(){
$this->isLogin();
$uid=session('uid');
$db= D('Routemap');
$where['shopid']=$uid;
$info= $db->where($where)->find();
if(!$info){
$_POST['shopid']=session('uid');
$_POST['sortid']=0;
if($db->create()){
if($db->add()){
$this->success('更新成功',U('user/route'));
}else{
$this->error("操作失败");
}
}else{
$this->error($db->getError());
}
}else{
$where['id']=$info['id'];
$_POST['shopid']=session('uid');
$_POST['sortid']=0;
if($db->create($_POST,2)){
if($db->where($where)->save()){
$this->success('更新成功',U('user/route'));
}else{
$this->error("操作失败");
}
}else{
$this->error($db->getError());
}
}
}
public function routemap()
{
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','routemap');
$uid = session('uid');
$where['shopid']=$uid;
$ad = D('routemap');
$count=$ad->where($where)->count();
$page=new UserPage($count,C('ad_page'));
$result = $ad->where($where)->field('id,routename,sortid,gw_id,sys_memfree,sys_uptime,wifidog_uptime,sys_load,add_time,last_heartbeat_time,notes')->limit($page->firstRow.','.$page->listRows)->order('sortid asc ,add_time asc')->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function editroute()
{
$this->isLogin();
if(IS_POST){
$db= D('Routemap');
$_POST['shopid']=session('uid');
$id = I('post.id','0','int');
$where['id']=$id;
$where['shopid']=session('uid');
$result =$db
->where($where)
->field('id')
->find();
if($result==false){
$this->error('没有此路由信息');
exit;
}
if($db->create()){
if($db->where($where)->save()){
$this->success('更新成功',U('user/routemap'));
}else{
$this->error("操作失败");
}
}else{
$this->error($db->getError());
}
}else{
$id = isset($_GET['id']) ?intval($_GET['id']) : 0;
$uid = session('uid');
$where['id']=$id;
$where['shopid']=$uid;
$r = D('Routemap')->where($where)->field('id,shopid,routename,gw_address,gw_port,gw_id,sortid')->find();
if($r==false){
$this->error('没有此路由信息');
}else{
$this->assign('info',$r);
$this->display();
}
}
}
public function addroute()
{
$this->isLogin();
$db=D('Routemap');
if(IS_POST){
$_POST['shopid']=session('uid');
$count=$db->where("shopid={$_POST['shopid']}")->count();
if ($count>=C('addmaxroute')){$this->error("超过添加数量");}
else{
if($db->create()){
if($db->add()){
$this->success('添加成功',U('user/routemap'));
}else{
$this->error("操作失败");
}
}else{
$this->error($db->getError());
}
}
}else{
$this->display();
}
}
public function delrout()
{
$this->isLogin();
$id = isset($_GET['id']) ?intval($_GET['id']) : 0;
$uid = session('uid');
$where['id']=$id;
$where['shopid']=$uid;
$r = D('Routemap')->where($where)->find();
if($r==false){
$this->error('没有此路由信息');
}else{
if(D('Routemap')->where($where)->delete()){
$this->success('删除成功');
}else{
$this->error('删除失败');
}
}
}
public function online(){
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','online');
$uid = session('uid');
$where['shopid']=$uid;
$ad = D('Authlist');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$pg=$page->show();
$result = $ad->where($where)->order('login_time desc')->limit($page->firstRow.','.$page->listRows)->select();
$this->assign('page',$pg);
$this->assign('lists',$result);
$this->display();
}
public function report(){
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','report');
$uid = session('uid');
$where['shopid']=$uid;
$where['mode']  = array('in','0,1');
if(!isset($_GET['sdate'])){
$ad = D('Member');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('login_time desc')->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}else{
$sdate = $_GET["sdate"];
$edate=  $_GET["edate"];
$where['add_date']  = array(array('egt',$sdate),array('elt',$edate));
$ad = D('Member');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('login_time desc')->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();}
}
public function reportwx(){
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','report');
$uid = session('uid');
$where['shopid']=$uid;
if(isset($_GET['sdate'])){
$sdate = strtotime($_GET["sdate"]);
$edate=  strtotime($_GET["edate"]);
$where['subscribe_time']  = array(array('egt',$sdate),array('elt',$edate));
$user = D('wxuser');
$count=$user->where($where)->count();
$page=new UserPage($count,20);
$result =$user->where($where)->limit($page->firstRow.','.$page->listRows)->order('subscribe_time desc')->select();
$wheredata['add_date']=getNowDate();
$wheredata['shopid']=$uid;
$gztoday=D('wxdata')->where($wheredata)->find();
$this->assign('gztoday',$gztoday);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY)";
$gzyestoday=D('wxdata')->query($sql);
$this->assign('gzyestoday',$gzyestoday);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()";
$gzweek=D('wxdata')->query($sql);
$this->assign('gzweek',$gzweek);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date >= '".date("Y-m-01")."'";
$gzyue=D('wxdata')->query($sql);
$this->assign('gzyue',$gzyue);
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->assign('count',$count);
$this->display();
}else{
$user = D('wxuser');
$count=$user->where($where)->count();
$page=new UserPage($count,20);
$result =$user->where($where)->limit($page->firstRow.','.$page->listRows)->order('subscribe_time desc')->select();
$wheredata['add_date']=getNowDate();
$wheredata['shopid']=$uid;
$gztoday=D('wxdata')->where($wheredata)->find();
$this->assign('gztoday',$gztoday);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY)";
$gzyestoday=D('wxdata')->query($sql);
$this->assign('gzyestoday',$gzyestoday);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()";
$gzweek=D('wxdata')->query($sql);
$this->assign('gzweek',$gzweek);
$sql="select SUM(gzl) as gzl,SUM(qxl) as qxl from ".C('DB_PREFIX')."wxdata where shopid=".$uid." and add_date >= '".date("Y-m-01")."'";
$gzyue=D('wxdata')->query($sql);
$this->assign('gzyue',$gzyue);
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->assign('count',$count);
$this->display();
}
}
public function line(){
$this->isLogin();
$this->assign('a','line');
import('@.ORG.UserPage');
$uid = session('uid');
$where['shopid']=$uid;
$now=time()-180;
$where['last_time']= array('egt',$now );
$where['mac']=array('NEQ','NULL');
$ad = D('authlist');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('update_time desc')->select();
$memb=D('member');
$kk="";
foreach($result as $v){
$kk.=$v['uid'].',';
}
$where1['id']=array('in',$kk);
$member=$memb->where($where1)->select();
$this->assign('member',$member);
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->assign('count',$count);
$this->display();
}
public function blacklist(){
$this->isLogin();
$this->assign('a','blacklist');
import('@.ORG.UserPage');
$uid = session('uid');
$where['shopid']=$uid;
$where['state']=0;
$ad = D('blacklist');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('add_date desc')->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function whitelist(){
$this->isLogin();
$this->assign('a','blacklist');
import('@.ORG.UserPage');
$uid = session('uid');
$where['shopid']=$uid;
$where['state']=1;
$ad = D('blacklist');
$count=$ad->where($where)->count();
$page=new UserPage($count,20);
$result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('add_date desc')->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function goblacklist(){
$this->isLogin();
$_POST['shopid']=I('get.shopid');
$_POST['user']=I('get.user');
$_POST['phone']=I('get.phone');
$_POST['mac']=I('get.mac');
$_POST['state']=I('get.state');
$_POST['add_date']=time();
$ad=D('blacklist');
if($ad->add($_POST))
{
if($_POST['state']==0){
$where['token']=I('get.token');
D('authlist')->where($where)->delete();
}else if($_POST['state']==1){
$overtime['over_time']='0';
$wheretoken['token']=I('get.token');
D('authlist')->where($wheretoken)->save($overtime);
}
$this->success('操作成功',U('user/line'));
}else{
$this->error('操作失败，请重新操作(已添加此mac)');
}
}
public function deluser(){
$this->isLogin();
$token=I('get.token');
$where['token']=$token;
$ad=D('authlist');
if($resu=$ad->where($where)->delete()){
$this->success('操作成功',U('user/line'));
}else{
$this->error('操作失败，请重新操作');
}
}
public function addbwlist(){
if(IS_POST){
$_POST['shopid']=session('uid');
$_POST['add_date']=time();
$db=D('blacklist');
unset($_POST['sub']);
unset($_POST['__hash__']);
if(D('blacklist')->add($_POST)){
$this->success('添加成功',U('user/blacklist'));
}else{
$this->error('操作失败，请重新操作(已添加此mac)');
}
}
else{$this->display();}
}
public function recoveruser(){
$this->isLogin();
$where['shopid']=I('get.shopid');
$where['id']=I('get.id');
$where['state']=I('get.state');
$ad=D('blacklist');
if($ad->where($where)->delete()){
if($where['state']==1){
$wheremac['mac']=I('get.mac');
$wheremac['shopid']=I('get.shopid');
D('authlist')->where($wheremac)->delete();
}
$this->success('操作成功',U('user/blacklist'));
}else{
$this->error('操作失败，请重新操作');
}
}
public function rpt(){
$this->isLogin();
$this->assign('a','online');
$this->display();
}
public function downrpt(){
$this->isLogin();
$way=I('get.mode');
$para['mode']=$way;
switch(strtolower($way)){
case "query":
$sdate=I('get.sdate');
$edate=I('get.edate');
$para['sdate']=$sdate;
$para['edate']=$edate;
break;
}
$sql=$this->getrptsql($para);
if($sql!=''){
$db=D('Adcount');
$rs=$db->query($sql);
switch(strtolower($way)){
case "today":
$fm=array(array('统计时段','t'),array('24小时上网流量','ct'));
break;
case "yestoday":
$fm=array(array('统计时段','t'),array('24小时上网流量','ct'));
break;
case "week":
$fm=array(array('统计日期','td'),array('日上网流量','ct'));
break;
case "month":
$fm=array(array('统计日期','td'),array('日上网流量','ct'));
break;
case "query":
$fm=array(array('统计日期','td'),array('日上网流量','ct'));
break;
}
exportexcelByKey($rs,$fm,date('Y-m-d H:i:s',time()));
}else{
$this->error("参数不正确");
}
}
public function adrpt(){
$this->isLogin();
$db=D('Authlist');
$sql="select add_date ,count(*) as t FROM(select FROM_UNIXTIME(add_time, '%Y-%m-%d' ) as add_date from ".C('DB_PREFIX')."test) t1 group by  add_date";
$rs=$db->query($sql);
$this->assign('dt',$rs);
$this->display();
}
public function userchart(){
$this->isLogin();
$this->assign('a','report');
$this->display();
}
public function downchart(){
$this->isLogin();
$way=I('get.mode');
$para['mode']=$way;
switch(strtolower($way)){
case "query":
$sdate=I('get.sdate');
$edate=I('get.edate');
$para['sdate']=$sdate;
$para['edate']=$edate;
break;
}
$sql=$this->getuserchartsql($para);
if($sql!=''){
$db=D('Adcount');
$rs=$db->query($sql);
switch(strtolower($way)){
case "today":
$fm=array(array('统计时段','showdate'),array('认证总人数','totalcount'),array('注册认证','regcount'),array('手机认证','phonecount'),array('微信关注认证','weixincount'));
break;
case "yestoday":
$fm=array(array('统计时段','showdate'),array('认证总人数','totalcount'),array('注册认证','regcount'),array('手机认证','phonecount'),array('微信关注认证','weixincount'));
break;
case "week":
$fm=array(array('统计日期','showdate'),array('认证总人数','totalcount'),array('注册认证','regcount'),array('手机认证','phonecount'),array('微信关注认证','weixincount'));
break;
case "month":
$fm=array(array('统计日期','showdate'),array('认证总人数','totalcount'),array('注册认证','regcount'),array('手机认证','phonecount'),array('微信关注认证','weixincount'));
break;
case "query":
$fm=array(array('统计日期','showdate'),array('认证总人数','totalcount'),array('注册认证','regcount'),array('手机认证','phonecount'),array('微信关注认证','weixincount'));
break;
}
exportexcelByKey($rs,$fm,date('Y-m-d H:i:s',time()));
}else{
$this->error("参数不正确");
}
}
public  function getuserchart(){
$this->isLogin();
$way=I('get.mode');
$where=" where shopid=".session('uid');
switch(strtolower($way)){
case "today":
$sql=" select t,CONCAT(CURDATE(),' ',t,'点') as showdate, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,id,mode from ".C('DB_PREFIX')."member";
$sql.=" where add_date='".date("Y-m-d")."' and ( mode=0 or mode=1 or mode=3 ) and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "yestoday":
$sql=" select t,CONCAT(CURDATE()-1,' ',t,'点') as showdate, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,id,mode from ".C('DB_PREFIX')."member";
$sql.=" where add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) and ( mode=0 or mode=1 or mode=3) and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "week":
$sql="  select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ".C('DB_PREFIX')."member ";
$sql.=" where shopid=".session('uid')." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()  and ( mode=0 or mode=1 or mode=3) GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as showdate,tname as t, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ".C('DB_PREFIX')."member ";
$sql.=" where  shopid=".session('uid')." and  add_date >= '".date("Y-m-01")."' and ( mode=0 or mode=1 or mode=3 ) GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=I('get.sdate');
$edate=I('get.edate');
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount   from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount,count(CASE when mode=3 then 1 else null end) as weixincount from ".C('DB_PREFIX')."member ";
$sql.=" where  shopid=".session('uid')." and add_date between '$sdate' and '$edate'  and ( mode=0 or mode=1 or mode=3) GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
$db=D('Adcount');
$rs=$db->query($sql);
$this->ajaxReturn(json_encode($rs));
}
private function getuserchartsql($para){
$way=$para['mode'];
$where=" where shopid=".session('uid');
switch(strtolower($way)){
case "today":
$sql=" select t,CONCAT(CURDATE(),' ',t,'点') as showdate, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,id,mode from ".C('DB_PREFIX')."member";
$sql.=" where add_date='".date("Y-m-d")."' and ( mode=0 or mode=1 or mode=3 ) and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "yestoday":
$sql=" select t,CONCAT(CURDATE()-1,' ',t,'点') as showdate, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,id,mode from ".C('DB_PREFIX')."member";
$sql.=" where add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) and ( mode=0 or mode=1 or mode=3) and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "week":
$sql="  select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount,count(CASE when mode=3 then 1 else null end) as weixincount from ".C('DB_PREFIX')."member ";
$sql.=" where shopid=".session('uid')." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()  and ( mode=0 or mode=1 or mode=3 ) GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as showdate,tname as t, COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount, count(CASE when mode=3 then 1 else null end) as weixincount from ".C('DB_PREFIX')."member ";
$sql.=" where  shopid=".session('uid')." and  add_date >= '".date("Y-m-01")."' and ( mode=0 or mode=1 or mode=3 ) GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=$para['sdate'];
$edate=$para['edate'];
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(totalcount,0)  as totalcount, COALESCE(regcount,0)  as regcount ,COALESCE(phonecount,0) as phonecount,COALESCE(weixincount,0) as weixincount from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,count(id) as totalcount , count(CASE when mode=0 then 1 else null end) as regcount, count(CASE when mode=1 then 1 else null end) as phonecount,count(CASE when mode=3 then 1 else null end) as weixincount  from ".C('DB_PREFIX')."member ";
$sql.=" where  shopid=".session('uid')." and add_date between '$sdate' and '$edate'  and ( mode=0 or mode=1 or mode=3 ) GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
return $sql;
}
private function getrptsql($para){
$way=$para['mode'];
$where=" where shopid=".session('uid');
switch(strtolower($way)){
case "today":
$sql=" select t, COALESCE(ct,0)  as ct from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="( select thour ,count(*) as ct from ";
$sql.="(select shopid,FROM_UNIXTIME(login_time,\"%H\") as thour,";
$sql.=" FROM_UNIXTIME(login_time,\"%Y-%m-%d\") as d from ".C('DB_PREFIX')."authlist $where) a ";
$sql.=" where d='".date("Y-m-d")."' ";
$sql.=" group by thour ) ";
$sql.=" b on a.t=b.thour ";
break;
case "yestoday":
$sql=" select t, COALESCE(ct,0)  as ct from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="( select thour ,count(*) as ct from ";
$sql.="(select shopid,FROM_UNIXTIME(login_time,\"%H\") as thour,";
$sql.=" FROM_UNIXTIME(login_time,\"%Y-%m-%d\") as d from ".C('DB_PREFIX')."authlist $where) a ";
$sql.=" where d=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) ";
$sql.=" group by thour ) ";
$sql.=" b on a.t=b.thour ";
break;
case "week":
$sql="  select right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(ct,0)  as ct from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,count(*) as ct  from ".C('DB_PREFIX')."authlist ";
$sql.=" where shopid=".session('uid')." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as td, COALESCE(ct,0) as ct from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,count(*) as ct  from ".C('DB_PREFIX')."authlist  ";
$sql.=" where  shopid=".session('uid')." and  add_date >= '".date("Y-m-01")."' GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=$para['sdate'];
$edate=$para['edate'];
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select right(td,5) as td,COALESCE(ct,0)  as ct from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,count(*) as ct  from ".C('DB_PREFIX')."authlist ";
$sql.=" where  shopid=".session('uid')." and add_date between '$sdate' and '$edate'  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
return $sql;
}
public function getrpt(){
$this->isLogin();
$way=I('get.mode');
$where=" where shopid=".session('uid');
switch(strtolower($way)){
case "today":
$sql=" select t, COALESCE(ct,0)  as ct from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="( select thour ,count(*) as ct from ";
$sql.="(select shopid,FROM_UNIXTIME(login_time,\"%H\") as thour,";
$sql.=" FROM_UNIXTIME(login_time,\"%Y-%m-%d\") as d from ".C('DB_PREFIX')."authlist $where) a ";
$sql.=" where d='".date("Y-m-d")."' ";
$sql.=" group by thour ) ";
$sql.=" b on a.t=b.thour ";
break;
case "yestoday":
$sql=" select t, COALESCE(ct,0)  as ct from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="( select thour ,count(*) as ct from ";
$sql.="(select shopid,FROM_UNIXTIME(login_time,\"%H\") as thour,";
$sql.=" FROM_UNIXTIME(login_time,\"%Y-%m-%d\") as d from ".C('DB_PREFIX')."authlist $where) a ";
$sql.=" where d=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) ";
$sql.=" group by thour ) ";
$sql.=" b on a.t=b.thour ";
break;
case "week":
$sql="  select right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(ct,0)  as ct from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,count(*) as ct  from ".C('DB_PREFIX')."authlist ";
$sql.=" where shopid=".session('uid')." and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as t, COALESCE(ct,0) as ct from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,count(*) as ct  from ".C('DB_PREFIX')."authlist  ";
$sql.=" where  shopid=".session('uid')." and  add_date >= '".date("Y-m-01")."' GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=I('get.sdate');
$edate=I('get.edate');
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(ct,0)  as ct from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,count(*) as ct  from ".C('DB_PREFIX')."authlist ";
$sql.=" where  shopid=".session('uid')." and add_date between '$sdate' and '$edate'  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
$db=D('Authlist');
$rs=$db->query($sql);
$this->ajaxReturn(json_encode($rs));
}
public function advrpt(){
$this->isLogin();
$this->assign('a','adv');
$this->show();
}
public  function getadrpt(){
$this->isLogin();
$way=I('get.mode');
$where=" where shopid=".session('uid');
switch(strtolower($way)){
case "today":
$sql=" select t,CONCAT(CURDATE(),' ',t,'点') as showdate, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, sum(showup)as showup,sum(hit) as hit from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,showup ,hit from ".C('DB_PREFIX')."adcount";
$sql.=" where add_date='".date("Y-m-d")."' and mode=1 and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "yestoday":
$sql=" select t,CONCAT(CURDATE()-1,' ',t,'点') as showdate, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, sum(showup)as showup,sum(hit) as hit from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,showup ,hit from ".C('DB_PREFIX')."adcount";
$sql.=" where add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) and mode=1 and shopid=".session('uid');
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "week":
$sql="  select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit ,COALESCE(hit/showup*100,0) as rt from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,sum(showup) as showup ,sum(hit) as hit from ".C('DB_PREFIX')."adcount";
$sql.=" where shopid=".session('uid')." and mode=1 and add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE()  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as showdate,tname as t, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,sum(showup) as showup ,sum(hit) as hit  from ".C('DB_PREFIX')."adcount  ";
$sql.=" where  shopid=".session('uid')." and mode=1 and  add_date >= '".date("Y-m-01")."' GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=I('get.sdate');
$edate=I('get.edate');
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,sum(showup) as showup ,sum(hit) as hit  from ".C('DB_PREFIX')."adcount ";
$sql.=" where  shopid=".session('uid')." and mode=1 and add_date between '$sdate' and '$edate'  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
$db=D('Adcount');
$rs=$db->query($sql);
$this->ajaxReturn(json_encode($rs));
}
public function advrptyiye(){
if(IS_POST){
$way=$_POST['mode'];
$aid = $_POST['id'];
switch(strtolower($way)){
case "today":
$sql=" select t,CONCAT(CURDATE(),' ',t,'点') as showdate, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, sum(showup)as showup,sum(hit) as hit from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,showup ,hit from ".C('DB_PREFIX')."adcount";
$sql.=" where add_date='".date("Y-m-d")."' and mode=50 and aid=".$aid;
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "yestoday":
$sql=" select t,CONCAT(CURDATE()-1,' ',t,'点') as showdate, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."hours a left JOIN ";
$sql.="(select thour, sum(showup)as showup,sum(hit) as hit from ";
$sql.="(select  FROM_UNIXTIME(add_time,\"%H\") as thour,showup ,hit from ".C('DB_PREFIX')."adcount";
$sql.=" where add_date=DATE_ADD(CURDATE() ,INTERVAL -1 DAY) and mode=50 and aid=".$aid;
$sql.=" )a group by thour ) c ";
$sql.="  on a.t=c.thour ";
break;
case "week":
$sql="  select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit ,COALESCE(hit/showup*100,0) as rt from ";
$sql.=" ( select CURDATE() as td ";
for($i=1;$i<7;$i++){
$sql.="  UNION all select DATE_ADD(CURDATE() ,INTERVAL -$i DAY) ";
}
$sql.=" ORDER BY td ) a left join ";
$sql.="( select add_date,sum(showup) as showup ,sum(hit) as hit from ".C('DB_PREFIX')."adcount";
$sql.=" where   add_date between DATE_ADD(CURDATE() ,INTERVAL -6 DAY) and CURDATE() and mode=50 and aid=".$aid."  GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
case "month":
$t=date("t");
$sql=" select tname as showdate,tname as t, COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ".C('DB_PREFIX')."day  a left JOIN";
$sql.="( select right(add_date,2) as td ,sum(showup) as showup ,sum(hit) as hit  from ".C('DB_PREFIX')."adcount  ";
$sql.=" where   add_date >= '".date("Y-m-01")."' and mode=50 and aid=".$aid." GROUP BY  add_date";
$sql.=" ) b on a.tname=b.td ";
$sql.=" where a.id between 1 and  $t";
break;
case "query":
$sdate=$_POST['sdate'];
$edate=$_POST['edate'];
import("ORG.Util.Date");
$dt=new Date($sdate);
$leftday=$dt->dateDiff($edate,'d');
$sql=" select td as showdate,right(td,5) as td,datediff(td,CURDATE()) as t,COALESCE(showup,0)  as showup, COALESCE(hit,0)  as hit,COALESCE(hit/showup*100,0) as rt from ";
$sql.=" ( select '$sdate' as td ";
for($i=0;$i<=$leftday;$i++){
$sql.="  UNION all select DATE_ADD('$sdate' ,INTERVAL $i DAY) ";
}
$sql.=" ) a left join ";
$sql.="( select add_date,sum(showup) as showup ,sum(hit) as hit  from ".C('DB_PREFIX')."adcount ";
$sql.=" where  add_date between '$sdate' and '$edate'  and mode=50 and aid=".$aid ." GROUP BY  add_date";
$sql.=" ) b on a.td=b.add_date ";
break;
}
$db=D('Adcount');
$rs=$db->query($sql);
$this->ajaxReturn(json_encode($rs));
}else{
$aid = isset($_GET['id']) ?intval($_GET['id']) : 0;
$where['id']=$aid;
$result = D('pushadv')
->where($where)
->find();
if($result){
$this->assign('info',$result);
$this->display();
}else{
$this->error('无此广告信息');
}
}
}
public function comment()
{
$this->isLogin();
import('@.ORG.UserPage');
$this->assign('a','comment');
$uid = session('uid');
$where['shopid']=$uid;
$ad = D('Comment');
$count=$ad->where($where)->count();
$page=new UserPage($count,C('ad_page'));
$result = $ad->where($where)->field('id,user,phone,content,add_time')->limit($page->firstRow.','.$page->listRows)->select();
$this->assign('page',$page->show());
$this->assign('lists',$result);
$this->display();
}
public function delcomment(){
$id=I('get.id');
$where['id']=$id;
$uid = session('uid');
$where['shopid']=$uid;
$ad = D('Comment');
$ad->where($where)->delete();
$this->success('操作完成',U('user/comment'));
}
}
?>