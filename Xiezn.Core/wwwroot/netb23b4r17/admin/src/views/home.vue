<template>
<div class="content" :style='{"minHeight":"100vh","padding":"0px 20px 20px","alignItems":"flex-start","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230830/d58ecc944fb54dbfa18ecd2b64e92170.png) no-repeat center top / cover","display":"flex","fontSize":"16px"}'>
	<!-- notice -->
	<!-- title -->
	<div class="text" :style='{"width":"100%","margin":"20px auto 40px","fontSize":"32px","color":"rgb(51, 51, 51)","textAlign":"center","fontWeight":"bold"}'>欢迎使用 {{this.$project.projectName}}</div>
	

	
	<!-- echarts -->
</div>
</template>
<script>
//0
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
		};
	},
	mounted(){
		this.init();
	},
	methods:{
		init(){
			if(this.$storage.get('Token')){
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code != 0) {
				router.push({ name: 'login' })
				}
			});
			}else{
				router.push({ name: 'login' })
			}
		},
  }
};
</script>
<style lang="scss" scoped>
    .cardView {
        display: flex;
        flex-wrap: wrap;
        width: 100%;

        .cards {
            display: flex;
            align-items: center;
            width: 100%;
            margin-bottom: 10px;
            justify-content: center;
            .card {
                width: calc(25% - 20px);
                margin: 0 10px;
                /deep/.el-card__body{
                    padding: 0;
                }
            }
        }
    }
	
	// 日历
	.calendar td .text {
				border-radius: 12px;
				flex-direction: column;
				background: #fff;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td .text:hover {
				background: rgba(86,178,198,.2);
			}
	.calendar td .text .new {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td .text .old {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.festival .text {
				border-radius: 12px;
				flex-direction: column;
				background: rgba(235,51,51,.05);
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td.festival .text:hover {
				background: rgba(86,178,198,.2);
			}
	.calendar td.festival .text .new {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.festival .text .old {
				color: inherit;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.other .text {
				border-radius: 12px;
				flex-direction: column;
				background: #fff;
				display: flex;
				width: 100%;
				font-size: inherit;
				justify-content: center;
				align-items: center;
				opacity: 0.3;
				height: 100%;
			}
	.calendar td.other .text:hover {
				background: rgba(86,178,198,.2);
			}
	.calendar td.other .text .new {
				color: #000;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.other .text .old {
				color: #666;
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.today .text {
				border-radius: 12px;
				flex-direction: column;
				color: #fff;
				background: rgba(86,178,198,.8);
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				height: 100%;
			}
	.calendar td.today .text:hover {
				background: rgba(86,178,198,.6);
			}
	.calendar td.today .text .new {
				font-size: inherit;
				line-height: 1.4;
			}
	.calendar td.today .text .old {
				font-size: inherit;
				line-height: 1.4;
			}
	
	// echarts1
	.type1 .echarts1 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0;
				background: rgba(86,178,198,.8);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type1 .echarts1:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	// echarts2
	.type2 .echarts1 {
				border-radius: 8px;
				padding: 10px;
				margin: 0;
				background: rgba(86,178,198,.8);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type2 .echarts1:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type2 .echarts2 {
				border-radius: 8px;
				padding: 10px;
				margin: 0;
				background: rgba(86,178,198,.6);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type2 .echarts2:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	// echarts3
	.type3 .echarts1 {
				border-radius: 8px;
				padding: 10px;
				margin: 0;
				background: rgba(86,178,198,.8);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type3 .echarts1:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type3 .echarts2 {
				border-radius: 8px;
				padding: 10px;
				margin: 0;
				background: rgba(86,178,198,.6);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type3 .echarts2:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type3 .echarts3 {
				border-radius: 8px;
				padding: 10px;
				margin: 0;
				background: rgba(86,178,198,.8);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type3 .echarts3:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	// echarts4
	.type4 .echarts1 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(86,178,198,.8);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 480px;
			}
	.type4 .echarts1:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type4 .echarts2 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(86,178,198,.6);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 480px;
			}
	.type4 .echarts2:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type4 .echarts3 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(86,178,198,.8);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 480px;
			}
	.type4 .echarts3:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type4 .echarts4 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 30px;
				background: rgba(86,178,198,.6);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 480px;
			}
	.type4 .echarts4:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	// echarts5
	.type5 .echarts1 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 10px;
				background: rgba(86,178,198,.8);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type5 .echarts1:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type5 .echarts2 {
				border-radius: 8px;
				padding: 10px;
				margin: 0px 0 10px;
				background: rgba(86,178,198,.6);
				width: 49%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type5 .echarts2:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type5 .echarts3 {
				border-radius: 8px;
				padding: 10px;
				margin: 10px 0 10px;
				background: rgba(86,178,198,.8);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type5 .echarts3:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type5 .echarts4 {
				border-radius: 8px;
				padding: 10px;
				margin: 10px 0 10px;
				background: rgba(86,178,198,.6);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type5 .echarts4:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	.type5 .echarts5 {
				border-radius: 8px;
				padding: 10px;
				margin: 10px 0 10px;
				background: rgba(86,178,198,.8);
				width: 32%;
				position: relative;
				transition: 0.3s;
				height: 400px;
			}
	.type5 .echarts5:hover {
				box-shadow: 1px 1px 20px rgba(255,255,255,.12);
				transform: translate3d(0, -10px, 0);
				z-index: 1;
			}
	
	.echarts-flag-2 {
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: space-between;
	  padding: 10px 20px;
	  background: rebeccapurple;
	
	  &>div {
	    width: 32%;
	    height: 300px;
	    margin: 10px 0;
	    background: rgba(255,255,255,.1);
	    border-radius: 8px;
	    padding: 10px 20px;
	  }
	}
</style>
