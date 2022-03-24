<!--这是轮播的内容页-->
<template>
	<view class="contentbox" >
		<image :src="data.img" class="headerimg"></image>
		<view class="imgbox">
			<view class="imgboxitem" v-if="flag">
				<text style="font-size: 20px; font-weight: 600;"  >\n{{data.caption}}</text>
				<text style="color: #808080; font-size: 16px; " >\n\n{{data.nfont}}</text>
				<image :src="data.bckimage"  class="imgbottom"></image>
				<text style="letter-spacing: 4px; position: relative; top: 10px; left: 2%;">{{data.content}}</text>
				<view style="height: 30px;"></view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				data: [],
				flag:false,
				id: "",
			};
		},
		onLoad(e) {
			this.id = e.id,
			this.Requestdata()
		},
		methods: {
			Requestdata() {
				var that = this;
				this.data=[{}]
				uni.request({
					url: "http://localhost:81/Vue/Carousel.php",
					method: 'GET',
					dataType: 'json',
					
					data: {
						id: that.id,
					},
					success: (res) => {
						that.flag=true
						console.log(res.data);
						that.data = res.data
					}
				})
			}
		}
	}
</script>

<style lang="scss">
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
				.imgbottom{
					margin-top: 10px;
					width: 100%;
					border-radius: 10px;
				}
			}
		}
	}
</style>
