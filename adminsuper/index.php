<?php
require_once 'config/config.php';
require_once 'libs/controller.php';
require_once 'libs/model.php';
require_once 'session/session.class.php';
$url=[];
if(isset($_GET['p'])){
$url=explode('/',$_GET['p']);
}
else
{
	$url[0]='index';
}
$count=count($url);
if ($count==1) {
	require_once 'controller/homecontroller.php';
		$homecontroller = new homecontroller;
	if($url[0]=='index')
	{
		
		$homecontroller->index();
	}else if($url[0]=='post.login')
	{
		$homecontroller->postlogin();
	}
	else if($url[0]=="dashboard")
	{
		$homecontroller->dashboard();
	}else if($url[0]=="logout")
	{
		$homecontroller->logout();
	}else if($url[0]=="register")
	{
		$homecontroller->registerform();
	}
	else if($url[0]=="registerpost")
	{

		$homecontroller->registerpost();
	}
	else if($url[0]=="activehotel")
	{
		$homecontroller->activehotel();
	}else if($url[0]=="inactivehotel")
	{
		$homecontroller->inactivehotel();
	}
	else if($url[0]=="addplace")
	{
		$homecontroller->addplace();
	}
	else if($url[0]=="addplacepost")
	{
		$homecontroller->addplacepost();
	}
	else if($url[0]=="placelist")
	{
		$homecontroller->placelist();
	}
	else if($url[0]=="addstart")
	{
		$homecontroller->addstart();
	}
	else if($url[0]=="addstartpost")
	{
		$homecontroller->addstartpost();
	}
	else if($url[0]=="startlist")
	{
		$homecontroller->palcestartlist();
	}
	else
	{
		require_once "view/404.php";
	}
}

?>