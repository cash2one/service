<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:95个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class WebAction extends BaseUserAction{
protected  function _initialize() {
parent::_initialize();
$this->init();
}
private  function init(){
$this->assign('a','web3g');
}
public  function index(){
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIlIIlII=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
$this->assign('wapinfo',$IIIIIIlIIlII);
$this->display();
}
public function doset(){
if(IS_POST){
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIlIIlII=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
if($IIIIIIlIIlII==false){
$_POST['uid']=session('uid');
if($IIIIIIIIIll1->create()){
if($IIIIIIIIIll1->add()){
$this->success("操作成功",U('web/index'));
}else{
$this->error("操作成功",U('web/index'));
}
}else{
$this->error($IIIIIIIIIll1->getError());
}
}else{
if($IIIIIIIIIll1->create()){
if($IIIIIIIIIll1->where($IIIIIIIIII11)->save()){
$this->success("操作成功",U('web/index'));
}else{
$this->error("操作成功",U('web/index'));
}
}else{
$this->error($IIIIIIIIIll1->getError());
}
}
}
}
public function catelog(){
$IIIIIIIIIll1=D('Wapcatelog');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIII1lII=$IIIIIIIIIll1->where($IIIIIIIIII11)->select();
$this->assign('lists',$IIIIIIII1lII);
$this->display();
}
public function addcatelog(){
if(IS_POST){
import('ORG.Net.UploadFile');
$IIIIIIIII1l1             = new UploadFile();
$IIIIIIIII1l1->maxSize    = C('AD_SIZE') ;
$IIIIIIIII1l1->allowExts  = C('AD_IMGEXT');
$IIIIIIIII1l1->savePath   =  C('AD_SAVE');
if(!$IIIIIIIII1l1->upload()) {
$this->error($IIIIIIIII1l1->getErrorMsg());
}else{
$IIIIIIIII11l           =  $IIIIIIIII1l1->getUploadFileInfo();
$_POST['uid'] = session('uid');
$_POST['titlepic'] = trim( $IIIIIIIII11l[0]['savepath'],'.').$IIIIIIIII11l[0]['savename'];
$IIIIIIlIII1l=D('Wapcatelog');
if($IIIIIIlIII1l->create()){
if($IIIIIIlIII1l->add()){
$this->success("添加成功",U('web/catelog'));
}else{
$this->error("添加失败");
}
}else{
$this->error($IIIIIIlIII1l->getError());
}
}
}else{
$this->display();
}
}
public function editcatelog(){
if(IS_POST){
$IIIIIIIIIII1=$_POST['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Wapcatelog')
->where($IIIIIIIIII11)
->field('id')
->find();
if(!$IIIIIIIII1I1){
$this->error('无此栏目信息');
}
import('ORG.Net.UploadFile');
$IIIIIIIII1l1             = new UploadFile();
$IIIIIIIII1l1->maxSize    = C('AD_SIZE') ;
$IIIIIIIII1l1->allowExts  = C('AD_IMGEXT');
$IIIIIIIII1l1->savePath   =  C('AD_SAVE');
if (!is_null($_FILES['img']['name'])&&$_FILES['img']['name']!="")
{
if(!$IIIIIIIII1l1->upload()) {
$this->error($IIIIIIIII1l1->getErrorMsg());
}else{
$IIIIIIIII11l =  $IIIIIIIII1l1->getUploadFileInfo();
$_POST['titlepic'] = trim( $IIIIIIIII11l[0]['savepath'],'.').$IIIIIIIII11l[0]['savename'];
}
}
$_POST['uid'] = session('uid');
$IIIIIIlIII1l=D('Wapcatelog');
if($IIIIIIlIII1l->create()){
if($IIIIIIlIII1l->where($IIIIIIIIII11)->save()){
$this->success("添加成功",U('web/catelog'));
}else{
$this->error("添加失败");
}
}else{
$this->error($IIIIIIlIII1l->getError());
}
}else{
$IIIIIIIIIII1=$_GET['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Wapcatelog')
->where($IIIIIIIIII11)
->find();
if($IIIIIIIII1I1){
$this->assign('info',$IIIIIIIII1I1);
$this->display();
}else{
$this->error('无此栏目信息');
}
}
}
public function delcatelog(){
$IIIIIIIIIII1=$_GET['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIII1l1II = session('uid');
$IIIIIIIIII11['cid']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Arts')
->where($IIIIIIIIII11)
->count();
if($IIIIIIIII1I1>0){
$this->error("请先删除该栏目下的文章内容");
}else{
$IIIIIIll1lIl['id']=$IIIIIIIIIII1;
$IIIIIIll1lIl['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Wapcatelog')
->where($IIIIIIll1lIl)
->delete();
if($IIIIIIIII1I1){
$this->success('操作成功');
}else{
$this->error('无此栏目信息');
}
}
}
public function arts(){
$IIIIIIlIII1l=D('Wapcatelog');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIIII11['mode']=0;
$IIIIIIII1lII=$IIIIIIlIII1l->where($IIIIIIIIII11)->field('id,title')->select();
$this->assign('catelog',$IIIIIIII1lII);
import('@.ORG.UserPage');
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIIIll1=D('Arts');
$IIIIIIIII1II=$IIIIIIIIIll1->where($IIIIIIIIII11)->count();
$IIIIIIIII1Il=new UserPage($IIIIIIIII1II,C('ad_page'));
$IIIIIIIII1I1 =$IIIIIIIIIll1 
->where($IIIIIIIIII11)->limit($IIIIIIIII1Il->firstRow.','.$IIIIIIIII1Il->listRows)
->select();
$this->assign('lists',$IIIIIIIII1I1);
$this->assign('page',$IIIIIIIII1Il->show());
$this->display();
}
public function addarts(){
if(IS_POST){
$IIIIIIll1lll=$_POST['cid'];
if($IIIIIIll1lll<1){
$this->error("请选择所属栏目");
}
import('ORG.Net.UploadFile');
$IIIIIIIII1l1             = new UploadFile();
$IIIIIIIII1l1->maxSize    = C('AD_SIZE') ;
$IIIIIIIII1l1->allowExts  = C('AD_IMGEXT');
$IIIIIIIII1l1->savePath   =  C('AD_SAVE');
if (!is_null($_FILES['img']['name'])&&$_FILES['img']['name']!="")
{
if(!$IIIIIIIII1l1->upload()) {
$this->error($IIIIIIIII1l1->getErrorMsg());
}else{
$IIIIIIIII11l =  $IIIIIIIII1l1->getUploadFileInfo();
$_POST['titlepic'] = trim( $IIIIIIIII11l[0]['savepath'],'.').$IIIIIIIII11l[0]['savename'];
}
}
$IIIIIIIII11l           =  $IIIIIIIII1l1->getUploadFileInfo();
$_POST['uid'] = session('uid');
if($_POST['topflag']==1){$_POST['topflag']=1;}else{$_POST['topflag']=0;}
$IIIIIIlIII1l=D('Arts');
if($IIIIIIlIII1l->create()){
if($IIIIIIlIII1l->add()){
$this->success("添加成功",U('web/arts'));
}else{
$this->error("添加失败");
}
}else{
$this->error($IIIIIIlIII1l->getError());
}
}else{
$IIIIIIlIII1l=D('Wapcatelog');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIIII11['mode']=0;
$IIIIIIII1lII=$IIIIIIlIII1l->where($IIIIIIIIII11)->field('id,title')->select();
$this->assign('catelog',$IIIIIIII1lII);
$this->display();
}
}
public function editarts(){
if(IS_POST){
$IIIIIIIIIII1=$_POST['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Arts')
->where($IIIIIIIIII11)
->field('id')
->find();
if(!$IIIIIIIII1I1){
$this->error('无此文章信息');
}
import('ORG.Net.UploadFile');
$IIIIIIIII1l1             = new UploadFile();
$IIIIIIIII1l1->maxSize    = C('AD_SIZE') ;
$IIIIIIIII1l1->allowExts  = C('AD_IMGEXT');
$IIIIIIIII1l1->savePath   =  C('AD_SAVE');
if (!is_null($_FILES['img']['name'])&&$_FILES['img']['name']!="")
{
if(!$IIIIIIIII1l1->upload()) {
$this->error($IIIIIIIII1l1->getErrorMsg());
}else{
$IIIIIIIII11l =  $IIIIIIIII1l1->getUploadFileInfo();
$_POST['titlepic'] = trim( $IIIIIIIII11l[0]['savepath'],'.').$IIIIIIIII11l[0]['savename'];
}
}
$_POST['uid'] = session('uid');
if($_POST['topflag']==1){$_POST['topflag']=1;}else{$_POST['topflag']=0;}
$IIIIIIlIII1l=D('Arts');
if($IIIIIIlIII1l->create()){
if($IIIIIIlIII1l->where($IIIIIIIIII11)->save()){
$this->success("添加成功",U('web/arts'));
}else{
$this->error("添加失败");
}
}else{
$this->error($IIIIIIlIII1l->getError());
}
}else{
$IIIIIIIIIII1=$_GET['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIIlIII1l=D('Wapcatelog');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIIII11['mode']=0;
$IIIIIIII1lII=$IIIIIIlIII1l->where($IIIIIIIIII11)->field('id,title')->select();
$this->assign('catelog',$IIIIIIII1lII);
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Arts')
->where($IIIIIIIIII11)
->find();
if($IIIIIIIII1I1){
$this->assign('info',$IIIIIIIII1I1);
$this->display();
}else{
$this->error('无此文章信息');
}
}
}
public function delarts(){
$IIIIIIIIIII1=$_GET['id'];
if(!isNumber($IIIIIIIIIII1)){
$this->error("参数不正确");
}
$IIIIIII1l1II        = session('uid');
$IIIIIIIIII11['id']=$IIIIIIIIIII1;
$IIIIIIIIII11['uid']=$IIIIIII1l1II;
$IIIIIIIII1I1 = D('Arts')
->where($IIIIIIIIII11)
->delete();
if($IIIIIIIII1I1){
$this->success('操作成功');
}else{
$this->error('无此文章信息');
}
}
public function tempset(){
$IIIIIIII1lII=D('Waptpl')->cache('tplcfg','60')->where('state')->order('sort asc')->select();
$this->assign('tpl',$IIIIIIII1lII);
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIlIIlII=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
$this->assign('info',$IIIIIIlIIlII);
$this->display();
}
public function home(){
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
$IIIIIIlI1lll=I('get.tpl','int');
$IIIIIIlIIIll=D('waptpl')->where(array('id'=>$IIIIIIlI1lll))->find();
if($IIIIIIlIIIll==false){
exit;
}
if($IIIIIIIII11l){
D('Wap')->where($IIIIIIIIII11)->save(array('home_tpl'=>$IIIIIIlI1lll,'home_tpl_path'=>$IIIIIIlIIIll['tplpath']));
}else{
$IIIIIIIlllI1=time();
$IIIIIIII1Ill['uid']=session('uid');
$IIIIIIII1Ill['home_tpl']=$IIIIIIlI1lll;
$IIIIIIII1Ill['home_tpl_path']=$IIIIIIlIIIll['tplpath'];
$IIIIIIII1Ill['add_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['update_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['state']=1;
D('Wap')->add( $IIIIIIII1Ill);
}
}
public function lists(){
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
$IIIIIIlI1lll=I('get.tpl','int');
$IIIIIIlIIIll=D('waptpl')->where(array('id'=>$IIIIIIlI1lll))->find();
if($IIIIIIlIIIll==false){
exit;
}
if($IIIIIIIII11l){
D('Wap')->where($IIIIIIIIII11)->save(array('list_tpl'=>$IIIIIIlI1lll,'list_tpl_path'=>$IIIIIIlIIIll['tplpath']));
}else{
$IIIIIIIlllI1=time();
$IIIIIIII1Ill['uid']=session('uid');
$IIIIIIII1Ill['list_tpl']=$IIIIIIlI1lll;
$IIIIIIII1Ill['list_tpl_path']=$IIIIIIlIIIll['tplpath'];
$IIIIIIII1Ill['add_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['update_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['state']=1;
D('Wap')->add( $IIIIIIII1Ill);
}
}
public function info(){
$IIIIIIIIIll1=D('Wap');
$IIIIIIIIII11['uid']=session('uid');
$IIIIIIIII11l=$IIIIIIIIIll1->where($IIIIIIIIII11)->find();
$IIIIIIlI1lll=I('get.tpl','int');
$IIIIIIlIIIll=D('waptpl')->where(array('id'=>$IIIIIIlI1lll))->find();
if($IIIIIIlIIIll==false){
exit;
}
if($IIIIIIIII11l){
D('Wap')->where($IIIIIIIIII11)->save(array('info_tpl'=>$IIIIIIlI1lll,'info_tpl_path'=>$IIIIIIlIIIll['tplpath']));
}else{
$IIIIIIIlllI1=time();
$IIIIIIII1Ill['uid']=session('uid');
$IIIIIIII1Ill['info_tpl']=$IIIIIIlI1lll;
$IIIIIIII1Ill['info_tpl_path']=$IIIIIIlIIIll['tplpath'];
$IIIIIIII1Ill['add_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['update_time']=$IIIIIIIlllI1;
$IIIIIIII1Ill['state']=1;
D('Wap')->add( $IIIIIIII1Ill);
}
}
}
?>