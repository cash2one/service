<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//VIP会员:jinguang1983 您好,破解:phpjm加密,本次扣金币:5个,金币余额:45个,感谢您的支持.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (VIP会员功能）在线逆向还原，QQ：7530782 
?>
<?php
class BaseAction extends Action{
protected function _initialize()
{
$IIIIIIlII1Il = $this->_getThemePath();
$IIIIIIlII1I1 = array('css'=>'/UI/Public/css','js'=>'/UI/Public/js','img'=>'/UI/Public/images/','root'=>'/UI/Public');
$IIIIIIlII1lI =	array('css'=>$IIIIIIlII1Il.'/style/css','js'=>$IIIIIIlII1Il.'/style/js','img'=>$IIIIIIlII1Il.'/style/images','root'=>$IIIIIIlII1Il.'/');
$IIIIIIlII1ll = array('P'=>$IIIIIIlII1I1,'T'=>$IIIIIIlII1lI);
$IIIIIIlII1l1 =  $IIIIIIlII1ll;
$this->assign('Theme',$IIIIIIlII1l1);
$this->assign('action',$this->getActionName());
}
private function _getThemePath()
{
$IIIIIIlII1lI = C('DEFAULT_THEME');
$IIIIIIlII11l  = defined('GROUP_NAME')?GROUP_NAME.'/':'';
if(1==C('APP_GROUP_MODE')){
return $IIIIIIlII1Il = '/'.dirname(BASE_LIB_PATH).'/'.$IIIIIIlII11l.basename(TMPL_PATH).'/'.$IIIIIIlII1lI;
}else{
return $IIIIIIlII1Il = '/'.basename(TMPL_PATH).'/'.$IIIIIIlII11l.$IIIIIIlII1lI;
}
}
}
?>