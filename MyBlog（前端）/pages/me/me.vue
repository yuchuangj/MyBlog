<!--登录界面-->
<template>
	<view>
		<view class="loginbox" v-if="show1">
			<image src="../../static/meimage/1.png"></image>
			<button @click="login">登录</button>
		</view>
		<view v-if="show2" class="login">
			<view class="bckcolor">
				<view class="infobox">
					<image style="width: 70px; height: 70px;" :src="info.avatarUrl"></image>
					<view class="info">
						<text class="name">{{ info.nickName }}</text><br>
						<text class="label">青春里的温柔一定与你有关</text>
					</view>
				</view>
			</view>
			<view class="bgcolor2">
				<view v-for="item in items" class="positionbox" @click="fn(item.method)">
					<image :src="item.img" style="width: 35px; height: 35px;"></image><br>
					<text style="font-size: 13px; color: #999999;">{{item.text}}</text>
				</view>
			</view>
			<view class="bgcolor3">
				<view v-for="item in infos" class="positionbox2" @click="fn(item.method)">
					<image :src="item.img" style="width: 30px; height: 30px;"></image>
					<text>{{item.text}}</text>
					<text class="symbol2">></text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				show1: true,
				show2: false,
				info: [], //用来存储登录的数据,
				items: [{
						text: "知识星球",
						img: "../../static/meimage/knowledge.png",
						method: 'one'
					},
					{
						text: "分享海报",
						img: "../../static/meimage/share.png",
						method: 'two'
					},
					{
						text: "咨询客服",
						img: "../../static/meimage/consulting.png",
						method: 'three'
					}
				],
				infos:[{
					text: "清除缓冲",
					img: "../../static/meimage/Sweep.png",
					method:"exit"
				}, {
					text: "关于程序",
					img: "../../static/meimage/about.png",
					method:"about"
				}, {
					text: "退出登录",
					img: "../../static/meimage/exit.png",
					method:"exit"
				}],
			}
		},
		onLoad() {
			//页面加载登录
			this.login()
		},
		methods: {
			//这里的this[method]就是为了赋值data里的三个函数方法，现在我每个li都分别绑定了方法
			fn(method) {
				this[method]()
			},
			//这是分享海报的跳转
			two() {
				uni.navigateTo({
					url: '../Subpage/share'
				})
			},
			//这是咨询客服暂时无！
			three() {
				uni.showToast({
					title: '后续有待开发'
				})
			},
			//这是退出登录
			exit(){
				let that=this
				//这是一个模态弹窗
				uni.showModal({
					title: '提示',
					content: '你真的要退出吗？',
					success: (res)=> {
						if (res.confirm) {
							console.log('用户点击确定');
							this.show1=true,
							this.show2=false
							//并跳转到首页
							uni.switchTab({
								url:"../index/index"
							})
						} else if (res.cancel) {
							console.log('用户点击了取消')
						}
					}
				})
			},
			//这是关于我们跳转的页面
			about(){
				uni.navigateTo({
					url:'../Subpage/about'
				})
			},
			//登录界面
			login() {
				let that = this
				//获取用户信息，每次请求都会弹出窗口
				uni.getUserProfile({
					provider: 'weixin',
					desc: "我的账号信息",
					//成功就回调
					success: (res) => {
						//获取用户信息对象，并存放到info里面
						that.info = res.userInfo;
						console.log(that.info)
						that.show1 = false
						that.show2 = true;
					},
				})
			}
		}
	}
</script>

<style lang="scss">
	.loginbox {
		text-align: center;
		margin-top: 20%;

		image {
			height: 300px;
		}

		button {
			position: relative;
			top: 70px;
			width: 80%;
			border-radius: 50px;
			background-color: $uni-bg-color;
			color: #FFFFFF;
		}
	}

	.login {
		background-color: #F8F8F8;
		width: 100%;
		height: 650px;
		background-image: url('../../static/meimage/2.jpg');
		background-size: 100% 50%;
		background-repeat: no-repeat;
		margin-top: -20%;
		z-index: -1;

		.bckcolor,
		.bgcolor2,
		.bgcolor3 {
			width: 90%;
			position: relative;
			left: 5%;
			height: 145px;
			top: 26%;
			border-radius: 10px;
			background-color: #FFFFFF;

			.infobox {
				display: flex;
				flex-direction: row;
				position: relative;
				top: 20%;
				left: 5%;

				.info {
					position: relative;
					left: 10%;
					top: 10px;

					.name {
						font-size: 32px;
						font-weight: 800;
					}

					.label {
						color: #999999;
						font-size: 12px;
					}
				}
			}
		}

		.bgcolor2 {
			height: 80px;
			top: 28%;
			display: flex;
			justify-content: center;
			text-align: center;

			.positionbox {
				position: relative;
				top: 3px;
				margin-left: 8%;
				margin: auto;
			}
		}

		.bgcolor3 {
			top: 30%;
			height: 180px;
			.positionbox2{
				position: relative;
				top: 20px;
				left: 20px;
				margin-top: 20px;
				text{
					position: relative;
					top: -7.5px;
					left: 20px;
				}
				.symbol2{
					color: #999999;
					left: 55%;
					font-size: 20px;
					font-weight: bold;
				}
			}
		}
	}
</style>
