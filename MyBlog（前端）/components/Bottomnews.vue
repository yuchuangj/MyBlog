<!--这是首页最底下-->
<template>
	<view class="box">
		<view class="BottomBox" v-for="item in items " >
			<image :src="item.img" class="itemimg" @click="getList(item.id)">
				<view style="padding-left: 2%;">
					<text class="itemtext">{{item.text}}\n</text>
					<text class="smalltext">{{item.smalltext}}</text>
				</view>
			</image>
		</view>
		
		<view class="go-top" style="text-align: center; position: relative; top: -17px;">
			<text @click="top" style="font-size: 15px; color: #808080; ">点击这里返回顶部</text>
		</view>
	</view>
</template>

<script>
	
	export default {
		name: "Bottomnews",
		data() {
			return {
				items: [{
						id: 1,
						img: "../static/images/9.png",
						text: "小程序搭建之案列分享-找茬小程序",
						smalltext: "一开始做一件事情 坚持；但是一旦成为一种习惯，象..."
					},
					{
						id: 2,
						img: "../static/images/10.png",
						text: "小程序搭建之案列分享-成语答题",
						smalltext: "本次分享的内容是怎么小程序 话不多说 演示：点..."
					},
					{
						id: 3,
					    img: "../static/images/11.png",
						text: "小程序搭建之基础环境",
						smalltext: "接下来的将分享一些我最近接触的小程序知识 主..."
					},
					{
						id: 4,
						img: "../static/images/12.png",
						text: "Linux防火墙回顾",
						smalltext: "断更了很久了 .. 回顾下linux防火墙的常用命令..."
					},
					{
						id: 5,
						img: "../static/images/13.png",
						text: "好看的图片-猫系列",
						smalltext: "又是好长一段时间没有发文了  各位老板新年快乐..."
					},
					{
						id: 6,
						img: "../static/images/14.png",
						text: "Linux之Bond",
						smalltext: "今天回顾一下，不经常回顾真的很容易遗忘..希..."
					},
					{
						id: 7,
						img: "../static/images/15.png",
						text: "小程序搭建之前期准备i",
						smalltext: "接下来的分享一些我最近接触的小程序知识 主..."
					},
					{
						id: 8,
						img: "../static/images/16.png",
						text: "Linux系统安装后一般操作",
						smalltext: "今天是Linux知识的最后一篇文章(之后会随机分...)"
					},
					{
						id: 9,
						img: "../static/images/17.png",
						text: "Linux之常用操作",
						smalltext: "今天分享的内容是在使用Linux最常用的操作~lin..."
					},
					{
						id: 10,
						img: "../static/images/18.png",
						text: "Linux干货-LVM理论之实战",
						smalltext: "感恩的心，感恩有你，让我有勇气做我自己，我...."
					}
				],
			};
			
		},
		onLoad(){
			getList
		},
		methods:{
			top() { //回到顶部
					uni.pageScrollTo({
						scrollTop: 0,
						duration: 300
					})
				},
				
			getList(id){
				uni.navigateTo({
					url:"../Subpage/Subpage?id="+id,
					fail (error) {
					       console.log(error)
					   }
				})
			}
		}
	}
</script>

<style lang="scss">
	.BottomBox {
		position: relative;
		top: -33px;
		left: 5%;
		width: 90%;
		height: 210px;
		border-radius: 10px;
		background-color: #FFFFFF;
		margin-top: 5%;
		.itemimg {
			height: 160px;
			width: 100%;
			border-radius: 10px;
			position: relative;
		}
		.itemtext {
			font-size: 13px;
		}
		.smalltext {
			font-size: 11px;
			color: #999999;
		}
		
		
	
	}
</style>
