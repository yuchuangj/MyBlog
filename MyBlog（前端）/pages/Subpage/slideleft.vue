
<template>
	<view class="contentbox" v-if="flag">
		<text class="caption">{{data.Caption}}</text>
		<view class="subtitlebox">
			<text class="subtitle1">{{data.Subtitle}}</text>
			<text class="subtitle2">{{data.Subtitle2}}</text>
			<text class="time">{{data.time}}</text>
		</view>
		<view class="contextbox">
			<text>{{data.content1}}</text>
			<text>\n\n{{data.content2}}</text>
			<text>\n\n{{data.content3}}</text>
		</view>
		<image :src="data.image1"></image>
		<view class="footer">
			<text>{{data.footer}}</text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				data: [],
				id: "",
				flag:false
			}
		},
		onLoad(e) {
			this.id = e.id
			this.Requestdata()
		},
		
		methods: {
			Requestdata() {			
				var that = this
				uni.request({
					url: "http://localhost:81/Vue/slideleft.php",
					method: 'get',
					dataType: 'json',
					data: {
						id: that.id
					},
					success: (res) => {
						that.flag=true
						console.log(res.data);
						that.data = res.data		
					}
				})
			},
			timer(){
				setTimeout(function(){
					false
				},1000)
			}

		}
	}
</script>

<style lang="scss">
	.contentbox {
		width: 90%;
		position: relative;
		left: 5%;
		margin-top: 5%;

		.caption {
			font-size: 23px;
			font-weight: bold;
		}

		.subtitlebox {
			font-size: 14px;
			margin-top: 3%;

			.subtitle1 {
				color: #999999;
			}

			.subtitle2 {
				color: #3F536E;
				margin-left: 12px;
			}

			.time {
				margin-left: 12px;
				color: #999999;
			}
		}

		.contextbox {
			margin-top: 6%;
			letter-spacing: 2px;
		}

		image {
			margin-top: 5%;
			width: 100%;
			border-radius: 10px;
			height: 180px;
		}
		.footer{
			text-align: center;
			color: #808080;
			margin-top: 5%;
			margin-bottom: 5%;
		}

	}
</style>
