<?php
$conn=mysqli_connect("localhost","root","")or die("连接失败".mysqli_connect_error());
mysqli_select_db($conn,"uniapp")or die("选择失败".mysqli_error());
MYSQLI_SET_charset($conn,"utf8");
$id=$_GET['id'];
$select="select * from Carouselimg where id=$id";
$result=mysqli_query($conn,$select);
$data=mysqli_fetch_object($result);
$arr =array(
    'img'=>$data->image,
    'caption'=>$data->caption,
    'nfont'=>$data->nfont,
    'bckimage'=>$data->bckimage,
    'content'=>$data->content);
echo json_encode($arr)
?>