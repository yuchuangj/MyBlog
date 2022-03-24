<template>
	<view class="SubPagebox" v-if="flag">
		<image :src="data.img"></image>
		<view style="margin-top: 10px;">
			<text style="font-size: 20px; font-weight: 500;">{{data.font}}</text>
			<view style="margin-top: -9px; color: #66CCFF;">
				<text>\n{{data.ntype}}</text>
			</view>
			<text style="letter-spacing: 3px;">\n{{data.content}}</text>
			<view style="text-align: center;">
				<text  style="color: #C8C7CC;" >\n{{data.contentfoot}}</text>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				//获取id
				id: "",
				//接收请求的数据
				data: [],
				flag:false
			};
		},
		onLoad(e) {
			this.id = e.id
			this.getPage()
		},
		methods: {
			getPage() {
				//请求数据
				var that = this
				uni.request({
					url: "http://localhost:81/Vue/indeximg.php",
					method: 'GET',
					dataType: 'json',
					//存在data数据里
					data: {
						id: that.id,
					},
					success: (res) => {
						that.flag=true
						console.log(res.data);
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

	.SubPagebox {
		width: 90%;
		position: relative;
		left: 5%;

		image {
			width: 100%;
			height: 200px;
			border-radius: 10px;
			margin-top: 5px;
		}

	}
</style>
