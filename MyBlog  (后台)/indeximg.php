
<?php
	$conn=mysqli_connect("localhost","root","")or die("连接失败".mysqli_connect_error());
	mysqli_select_db($conn,"uniapp")or die("选择失败".mysqli_error());
	MYSQLI_SET_charset($conn,"utf8");
	//获取getid	
    $id=$_GET['id'];
	$str="select * from uniapp_index where id=$id";
	$result=mysqli_query($conn,$str);
	$data=mysqli_fetch_object($result);

	//数组遍历
	$arr = array(
		"img"=>$data->images,
		"font"=>$data->font,
		"ntype"=>$data->ntype,
		"content"=>$data->content,
		"contentfoot"=>$data->contentfoot);
	//转换为JSON格式	
	echo json_encode($arr) 
?>
