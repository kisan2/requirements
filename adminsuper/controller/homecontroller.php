<?php 
class homecontroller extends controller
{
	function __construct()
	{
		$this->admin=$this->loadmodel("admin");
		$this->place=$this->loadmodel("place");
		$this->start=$this->loadmodel("start");
	}
	function index()
	{
		sessionhelper::loginpagecontroll();
		$this->loadview("login",false,false);
		
	}
	function dashboard()
	{
		sessionhelper::checklogin();
		$this->loadview('dashboard');
	}
	function logout()
	{
		session_start();
		session_destroy();
		header('location:index');
	}
	function registerform()
	{
		sessionhelper::checklogin();
		$this->loadview('register');
	}
	function placelist()
	{
		sessionhelper::checklogin();
		$this->output=$this->place->placelist();
		$this->loadview('placelist');
	}
	function addplace()
	{
		sessionhelper::checklogin();
		$this->loadview('addplace');
	}


	function addplacepost()
	{
		sessionhelper::checklogin();

		$this->place->place_name=$this->place->escapestring($_POST['place_name']);
		$this->place->address=$this->place->escapestring($_POST['address']);
		$this->place->remarks=$this->place->escapestring($_POST['remarks']);
		if($_FILES['photo']['size']!=0 && $_FILES['photo']['error']==0)
		{
			$tmpname=$_FILES['photo']['name'];
			$e=explode(".",$tmpname);
			foreach ($e as $v) {
				$ext=$v;
				}
				$ext=end($e);
				$name=uniqid();
				move_uploaded_file($_FILES['photo']['tmp_name'], "view/images/".$name.".".$ext);
					
				$this->place->venue_photo=$name.".".$ext;
					
		}
		$output=$this->place->register();
		if($output)
			{
				//echo "no";
				sessionhelper::set("success","Place Added successfully");
			}
			else{
			sessionhelper::set("success","Place Adition failed");
			
		}
			
           echo "<script>window.location='".base_url()."addplace'</script>";
		
	}
	function addstart()
	{
		sessionhelper::checklogin();
		$this->loadview('addstart');
	}
	function palcestartlist()
	{
		sessionhelper::checklogin();
		$this->output=$this->start->placelist();
		$this->loadview('startlist');
	}
	function addstartpost()
	{
		$this->start->place_name=$this->place->escapestring($_POST['place_name']);
		$this->start->address=$this->place->escapestring($_POST['address']);
		$this->start->remarks=$this->place->escapestring($_POST['remarks']);
		
		$output=$this->start->register();
		if($output)
			{
				//echo "no";
				sessionhelper::set("success","Place Added successfully");
			}
			else{
			sessionhelper::set("success","Place Adition failed");
			
		}
			
           echo "<script>window.location='".base_url()."addstart'</script>";
	}
	function registerpost()
	{
		//echo "output";
		if(isset($_POST['name']) && !empty($_POST['name']) && isset($_POST['email']) && !empty($_POST['email']) && isset($_POST['contact']) && !empty($_POST['contact']) && isset($_POST['type']) && !empty($_POST['type']) && isset($_POST['password']) && !empty($_POST['password']))
		{
			//echo "no";
			$this->admin->name=$_POST['name'];
			$this->admin->email=$_POST['email'];
			$this->admin->contact=$_POST['contact'];
			$salt=uniqid();
			$password=$_POST['password'];
			$this->admin->password=sha1($salt.$password);
			$this->admin->salt=$salt;
			$this->admin->type=$_POST['type'];
			
				if($_FILES['photo']['error']==0 && $_FILES['photo']['size']!=0)
				{
					$tmpname=$_FILES['photo']['name'];
					$e=explode(".",$tmpname);
					foreach ($e as $v) {
						$ext=$v;
					}
					$ext=end($e);
					$name=uniqid();
					move_uploaded_file($_FILES['photo']['tmp_name'], "view/images/".$name.".".$ext);
					//move_uploaded_file(filename, destination);
					$this->admin->photo=$name.".".$ext;
					//echo "<script>alert('".$ext."')</script>";

				}
				$this->admin->last_login=date('Y-m-d');
			
			$output=$this->admin->registerpost();
			if($output)
			{
				//echo "no";
				sessionhelper::set("success","Admin registered successfully");
			}
			else{
			sessionhelper::set("success","Admin registered failed");
			
		}
			
           echo "<script>window.location='".base_url()."register'</script>";
		}else
		{
			//echo "no";
			sessionhelper::set("success","Admin registration failed");
			echo "<script>window.location='".base_url()."register'</script>";
			
		}
	}
	function activehotel()
	{
		sessionhelper::checklogin();
		$this->output=$this->admin->hotellist(1);
		//var_dump($output);
		$this->loadview('activehotel');

	}
	function inactivehotel()
	{
		sessionhelper::checklogin();
		$this->output=$this->admin->hotellist(0);
		$this->loadview('inactivehotel');
	}
	function routeregister()
	{
		
	}
	function postlogin()
	{
		if(isset($_POST['email']) && !empty($_POST['email']))
		{
			if(isset($_POST['password']) && !empty($_POST['password']))
		{
			$email=$this->admin->escapestring($_POST['email']);
			$password=$this->admin->escapestring($_POST['password']);
			$output=$this->admin->findemail($email);
			if($output)
			{
				$dpassword=$output[0]->admin_password;
				$salt=$output[0]->salt;
				$npassword=sha1($salt.$password);
				if($dpassword==$npassword)
				{
					$type=$output[0]->admin_type;
					if($type==1)
					{
						sessionhelper::set("super",$output[0]->admin_email);
						sessionhelper::set("type",$output[0]->admin_type);
						echo "<script>window.location='dashboard'</script>";
					}else
					{
						echo "<script>alert('You donot have access to use the file')</script>";
						echo "<script>window.location='index'</script>";
					}
				}else
					{
						echo "<script>alert('Your password is incorrect')</script>";
						echo "<script>window.location='index'</script>";
					}
			}else
					{
						echo "<script>alert('Your username is incorrect')</script>";
						echo "<script>window.location='index'</script>";
					}

		}else
					{
						echo "<script>alert('Password cannot be null')</script>";
						echo "<script>window.location='index'</script>";
					}
		}else
					{
						echo "<script>alert('Email cannot be null')</script>";
						echo "<script>window.location='index'</script>";
					}
	}
}
 



 ?>
