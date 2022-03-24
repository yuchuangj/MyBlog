<!--这是首页的轮播-->
<template>
	<view class="Carousel-box">
		<swiper circular="true" autoplay="true" interval="3000"  >
			<swiper-item v-for="item in img">
			<image :src="item.image" class="Carousel-item" @click="postimg(item.id)"></image>
			</swiper-item>
		</swiper>
	</view>
	
</template>

<script>
	import lb1 from "../static/indeximages/lb1.png"
	import lb2 from "../static/indeximages/lb2.png"
	import lb3 from "../static/indeximages/lb3.png"
	
	export default {
		data() {
			return {
				img:[
					{id:1,image:lb1},
					{id:2,image:lb2},
					{id:3,image:lb3},
				]
			}
		},
		methods: {
			postimg(id){
				uni.navigateTo({
					url:'/pages/Subpage/Carousel?id='+id,
				})
			}
		}
	}
</script>

<style lang="scss">
	.Carousel-box{
		text-align: center;
		position: relative;
		top: -110px;
		
		.Carousel-item{
			height: 150px;
			width: 90%;
			border-radius: 10px;
		}
	}

</style>
