<!--这是最上面的状态栏-->
<template>
	<view class="header">
		<view class="index-img">
			<image src="../static/indeximages/4.png"></image>
		</view>
		<view style=" margin-top:50px">
			<view class="index-navbar">
				<scroll-view class="scroll-view" scroll-x="true" scroll-left="120" @scrolltolower>
					<view class="scroll-view-box">
						<view class="scroll-view-item" @click="article">首页</view>
						<view class="scroll-view-item" @click="find">搜索</view>
						<view class="scroll-view-item" @click="specail">安卓软件</view>
						<view class="scroll-view-item" @click="me">我的</view>
					</view>
				</scroll-view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		methods: {
			article() {
				uni.switchTab({
					url: '/pages/index/index',
					fail(error) {
						console.log(error)
					}
				})
			},
			find() {
				uni.switchTab({
					url: '/pages/find/find',
					fail(error) {
						console.log(error)
					}
				})
			},
			specail() {
				uni.switchTab({
					url: "/pages/special/special"
				})
			},
			me() {
				uni.switchTab({
					url: '/pages/me/me'
				})
			}
		}
	}
</script>

<style lang="scss">
	.header {
		text-align: center;

		.index-img image {
			width: 100%;
			height: 125px;
		}

		.index-navbar {
			position: fixed;
			z-index: 9999;
			width: 110%;
			margin-left: -5%;
			top: 0px;

			.scroll-view-box {
				position: relative;
				width: 90%;
				margin-left: 5%;
				display: flex;
				flex-direction: row;
				background-color: #FFFFFF;
				height: 30px;
				border-bottom-right-radius: 15px;
				border-bottom-left-radius: 15px;
				color: #999999;
				font-size: 14px;
				padding-top: 12px;

				.scroll-view-item {
					width: 100%;
					text-align: center;
				}

				.scroll-view-item:nth-child(1) {
					background-color: #007AFF;
					border-radius: 10px;
					position: relative;
					padding-top: 5px;
					bottom: 6px;
					width: 80%;
					color: #FFFFFF;
				}

			}
		}
	}
</style>
