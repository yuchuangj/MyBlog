<template>
	<!--首页的组件-->
	<view class="bgcolor">
		<Header></Header>
		<Carousel></Carousel>
		<lconlink></lconlink>
		<fontscrolling></fontscrolling>
		<slideleft></slideleft>
		<bottomnew></bottomnew>
	</view>
</template>

<script>
	//导入组件
	import Header from "../../components/head.vue"
	import Carousel from "../../components/Carousel.vue"
	import lconlink from "../../components/lconlink.vue"
	import fontscrolling from "../../components/Font-scrolling.vue"
	import slideleft from "../../components/slideleft.vue"
	import bottomnew from "../../components/Bottomnews.vue"

	export default {
		components: {
			Header,
			Carousel,
			lconlink,
			fontscrolling,
			slideleft,
			bottomnew
		}
	}
</script>

<style lang="scss">
	.bgcolor {
		height: 100%;
		background-color: #F1F1F1;
	}
</style>
