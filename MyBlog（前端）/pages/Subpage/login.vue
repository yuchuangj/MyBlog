<template>
	<view>
		<view>{{}}</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				message:"欢迎来到我的界面",
			}
		},
		methods: {
			
		},
		onLoad(options){
			var data=JSON.parse(options.login)//字符串转换为对象
		}
	}
</script>

<style>

</style>
