<!--资源-->
<template>
	<view class="resoucesbox">
		<view class="header">
			<view class="headerleft">
				<text>搭建之案列分享-</text>
			</view>
			<view class="headerright">
				<text>小程序之案列分享-成语答题</text>
			</view>
		</view>
		<!--这是导入的资源-->
		<resource></resource>
	</view>
</template>

<script>
	import resource from "../../components/resouce/resouce.vue"
	export default {
		components:{
			resource
		}
	}
</script>

<style lang="scss">
	page{
		background-color: #F8F8F8;
	}
	.resoucesbox{
		width: 90%;
		height: 100%;
		position: relative;
		left: 5%;
		.header{
			display: flex;
			flex-direction: row;
			margin-top: 5px;
			.headerleft{
				width: 50%;
				height: 130px;
				border-radius: 10px;
				background-color: #007AFF;
				text-align: center;
				text{
					font-size: 15px;
					color: #FFFFFF;
					position: relative;
					top: 40% ;
					overflow-x: hidden;
				}
			}
			.headerright{
				width: 60%;
				height: 70px;
				margin-left: 10px;
				border-radius: 10px;
				background-color: #007AFF;
				text-align: center;
				text{
					position: relative;
					top: 30%;
					font-size: 12px;
					color: #FFFFFF;
				}	
			}
		}
	}

</style>
