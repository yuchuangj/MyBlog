<!--这是首页的字体滚动-->
<template>
	<view class="scrolling-box">
		<view style="position: relative; top: 31%;">
		<image src="../static/images/notice%20(2).png"></image>
		<view class="animate">
			欢迎来到阿杰的博客~
		</view>
		</view>
	
	</view>
</template>

<script>
	export default {
		name: "Font-scrolling",
	}
</script>

<style lang="scss">
	.scrolling-box {
		width: 90%;
		height: 48px;
		position: relative;
		left: 5%;
		top: -70px;
		background-color: #FFFFFF;
		border-radius: 10px;

		image {
			position: relative;
			left: 5%;
			height: 40rpx;
			width: 80px;
		}

		.animate {
			position: relative;
			margin-top: -7.2%;
			padding-left: 4%;
			font-size: 14px;
			color: #999999;
			animation: 5s wordsLoop linear infinite normal;
		}

		@keyframes wordsLoop {
			0% {
				transform: translateX(120px);
			}

			100% {
				transform: translateX(50%);
			}
		}

		@-webkit-keyframes wordsLoop {
			0% {
				transform: translateX(0px);
			}

			100% {
				transform: translateX(50%);
			}
		}
	}
</style>
