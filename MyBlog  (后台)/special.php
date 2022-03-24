<?php
$conn=mysqli_connect("localhost","root","")or die("连接失败".mysqli_connect_error());
mysqli_select_db($conn,"uniapp")or die("选择失败".mysqli_error());
MYSQLI_SET_charset($conn,"utf8");
$id=$_GET['id'];
$select="select * from special where id=$id";
$query=mysqli_query($conn,$select);
$result=mysqli_fetch_object($query);
$arr=array(
    'id'=>$result->id,
    'images'=>$result->images,
    'caption'=>$result->caption,
    'littleetitle'=>$result->littleetitle,
    'content'=>$result->content,
    'content2'=>$result->content2,
    'button'=>$result->button,
    'button2'=>$result->button2
);
echo json_encode($arr)

?>