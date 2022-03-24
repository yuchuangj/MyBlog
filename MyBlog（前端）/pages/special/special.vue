<!--这是专题-->
<template>
	<view style="background-color: #F1F1F1; height: 150%; width: 100%; position: relative; top: -40px;">
		<view class="specialbox" v-for="item in items">
			<image :src="item.img" @click="nav2(item.id)"></image>
			<text>{{item.text}}</text>
		</view>
		<view class="go-top" style="text-align: center; position: relative; top: 32px;">
			<text @click="top" style="font-size: 15px; color: #808080; ">点击这里返回顶部</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				items: [{
						id: 1,
						img: "../../static/Specialimages/1.png",
						text: "安卓使用软件",
					},
					{
						id: 2,
						img: "../../static/Specialimages/2.png",
						text: "Windows使用软件"
					},
					{
						id: 3,
						img: "../../static/Specialimages/3.png",
						text: "Linux"
					},
					{
						id: 4,
						img: "../../static/Specialimages/4.png",
						text: "心灵鸡汤"
					},
					{
						id: 5,
						img: "../../static/Specialimages/5.png",
						text: "好看的图片"
					}
				]
			}
		},
		methods: {
			//点击跳转事件
			nav2(id){
				console.log(123);
				uni.navigateTo({
					url:'./SubpageSpecial?id='+id
				})
			},
			top() { //回到顶部
				uni.pageScrollTo({
					scrollTop: 0,
					duration: 300
				})
			}
		}
	}
</script>

<style lang="scss">
	page{
		background-color: #F1F1F1;
	}
	.specialbox {
		height: 190px;
		width: 90%;
		position: relative;
		left: 5%;
		background-color: #FFFFFF;
		border-radius: 10px;
		top: 10px;
		margin-top: 35px;

		image {
			border-top-right-radius: 10px;
			border-top-left-radius: 10px;
			width: 100%;
			height: 160px;
		}
		text{
			position: relative;
			left: 2%;
			font-weight: 800;
		}

	}
</style>
