<?php
class ShopAction extends  AdminAction{
	public function index(){
		$this->doLoadID(300);
		import('@.ORG.AdminPage');
		$db=D('Shop');
		if(IS_POST){
			if(isset($_POST['sname'])&&$_POST['sname']!=""){
					$map['sname']=$_POST['sname'];
					$where.=" and a.shopname like '%%%s%%'";	
			}
			if(isset($_POST['slogin'])&&$_POST['slogin']!=""){
					$map['slogin']=$_POST['slogin'];
					$where.=" and a.account like '%%%s%%'";
			}
			if(isset($_POST['phone'])&&$_POST['phone']!=""){
					$map['phone']=$_POST['phone'];
					$where.=" and a.phone like '%%%s%%'";
			}
			if(isset($_POST['agent'])&&$_POST['agent']!=""){
					$map['agent']=$_POST['agent'];
					$where.=" and b.name like '%%%s%%'";
			}
			
			$_GET['p']=0;
		}else{
			if(isset($_GET['sname'])&&$_GET['sname']!=""){
					$map['sname']=$_GET['sname'];
					$where.=" and a.shopname like '%%%s%%'";
					
			}
			if(isset($_GET['slogin'])&&$_GET['slogin']!=""){
					$map['slogin']=$_GET['slogin'];
					$where.=" and a.account like '%%%s%%'";
			}
			if(isset($_GET['phone'])&&$$_GET['phone']!=""){
					$map['phone']=$_GET['phone'];
					$where.=" and a.phone like '%%%s%%'";
			}
			if(isset($_GET['agent'])&&$_GET['agent']!=""){
					$map['agent']=$_GET['agent'];
					$where.=" and b.name like '%%%s%%'";
			}
		}
		
		$sqlcount=" select count(*) as ct from ". C('DB_PREFIX')."shop a left join ". C('DB_PREFIX')."agent b on a.pid=b.id ";
		if(!empty($where)){
			$sqlcount.=" where true ".$where;
		}
		$rs=$db->query($sqlcount,$map);
		
		$count=$rs[0]['ct'];
		$page=new AdminPage($count,C('ADMINPAGE'));
		foreach($map as $k=>$v){
			$page->parameter.=" $k=".urlencode($v)."&";//赋值给Page";
		}
		
		$sql=" select a.id,a.shopname,a.add_time,a.linker,a.phone,a.account,a.maxcount,a.linkflag,b.name as agname from ". C('DB_PREFIX')."shop a left join ". C('DB_PREFIX')."agent b on a.pid=b.id ";
		if(!empty($where)){
			$sql.=" where true ".$where;
		}
		$sql.=" order by a.add_time desc limit ".$page->firstRow.','.$page->listRows." ";
		
      
		$result = $db->query($sql,$map);
     	//dump($db->getLastSql());
        
        $this->assign('page',$page->show());
        $this->assign('lists',$result);
		$this->display();
	}
	
	public function editshop()
	{
		$this->doLoadID(300);
		if(IS_POST){
			$user = D('Shop');
			$id=I('post.id','0','int');
	        $where['id']=$id;
	        $info=$user->where($where)->find();
	        if(!$info){
	        	//无此用户信息
	        	$data['error']=1;
	    		$data['msg']="服务器忙，请稍候再试";
	    		return $this->ajaxReturn($data);
	        }
	        
	       $_POST['update_time']=time();
	        if($user->create($_POST,2)){
	        	if($user->where($where)->save($_POST)){
	        		$data['error']=0;
		    		$data['url']=U('index');
		    		return $this->ajaxReturn($data);
	        	}else{
	        		$data['error']=1;
		    		$data['msg']=$user->getError();
		    		
		    		return $this->ajaxReturn($data);
	        	}
	        }else{
	        		$data['error']=1;
		    		$data['msg']=$user->getError();
		    		return $this->ajaxReturn($data);
	        }
		}else{
			$id=I('get.id','0','int');
			
			$where['id']=$id;
			$db=D('Shop');
			$info=$db->where($where)->find();
			if(!$info){
				$this->error("参数不正确");
			}
			$this->assign("shop",$info);
			
	
			include CONF_PATH.'enum/enum.php';//$enumdata
	        $this->assign('enumdata',$enumdata);
	       $agent=D('agent')->field('id,name')->select();
			$this->assign("agent",$agent);
	        
	        
	        $this->display();        
		}
		
	}

	public function addshop(){
		$this->doLoadID(300);
		if(IS_POST){
			$user=D('Shop');
			$now=time();
			
			$_POST['authmode']='#0#';
			$_POST['token']=md5(uniqid());
		
	        if($user->create($_POST,1)){
	        	
	        	$id=$user->add();
	        	if($id>0){
					/*
	        		$rs['shopid']=$id;
		    		$rs['sortid']=0;
		    		$rs['routename']=$_POST['shopname'];
		    		$rs['gw_id']=$_POST['account'];
		    			
			        M("Routemap")->data($rs)->add();
			        */
	        		$data['error']=0;
		    		$data['url']=U('index');
		    		return $this->ajaxReturn($data);
	        	}else{
	        		$data['error']=1;
		    		$data['msg']=$user->getDbError();
		    		return $this->ajaxReturn($data);
	        	}
	        }else{
	        		$data['error']=1;
		    		$data['msg']=$user->getError();
		    		return $this->ajaxReturn($data);
	        }
		}else{
			include CONF_PATH.'enum/enum.php';//$enumdata
	        $this->assign('enumdata',$enumdata);
			$agent=D('agent')->field('id,name')->select();
			$this->assign("agent",$agent);
	        $this->display();      
		}  
	}

public function delshop(){
	 
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;
      
    $where['id']=$id;
             
     $r = D('Shop')->where($where)->find();
     
     if($r==false){
        $this->error('没有此用户信息');
        }else{
          if(D('Shop')->where($where)->delete()){
			  $Dao = M("Routemap");
              $where1['shopid']=$id;
              $result = $Dao->where($where1)->delete(); 
          	$this->success('删除成功');
          }else{
          	$this->error('删除失败');
          }



             	
		}
         

	}



	public  function addroute(){
		$this->doLoadID(300);
		if(IS_POST){
			$db=D('Routemap');
			if($db->create()){
				if($db->add()){
					$this->success('添加成功',U('index'));
				}else{
					$this->error("操作失败");
				}
			}else{
				$this->error($db->getError());
			
			}
		}else{
			$id=I('get.id','0','int');
			
			if(empty($id)){
				$this->error("参数不正确");
			}
			$where['id']=$id;
			$db=D('Shop');
			$info=$db->where($where)->field('id,shopname')->find();
			if(!$info){
				$this->error("参数不正确");
			}
			$this->assign("shop",$info);
			$this->display();        
		}
		
		
		
	}
	
	public  function routelist(){
			$this->doLoadID(300);
			$id=I('get.id','0','int');
			
			if(empty($id)){
				$this->error("参数不正确");
			}
			import('@.ORG.AdminPage');
			$db=D('Routemap');
			$where['shopid']=$id;
			$count=$db->where($where)->count();
			$page=new AdminPage($count,C('ADMINPAGE'));
		
			$sql=" select a.* ,b.shopname from ". C('DB_PREFIX')."routemap a left join ". C('DB_PREFIX')."shop b on a.shopid=b.id where a.shopid=".$id." order by a.id desc limit ".$page->firstRow.','.$page->listRows." ";
			
			//$sql=" select a.id,a.shopname,a.add_time,a.linker,a.phone,a.account,a.maxcount,a.linkflag,b.name as agname from ". C('DB_PREFIX')."shop a left join ". C('DB_PREFIX')."agent b on a.pid=b.id order by a.add_time desc limit ".$page->firstRow.','.$page->listRows." ";
	        
			$result = $db->query($sql);
	     
	        
	        $this->assign('page',$page->show());
	        $this->assign('lists',$result);
			$this->display();        
		
		
		
		
	}

 public function delroute()
    {
     	
        $id = isset($_GET['id']) ? intval($_GET['id']) : 0;
         
      
        $where['id']=$id;

        
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
	
	public function editroute(){
		if(IS_POST){
			$db= D('Routemap');
        	
        	$id = I('post.id','0','int');
	        $where['id']=$id;

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
	        		   $this->success('更新成功',U('index'));
	        		}else{
	        			$this->error("操作失败");
	        		}
        	}else{
        		$this->error($db->getError());
        	}
		}else{
			
			$id=I('get.id','0','int');
			
			$where['id']=$id;

			$db=D('Routemap');
			$info=$db->where($where)->find();
			if(!$info){
				$this->error("参数不正确");
			}
			$this->assign("info",$info);
			$whereshop['id']=$info['shopid'];
			$db=D('Shop');
			$shopinfo=$db->where($whereshop)->field('id,shopname')->find();
	

	        $this->assign("shop",$shopinfo);
	     
	        
	        
	        $this->display();    
		}
	}
}