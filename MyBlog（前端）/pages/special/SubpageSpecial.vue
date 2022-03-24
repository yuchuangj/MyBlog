<!--这是专题的内容页-->
<template>
	<view class="contentbox" v-if="flag">
		<image :src="data.images" class="headerimg"></image>
		<view class="imgbox">
			<view class="imgboxitem">
				<text style="font-size: 20px; font-weight: 600;">\n{{data.caption}}</text>
				<text style="color: #808080; font-size: 16px; ">\n\n{{data.littleetitle}}</text>
				<text style="letter-spacing: 4px; position: relative; top: 10px; ">\n{{data.content}}</text>
				<view style="margin-top: 2px;">
					<text style="font-weight: bold;">\n{{data.content2}}</text>
				</view>
				<button class="btndown" @click="navlogin">{{data.button}}</button>
				<button class="indexreturn" @click="myreturn">{{data.button2}}</button>
				<view class="footer">
					<text>已经到最底下了！</text>
				</view>
				<view style="height: 10px;"></view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: '',
				data: [],
				flag: false
			}
		},
		onLoad(e) {
			this.id = e.id
			this.myrequest()
		},
		methods: {
			//返回主页
			myreturn() {
				uni.showModal({
					title: '提示',
					content: '你真的要返回主页 不继续看嘛？',
					success: function(res) {
						if (res.confirm) {
							console.log('用户点击了返回页面')
							uni.switchTab({
								url: '../index/index',
								fail(error) {
									console.log(error)
								}
							});
						} else if (res.cancel) {
							console.log('用户点击了取消')
						}
					}
				})
			},
			//阅读登录
			navlogin() {
				uni.showToast({
					title: '请先登录！才能看接下来的内容',
					icon: 'none',
					duration: 2000,
				})
			},
			myrequest() { //请求数据
				var that = this
				uni.request({
					url: 'http://localhost:81/Vue/special.php',
					method: 'GET',
					dataType: 'json',
					data: {
						id: that.id,
					},
					success: (res) => {
						console.log(res.data);
						that.data = res.data;
						that.flag = true
					}
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
		width: 100%;

		.headerimg {
			width: 100%;
			height: 230px;
			position: relative;
		}

		.imgbox {
			z-index: 9999;
			position: relative;
			margin-top: -20px;
			width: 100%;
			height: 100%;
			border-top-right-radius: 20px;
			border-top-left-radius: 20px;
			background-color: #FFFFFF;

			.imgboxitem {
				margin-left: 5%;
				width: 90%;

				button {
					color: #FFFFFF;
					border-radius: 50px;
					margin-top: 20px;
				}

				.btndown {
					background-image: linear-gradient(90deg, #007aff, #66ccff);
				}

				.indexreturn {
					background-image: linear-gradient(90deg, #f09000, #FFE4B5);
				}
			}

			.footer {
				text-align: center;
				color: #808080;
				margin-top: 5%;
				margin-bottom: 5%;
			}
		}
	}
</style>
