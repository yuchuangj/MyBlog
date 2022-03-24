<?php
$conn=mysqli_connect("localhost","root","")or die("连接失败".mysqli_connect_error());
mysqli_select_db($conn,"uniapp")or die("选择失败".mysqli_error());
MYSQLI_SET_charset($conn,"utf8");
$id=$_GET['id'];
$select="select * from slideleft where id=$id";
$result=mysqli_query($conn,$select);
$str=mysqli_fetch_object($result);
$arr =array(
    'Caption'=>$str->Caption,
    'Subtitle'=>$str->Subtitle,
    'Subtitle2'=>$str->Subtitle2,
    'time'=>$str->time,
    'content1'=>$str->content1,
    'content2'=>$str->content2,
    'content3'=>$str->content3,
    'image1'=>$str->image1,
    'footer'=>$str->footer
);
echo json_encode($arr);


?>