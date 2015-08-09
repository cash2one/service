<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,此文件您此前破解过,再次破解免费(相同文件MD5值).
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class LoginAction extends BaseApiAction{
private $gw_address = null;
private $gw_port = null;
private $gw_id = null;
private $mac = null;
private $url = null;
private $logout = null;
private $ip;
public function index(){
if (isset($_REQUEST["gw_address"])) {
$this->gw_address = $_REQUEST['gw_address'];
cookie('gw_address',$_REQUEST['gw_address']);
}
if (isset($_REQUEST["gw_port"])) {
$this->gw_port = $_REQUEST['gw_port'];
cookie('gw_port',$_REQUEST['gw_port']);
}
if (isset($_REQUEST["gw_id"])) {
$this->gw_id = $_REQUEST['gw_id'];
cookie('gw_id',$_REQUEST['gw_id']);
}
if (isset($_REQUEST["url"])) {
$this->url = $_REQUEST['url'];
cookie('gw_url',$_REQUEST['url']);
}
if (isset($_REQUEST["mac"])) {
cookie('mac',$_REQUEST['mac']);
$mac = $_REQUEST['mac'];
}
$nowdate=getNowDate();
if(!empty($this->gw_id)){
$sql="select a.*,b.shopname,b.authmode,b.wxewm,b.maxcount,b.linkflag,b.sh,b.eh,b.pid,b.countflag,b.countmax,b.djs,b.tpl_path from ".C('DB_PREFIX')."routemap a left join ".C('DB_PREFIX')."shop b on a.shopid=b.id ";
$sql.=" where a.gw_id='".$this->gw_id."' limit 1";
$db=D('Routemap');
$addb=D('Ad');
$info=$db->query($sql);
$shopinfo=D('wap');
$where['uid']=$info[0]['shopid'];
$shopresult=$shopinfo->where($where)->find();
$this->assign('shopxinxi',$shopresult);
if($info!=false){
$tplkey=$info[0]['tpl_path'];
$show=1;
$max=$info[0]['maxcount'];
$limit=$info[0]['linkflag'];
if($limit==0){
$where['shopid']=$info[0]['shopid'];
$count=D('member')->where($where)->count();
if($count>$max){
$show=0;
}
}
cookie('shopid',$info[0]['shopid']);
$wherewhite['shopid']=$info[0]['shopid'];
$wherewhite['mac']=$mac;
$wherewhite['state']=1;
$whitelist=D('blacklist')->where($wherewhite)->count();
if($whitelist>0){
$this->redirect("index.php/api/userauth/noauthwhite");
}
$authmode=$info[0]['authmode'];
$where['uid']=$info[0]['shopid'];
$where['ad_pos']=0;
$ad=$addb->where($where)->order('ad_sort asc')->field('id,uid,ad_thumb,mode')->select();
$ids="";
foreach ($ad as $k=>$v){
$ids.=$v['id'].",";
}
$this->assign('ad',$ad);
$this->assign('adid',$ids);
$this->assign('show',$show);
$hour=(int)date("H");
if((!empty($info[0]['sh'])||$info[0]['sh']==0)&&(!empty($info[0]['eh'])||$info[0]['eh']==0)&&$info[0]['sh']!=""&&$info[0]['eh']!=""){
$sh=(int)$info[0]['sh'];
$eh=(int)$info[0]['eh'];
$auth['opensh']=$sh;
$auth['openeh']=$eh;
$auth['openflag']=true;
if($hour>=$sh&&$hour<=$eh){
$auth['open']=true;
}else{
$auth['open']=false;
}
}else{
$auth['open']=true;
$auth['openflag']=false;
}
if($authmode==null||$authmode==""){
$auth['reg']=1;
}else{
$tmp=explode('#',$authmode);
foreach($tmp as $v){
if($v!='#'&&$v!=''){
$arr[]=$v;
}
}
foreach($arr as $v){
$temp=explode('=',$v);
if(count($temp)>1&&$temp[0]=='3'){
$auth['wx']=1;
$auth['wxinfo']=$temp[1];
}elseif(count($temp)>1&&$temp[0]=='4'){
$auth['wxmm']=1;
}else{
if($v=='0'){
$auth['reg']=1;
}
if($v=='1'){
$auth['phone']=1;
}
if($v=='2'){
$auth['allow']=1;
}
}
}
}
if($auth['wx']==1){
$wx=json_decode($auth['wxinfo']);
$this->assign('wxname',$wx->user);
$this->assign('wxpwd',$wx->pwd);
$this->assign('wxewm',$info[0]['wxewm']);
}
if($info[0]['countflag']>0){
$maxcount=$info[0]['countmax'];
$authdb=D('Authlist');
$countwhere['mac']=$mac;
$countwhere['shopid']=$info[0]['shopid'];
$countwhere['add_date']=$nowdate;
$auth_count=$authdb->where($countwhere)->count();
if(($maxcount-$auth_count)<=0){
$auth['overmax']=1;
}else{
$auth['overmax']=0;
}
}else{
$auth['overmax']=0;
}
$this->assign("authmode",$auth);
$this->assign("shopinfo",$info);
if(substr($authmode,-1)=="0"){$duanxin="0";}
if(substr($authmode,-1)=="1"){$duanxin="1";}
$this->assign("duanxin",$duanxin);
$uAgent = strtolower($_SERVER['HTTP_USER_AGENT']);
if(strpos($uAgent,"windows")>-1)
{$this->display('index2');}
else{
if(empty($tplkey)||$tplkey==""||strtolower($tplkey)=="default"){
$this->display();
}else{
$this->display('index$'.$tplkey);
}}
}else{
echo 'MAC地址尚未绑定,请联系管理员！';
}
}else{
echo '参数不正确';
}
}
public function weixin(){
$code=I('get.token');
$where['token']=$code;
$resu=D('shop')->where($where)->find();
if($resu)
if(strpos($resu['authmode'],"#3=")>-1){
$where2['shopid']=$resu['id'];
$resu2=D('routemap')->where($where2)->order('last_heartbeat_time desc')->limit(1)->select();
$gw_id=$resu2[0]['gw_id'];
$gw_address=$resu2[0]['gw_address'];
$gw_port=$resu2[0]['gw_port'];
cookie('gw_id',$gw_id);
cookie('gw_address',$gw_address);
cookie('gw_port',$gw_port);
$this->redirect("index.php/api/userauth/wxyj");
}else{$this->error("微信认证未打开");}else{$this->error("未找到此商家数据");}
}
public  function countad(){
$gid=cookie('gw_id');
$sid=cookie('shopid');
if(empty($gid)||empty($sid)){
exit;
}
$ids=I('post.ids');
$idarr=explode(',',$ids);
$tr=new Model();
$time=time();
$tr->startTrans();
$arrdata['showup']=1;
$arrdata['hit']=0;
$arrdata['shopid']=$sid;
$arrdata['add_time']=$time;
$arrdata['add_date']=getNowDate();
$arrdata['mode']=1;
foreach($idarr as $v){
if($v!=""){
$arrdata['aid']=$v;
$tr->table(C('DB_PREFIX')."adcount")->add($arrdata);
}
}
$tr->commit();
}
public function apple(){
echo '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN"><HTML><HEAD><TITLE>Success</TITLE></HEAD><BODY>Success</BODY></HTML>';
}
}
?>