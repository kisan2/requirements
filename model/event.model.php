<?php 
class event extends common
{
	function allevent()
	{
		$sql="select * from tbl_event order by event_id desc";
		return $this->select($sql);
	}
}

 ?>