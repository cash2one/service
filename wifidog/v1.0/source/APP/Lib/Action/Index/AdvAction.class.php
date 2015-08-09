<?php
/*
 * 高级收费功能 3G
 */
class AdvAction extends BaseAction{
 	private function isLogin()
    {
        if(!session('uid'))
        {
            $this->redirect('index/index/log');
        }    
        $this->assign('a','advfun');
    }
	public function index(){
		
	}
	
	public function set(){
		$this->isLogin();
		$db=D('Smscfg');
		$uid = session('uid');
		$where['uid']=$uid;
		$info=$db->where($where)->find();
		$this->assign('info',$info);
	if($info==false){
					   $this->assign('yifa','错误：');
						$this->assign('shengyu','请先注册短信帐号并保存');
						 $this->display();
					
			}
			else {

$smsapi = "api.smsbao.com"; //短信网关 
$charset = "utf8"; //文件编码 
$user = "$info[user]"; //短信平台帐号 
$pass = md5($info[password]); //短信平台密码 
  
include_once("./Data/snoopy.php"); 
$snoopy = new snoopy();
$sendurl = "http://www.smsbao.com/query?u={$user}&p={$pass}";

$snoopy->fetch($sendurl);
$result = $snoopy->results;		
if(substr($result,0,1)=="0"){
	            $string=substr($result,1);
				$arr=explode(',',$string);
                $yifa="已发送短信条数:$arr[0]";
                $shengyu="剩余短信条数:$arr[1]";
                $this->assign('yifa',$yifa);
                $this->assign('shengyu',$shengyu);
                $this->display();
			}else{
				$yifa=$this->getsmsstate($result);
				$this->assign('yifa',$yifa);
				$this->display();
			}

			    }

	}
	
	public function saveset(){
		$this->isLogin();
		if(IS_POST){
			$db=D('Smscfg');
			$uid = session('uid');
			$where['uid']=$uid;
			$info=$db->where($where)->find();
			if($info==false){
				//do add
				$_POST['uid']=$uid;
				if($db->create()){
					if($db->add()){
					$this->success("保存成功");
					}else{
						$this->error("保存失败");
					}
				}else{
					$this->error($db->getError());
				}
				
			}else{
				//do update
				if($db->create()){
					if($db->where($where)->save()){
						$this->success("保存成功");
					}else{
						$this->error("保存失败");
					}
				}else{
					$this->error($db->getError());
				}
			}
		}
		
	}
	
	/*
	public function  test(){
		import('@.ORG.XCSMS');
		$server='http://localhost:8088/sms.asmx?WSDL';
		$u='76c5069c8921470d9605e516e9372cb7';
		$p='PO7DJCVM';
		$client=new XCSMS($server, $u, $p);
		//$client = new SoapClient('http://localhost:8088/xcws.asmx?WSDL'); 
		//$client->soap_defencoding='utf-8';
		//$client->decode_utf8=false;
		echo $client->GetSmsAccount()."<br/>";
		echo $client->GetSmsPrice()."<br/>";
		echo $client->SendSms('13956989651', "我的短信内容");
	}
	*/
	/*
	 * 手机号码列表
	 */
	public function phonelist(){
		$this->isLogin();
      	import('@.ORG.UserPage');
        $this->assign('a','advfun');
        $uid = session('uid');
        $where['shopid']=$uid;
        $where['mode']  = 1;
        
        $ad = D('Member');
        $count=$ad->where($where)->count();
      
		$page=new UserPage($count,C('ad_page'));
        $result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('login_time desc')->select();
 
        $this->assign('page',$page->show());
        $this->assign('lists',$result);
		$this->display();
	}
	/*
	 * 手机号码下载
	 */
	public function downphone(){
		$this->isLogin();
		$uid = session('uid');
        $where['uid']=$uid;
        $where['mode']  = array('in','1');
        
        $ad = D('Member');
        $data=$ad->where($where)->field('phone')->select();
        exportexcel($data,array('手机号码'),date('Y-m-d H:i:s', time()));
	}

   public function downphonetxt(){
		$this->isLogin();
		$uid = session('uid');
        $where['shopid']=$uid;
		$where['mode']  = array('in','1');
		
	
	   $sdate = $_POST["sdate"];
	   $edate=  $_POST["edate"];
       $where['add_date']  = array(array('egt',$sdate),array('elt',$edate));

        $ad = D('Member');
      
        $result = $ad->where($where)->order('add_date DESC')->select();
		//dump($result);
		for ($i=0;$i<count($result);$i++){
		   if($i==0){$string=$result[$i]['phone'];}
		   else{$string=$string.",".$result[$i]['phone'];}
		}
		
	$path="./Runtime/Temp/$uid.txt";
$path2="tel$uid.txt";
if (file_exists($path)){ unlink ($path);}
	$handle=fopen($path,"w");
	fwrite($handle,$string);
	fclose($handle);
mysql_close($conn);
header("Content-Type: application/force-download");
header("Content-Disposition: attachment; filename=".basename($path2));  
readfile($path);
unlink($path);
   }
	
	public function sms(){
		$this->isLogin();
		$this->assign('a','advfun');
		$uid = session('uid');
        $where['shopid']=$uid;
		$where['mode']  = array('in','1');
			
	   $sdate = $_POST["sdate"];
	   $edate=  $_POST["edate"];
       $where['add_date']  = array(array('egt',$sdate),array('elt',$edate));

        $ad = D('Member');
      
        $result = $ad->where($where)->order('add_date DESC')->select();
		//dump($result);
		for ($i=0;$i<count($result);$i++){
		   if($i==0){$string=$result[$i]['phone'];}
		   else{$string=$string.",".$result[$i]['phone'];}
		}	

$this->assign('phoneslist',$string);
$this->display();
	}
	
	public  function doSend($phone,$msg){
		
	}
	
	
	
	public  function addsms(){
		$this->isLogin();
		if(IS_POST){
			$smsdb=D('Smscfg');
			$uid = session('uid');
			$where['uid']=$uid;
			$info=$smsdb->where($where)->find();
			if($info==false){
					$back['error']=1;
						$back['msg']='请先配置好短信帐号信息';
						$this->ajaxReturn($back);
						exit;
			}
			$phones=I('post.phones');
			$msg=I('post.info');
			$list=explode(',', $phones);
			$len=mb_strlen($msg,'UTF-8');//短信长度
			$ut=ceil($len/70);//计算短信数量
			
			$uid = session('uid');
			$time=time();
			foreach($list as $v){
				if($v!=''){
					if(!isPhone($v)){
						$back['error']=1;
						$back['msg']='手机号码'.$v.'不正确';
						$this->ajaxReturn($back);
						exit;
						break;
						
					}else{
						$datalist[]=array('uid'=>$uid,'mode'=>0,'phone'=>$v,
						'info'=>$msg,'lens'=>$len,'unit'=>$ut,
						'add_time'=>$time,'update_time'=>$time,'send_time'=>$time,
						'ready_time'=>$time,'state'=>1,'lostcount'=>0
						);
					}
				}
			}
$smsapi = "api.smsbao.com"; //短信网关 
$charset = "utf8"; //文件编码 
$user = "$info[user]"; //短信平台帐号 
$pass = md5($info[password]); //短信平台密码 
  
include_once("./Data/snoopy.php"); 
 
$snoopy = new snoopy();
$sendurl = "http://{$smsapi}/sms?u={$user}&p={$pass}&m={$phones}&c=".urlencode($msg);
$snoopy->fetch($sendurl);
$result = $snoopy->results;

			//$sms=D('Sms');
			//$sms->addAll($datalist);
			//import('@.ORG.XCSMS');
			//$server=C('SMSURL');
			//$u=$info['user'];
			//$p=$info['password'];
			//$client=new XCSMS($server, $u, $p);
			
			//$rs=$client->SendSms($phones,$msg);
			
			if($result==0){
				$sms=D('Sms');
				$sms->addAll($datalist);
				$back['error']=0;
				$back['msg']='操作成功';
				$this->ajaxReturn($back);
			}else{
				$back['error']=1;
				$back['msg']=$this->getsmsstate($result);
				$this->ajaxReturn($back);
			}
			
			
		}
	}
	
private function getsmsstate($rs){
		//1 成功 -1 失败 -2 帐号密码不正确 -3 金额不足 -4 手机号码或其他参数不正确
		switch ($rs){
			case 30:
				return "密码错误";
			case 40:
				return "账号不存在";
			case -41:
				return "余额不足";
			case -42:
				return "帐号过期";
            case -43:
				return "IP地址限制";
            case -50:
				return "内容含有敏感词";
	        case -51:
		        return "手机号码不正确";		
			default:
				return '短信提交失败';
				
		}     
	}
	
	public function smslist(){
		import('@.ORG.UserPage');
        $this->assign('a','advfun');
        $uid = session('uid');
        $where['uid']=$uid;
      
         if(!isset($_GET['sdate'])){
        $ad = D('Sms');
        $count=$ad->where($where)->count();
		$page=new UserPage($count,C('ad_page'));
        $result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('add_time desc')->select();
        $this->assign('page',$page->show());
        $this->assign('lists',$result);
		$this->display();
	
		}else{
		$sdate = strtotime($_GET["sdate"]);
	   $edate=  strtotime( $_GET["edate"]);
      
	   $where['add_time']  = array(array('egt',$sdate),array('elt',$edate));
	
		$ad = D('Sms');
        $count=$ad->where($where)->count();
		$page=new UserPage($count,C('ad_page'));
        $result = $ad->where($where)->limit($page->firstRow.','.$page->listRows)->order('add_time desc')->select();
        $this->assign('page',$page->show());
        $this->assign('lists',$result);
		$this->display();
				
		}
	}
	
	
}