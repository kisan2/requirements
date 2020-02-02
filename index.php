<?php
require_once 'config/config.php';
require_once 'libs/controller.php';
require_once 'libs/model.php';
//require_once 'session/session.class.php';
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
	if($url[0]=='index')
	{
		require_once 'controller/homecontroller.php';
		$homecontroller = new homecontroller;
		$homecontroller->index();
	}
	else
	{
		require_once "view/404.php";
	}
}

?>