<!--这是中下的左右滑动-->
<template>
	<view class="slideleft">
		<view class="focus">
			<image src="../static/images/trophy.png"></image>
			<text class="input">焦点</text>
		</view>
		<view>
			<scroll-view class="scroll-view" scroll-x="true" scroll-left="0" show-scrollbar>
				<view class="scroll-box">
					<view id="demo1" class="scroll-view-item" v-for="item in items">
						<image :src="item.image" @click="Rrequest(item.id)"></image>
						<view class="boxleft">
							<text class="icontext">{{item.icontext}}</text>
							<text class="smalltext">{{item.smalltext}}</text>
						</view>
					</view>		
				</view>
			</scroll-view>
		</view>
		<view class="pencilicon">
			<image src="../static/images/book（2）.png"></image>
			<text class="penciltext">最新文章</text>
		</view>
	</view>
</template>

<script>
	export default {
		name: "slideleft",
		data() {
			return {
				items:[
					{id:1,image:"../static/images/5.png",icontext:"游览器插件硬核软件分享",smalltext:"\n以实操突破百度网盘下载速度慢的问题..."},
					{id:2,image:"../static/images/7.png",icontext:"盘姬工具硬核软件分享",smalltext:"\n一款功能强大的windows系统工具合集！"},
					{id:3,image:"../static/images/3.png",icontext:"同屏助手硬核软件分享",smalltext:"\n一款可以在pc断显示和操控手机的同屏..."}
				]

			};
		},
		methods: {
			Rrequest(id){	
				uni.navigateTo({
					url:"../Subpage/slideleft?id="+id,
					fail(error) {
						console.log(error)
					}
				})
			}
		}
	}
</script>

<style lang="scss">
	.slideleft {
		width: 90%;
		position: relative;
		left: 5%;
		top: -55px;
		.focus,
		.pencilicon, {
			image {
				height: 20px;
				width: 8%;
			}			
			.input,
			.penciltext {
				position: relative;
				top: -5px;
				padding-left: 10px;
				font-size: 13px;
				font-weight: 800;
			}
			.input{
				position: relative;
				top: -3.5px;
			}
		}

		.pencilicon {
			position: relative;
			top: 25px;
		}

		.scroll-view {
			position: relative;
			top: 10px;

			.scroll-box {
				display: flex;
				flex-direction: row;

				.scroll-view-item {
					position: relative;
					left: -20px;
					margin-left: 20px;
					height: 200px;
					border-radius: 10px;
					background-color: #FFFFFF;
					width: 250px;

					image {
						height: 145px;
						width: 230px;
						border-radius: 10px;
					}
					.boxleft {
						margin-left: 2%;
						.icontext {
							font-size: 14px;
						}
						.smalltext {
							font-size: 12px;
							color: #999999;
						}
					}
				}
			}
		}
	}
</style>
