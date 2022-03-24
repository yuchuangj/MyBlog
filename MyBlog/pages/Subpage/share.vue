<!--这是分享界面-->
<template>
	<view class="contentbox">
		<image src="../../static/images/bck.png" class="bckimage">
			<image style="width: 150px; height: 150px; position: relative; top: -180px;"
				src="../../static/indeximages/jie.jpg"></image>
		</image>
		<view style="position: relative; top: -140px;">
			<button class="copy" @click="copy()">复制客服号</button>
			<button class="preservation" @click="good">{{title}}</image></button>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: "开心每一天"
			}
		},
		methods: {
			//这是复制客服号
			copy() {
				uni.showModal({
					content: '复制客服号',
					confirmText: '复制内容',
					success: (res) => { //点击你要复制内容的后调函数
						if (res.confirm) {
							uni.setClipboardData({
								data: '15099948107', //这是要被复制的内容
								success: () => { //复制成功就回调函数
									uni.showToast({
										title: '复制成功'
									})
								},
							})
						} else if (res.cancel) {
							console.log("点击了取消")
						}
					}

				})
			},
			//这是开心每一天点击事件
			good() {
				uni.showToast({
					title: '学习是一件很快乐的事情',
					icon:""
				})
			}
		}
	}
</script>

<style lang="scss">
	page {
		background-color: #F8F8F8;

		.contentbox {
			width: 90%;
			position: relative;
			left: 5%;
			margin-top: 20px;
			text-align: center;

			.bckimage {
				width: 100%;
				height: 450px;
				border-radius: 10px;

				.img {
					position: relative;
					top: -50px;
					width: 100px;
					height: 100px;
				}
			}

			.copy {
				color: #007AFF;
				background-color: #F1F1F1;
				border-radius: 50px;
				width: 100%;
			}

			.preservation {
				margin-top: 10px;
				color: #FFFFFF;
				background-color: #007AFF;
				border-radius: 50px;
				width: 100%;
			}
		}
	}
</style>
