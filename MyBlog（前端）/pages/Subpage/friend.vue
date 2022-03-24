<!--这是友情点进去的页面-->
<template>
	<view class="contentbox">
		<view class="header">
			<text>曾经我是个学生，见山是深情伟岸，见海是热情澎湃，见花见草他们皆有故事!</text>
		</view>
		<view class="boxposition">
			<view class="leftcontent">
				<image src="../../static/indeximages/yu.jpg"></image>
				<text style="margin-top: 20px;">\n杰的头像</text>
				<text style=" color: #C8C7CC; font-size: 11px ; margin-top: 10px;">\n欢迎来到我的友情页面</text>
			</view>
			<view class="rightcontent">
				<image src="../../static/indeximages/jie.jpg" @click="clickimg"></image>
				<text style="margin-top: 20px;">\n杰的二维码</text>
				<text style=" color: #C8C7CC; font-size: 11px ; margin-top: 10px;">\n欢迎来到我的友情页面</text>
			</view>
		</view>

	</view>
</template>

<script>
	export default {
		data() {
			return {

			}
		},
		methods: {
			clickimg(){
				//点击图片放大
				wx.previewImage({
					urls:["../static/indeximages/jie.jpg"],
					current: '../static/indeximages/jie.jpg', // 当前显示图片的http链接，默认是第一个
					success: function(res) {
						console.log(res)
					},
				    fail: function(err) {
						 console.log(err.errMsg);
					},
					complete: function(err) {
						 console.log(err.errMsg);
					},
				})
				
			}

		}
	}
</script>

<style lang="scss">
	page {
		background-color: #F8F8F8;
	}

	.contentbox {
		width: 90%;
		height: 100%;
		background-color: #F8F8F8;
		position: relative;
		left: 5%;

		.header {
			width: 90%;
			height: 90px;
			margin-top: 20px;
			background-color: #F1F1F1;
			border-radius: 10px;
			padding-left: 5%;
			padding-right: 5%;

			text {
				position: relative;
				top: 25px;
				color: #808080;
			}
			
		}
		.boxposition{
			width: 100%;
			height: 500px;
			margin-top: 40px;
			display: flex;
			flex-direction: row;
			.leftcontent{
				height: 170px;
				width: 45%;
				border-radius: 20px;
				background-color: #FFFFFF;
				text-align: center;
				image{
					margin-top: 20px;
					width: 70px;
					height: 70px;
				}
				
			}
			.rightcontent{
				margin-left: 25px;
				height: 170px;
				width: 45%;
				border-radius: 20px;
				background-color: #FFFFFF;
				text-align: center;
				image{
					margin-top: 20px;
					width: 70px;
					height: 70px;
				}
			}
		}
	    
	}
</style>
