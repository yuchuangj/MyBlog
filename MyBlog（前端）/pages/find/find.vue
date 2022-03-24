<!--这是查询-->
<template>
	<view class="searchbox">
		<view style="position: relative; top: 13px;">
			<image src="../../static/searchimg/search.png" @click="getSearch"></image>
			<input type="search" v-model="search"  placeholder="搜索一下,爱上这个世界"
				placeholder-style="font-size:30rpx;color:#B5B9BF" />
		</view>
		<view class="textbox">
			<text>猜你想玩</text>
			<text>\n\n\n热门标签文章</text>
			
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				//接收请求的数据
				data: [{}],
				info:""
			}
		},
		onLoad(e) {
			this.getPage()
			this.id=e.id
		},
		methods: {
			getSearch() {
				if(this.info=="!23"){
					uni.switchTab({
						url: '../../pages/index/index'
					})
					console.log(this.data)
				}else{
					uni.showToast({
						title:'搜索不到...请仔细',
						icon:"error"
					})
				}
			},
			getPage() {
				//请求数据
				var that = this
				uni.request({
					url: "http://localhost:81/Vue/search.php",
					method: 'GET',
					dataType: 'json',
					success: (res) => {
						console.log(res.data)
						that.data = res.data
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

	.searchbox {
		position: relative;
		left: 5%;
		height: 50px;
		border-radius: 10px;
		width: 90%;
		background-color: #FFFFFF;

		image {
			display: inline-block;
			height: 20px;
			width: 20px;
			margin-left: 75px;
		}

		input {
			display: inline-block;
			padding-left: 10px;
		}

		.textbox {
			position: relative;
			top: 150%;
		}
	}
</style>
