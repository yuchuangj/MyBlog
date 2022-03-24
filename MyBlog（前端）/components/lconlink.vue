<!--这是首页中间跳转的图标-->
<template>
	<view class="iconcontrol">
		<view class="iconbox">
			<view>
				<image src="../static/images/search%20(2).png" @click="search"><text>\n搜索</text></image>
			</view>
			<view>
				<image src="../static/images/8.png" @click="special"><text>\n分类</text></image>
			</view>
			<view>
				<image src="../static/images/fire.png" @click="find"><text>\n发现</text></image>
			</view>
			<view>
				<image src="../static/images/cloud.png" @click="resources"><text>\n资源</text></image>
			</view>
			<view>
				<image src="../static/images/friend.png" @click="friend"><text>\n友情</text></image>
			</view>
		</view>
		<view class="Underline"></view>
		<view class="share">
			<image src="../static/images/house.png"></image>
			<text>心念所至，生万千喜欢</text>
			<button size="mini" @click="share">分享</button>
		</view>
	</view>

</template>

<script>
	export default {
		name: "lconlink",
		methods: {
			special() {
				uni.switchTab({
					url: '../../pages/special/special'
				})
			},
			search() {
				uni.switchTab({
					url: "../../pages/find/find"
				})
			},
			resources() {
				uni.switchTab({
					url: "../../pages/resources/resources"
				})
			},
			friend() {
				uni.navigateTo({
					url: '/pages/Subpage/friend',
					fail(error) {
						console.log(error)
					}
				})
			},
			find() {
				uni.switchTab({
					url: '../../pages/find/find'
				})
			},
			//点击分享
			share() {
				//这是一个模态弹窗
				uni.showModal({
					title: '提示',
					content: '你真的要跳转吗？',
					success: function(res) {
						if (res.confirm) {
							console.log('用户点击确定');
							//如果点击确认就跳转
							uni.navigateTo({
								url: '/pages/Subpage/share'
							})
						} else if (res.cancel) {
							console.log('用户点击了取消')
						}
					}
				})
			}
		}
	}
</script>

<style lang="scss">
	.iconcontrol {
		position: relative;
		top: -90px;
		margin-left: 5%;
		width: 90%;
		height: 180px;
		border-radius: 10px;
		background-color: #FFFFFF;

		.iconbox {
			width: 100%;
			display: flex;
			justify-content: space-around;
			text-align: center;

			image {
				position: relative;
				top: 30rpx;
				width: 80rpx;
				height: 40px;
			}

			text {
				text-align: center;
				position: relative;
				top: 25rpx;
				font-size: 13px;
				color: #999999;
			}
		}

		.Underline {
			border-bottom: 2px solid #F1F1F1;
			text-align: center;
			width: 92%;
			position: relative;
			top: 25px;
			left: 4%;
		}

		.share {
			position: relative;
			margin-left: 4.5%;
			top: 45px;
			text-align: center;

			image {
				height: 50px;
				width: 20%;
				position: relative;
				left: -6.5%;
			}

			text {
				color: #999999;
				font-size: 13px;
				position: relative;
				top: -40rpx;
				left: -2%;
			}

			button {
				position: relative;
				top: -25rpx;
				left: 3%;
				width: 22%;
				height: 26px;
				font-size: 11px;
				border-radius: 50px;
				color: #FFFFFF;
				background-color: #007AFF;
			}
		}



	}
</style>
