<!--这是资源列表-->
<template>
	<view class="contentbox">
		<view class="imgtext">
			<image src="../../static/resourcesimg/1.png"></image>
			<text>资源列表</text>
			<view style="text-align: right;  position: relative; left: 68%;">
				<text style="font-size: 10px; color: #C8C7CC; text-align: justify;">All</text>
			</view>
		</view>
		<view class="bottombox" v-for="item in items">
			<image :src="item.img"></image>
			<view style="position: relative; top: -50%; left: 35%;">
				<text>{{item.text}}</text>
				<text style="font-size: 12px; color: #999999;">\n{{item.text2}}</text>
			</view>
			<view style="display: flex; flex-direction: row; position: relative; top: -25%; margin-left: 5%;">
				<view style="font-size: 12px;color: #999999;">{{item.text3}}</view>
				<view class="btndownload">{{item.text4}}</view>
			</view>
		</view>

	</view>
</template>


<script>
	import image from "../../static/resourcesimg/2.png"
	export default {
		data() {
			return {
				items: [{
						id: 1,
						img: image,
						text: "找茬小程序",
						text2: "成功复制链接后青岛游览器下载",
						text3: "声明:请保证以学习途径下载",
						text4: "下载"
					},
					{
						id: 2,
						img: image,
						text: "成语答题",
						text2: "成功复制链接后青岛游览器下载",
						text3: "声明:请保证以学习途径下载",
						text4: "下载"
					},
					{
						id: 3,
						img: image,
						text: "Linux",
						text2: "成功复制链接后青岛游览器下载",
						text3: "声明:请保证以学习途径下载",
						text4: "下载"
					}
				]
			}
		},
		methods: {

		}
	}
</script>

<style lang="scss">
	page {
		background-color: #F8F8F8;
	}

	.contentbox {
		width: 90%;
		position: relative;
		margin-top: 20px;

		.imgtext {
			display: flex;
			flex-direction: row;
			image {
				height: 80rpx;
				width: 80rpx;
			}
			text {
				position: relative;
				top: 8px;
				left: 4%;
			}
		}

		.bottombox {
			width: 110%;
			height: 140px;
			border-radius: 10px;
			background-color: #FFFFFF;
			margin-top: 20px;
			image {
				margin: 12px;
				margin-left: 7%;
				height: 70px;
				width: 70px;
			}
			.btndownload {
				position: relative;
				width: 70px;
				height: 25px;
				left: 19%;
				top: -5rpx;
				text-align: center;
				line-height: 25px;
				border-radius: 50px;
				font-size: 13px;
				color: #FFFFFF;
				background-image: linear-gradient(to right, $uni-color-primary, $uni-bg-color);
			}
		}
	}
</style>
