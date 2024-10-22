<template>
	<div class="main-containers">
		<div class="top-container" :style='{"padding":"0 20px","overflow":"hidden","top":"0","alignItems":"center","left":"0","background":"#a1c842","display":"flex","width":"100%","position":"fixed","justifyContent":"space-between","height":"44px","zIndex":"1002"}'>
			<img v-if='true' :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"}' src='http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg'>
			<div v-if="true" :style='{"width":"calc(100% - 360px)","margin":"0 0 0 180px","fontSize":"18px","color":"#333","textAlign":"center"}'>榆林特色旅游网站的设计与实现</div>
			<div>
				<div v-if="false" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'>0753-1234567</div>
				<div v-if="Token" :style='{"color":"#666","fontSize":"14px","display":"inline-block"}'>{{username}}</div>
				<el-button v-if="!Token" @click="toLogin()" :style='{"padding":"0 12px","margin":"0 0 0 10px","color":"#333","borderRadius":"2px","background":"#ffc303","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}'>登录/注册</el-button>
                <el-button v-if="Token" @click="logout" :style='{"padding":"0 12px","margin":"0 0 0 10px","color":"#666","borderRadius":"2px","background":"#f4f4f5","display":"inline-block","fontSize":"14px","lineHeight":"32px","height":"32px"}'>退出</el-button>
			</div>
		</div>
		
		
		<div class="body-containers" :style='"horizontal" == "vertical" ? {"minHeight":"100vh","padding":"64px 0 0","margin":"0 0 0 210px","position":"relative","background":"rgba(64, 158, 255, .3)","display":"block"} : {"width":"100%","padding":"0 0 20px","margin":"0 auto","backgroundSize":"100%","position":"relative","background":"url(http://codegen.caihongy.cn/20230112/7474c0152e6444c3b3060c655fc9a596.jpg) no-repeat center top,url() repeat-y center 90% / 100% auto,#fff"}'>
			<div class="menu-preview" :style='{"width":"100%","padding":"0","margin":"44px auto 0","background":"#ebebf3","height":"auto"}'>
				<el-menu class="el-menu-horizontal-demo" :style='{"border":0,"padding":"0 0 30px","listStyle":"none","margin":"0","textAlign":"center","background":"url(http://codegen.caihongy.cn/20230112/04f09805676347b69686b77e068e3b89.png) no-repeat center bottom","display":"flex","width":"100%","backgroundSize":"100% 100%","position":"fixed","justifyContent":"center","zIndex":"999"}' :default-active="activeIndex" :unique-opened="true" mode="horizontal" :router="true" @select="handleSelect">
					<el-image v-if="false" :style='{"width":"44px","margin":"8px 10px 8px 0","objectFit":"cover","borderRadius":"100%","float":"left","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" fit="cover"></el-image>
					<el-menu-item v-for="(menu, index) in menuList" :index="index + ''" :key="index" :route="menu.url">
						<i v-if="true" :style='{"width":"16px","padding":"0 10px","margin":"0","fontSize":"14px","color":"inherit"}' :class="iconArr[index]"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>{{menu.name}}</span>
					</el-menu-item>
					<el-menu-item @click="goBackend">
						<i v-if="true" :style='{"width":"16px","padding":"0 10px","margin":"0","fontSize":"14px","color":"inherit"}' class="el-icon-box"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>后台管理</span>
					</el-menu-item>
					<el-menu-item @click="goChat">
						<i v-if="true" :style='{"width":"16px","padding":"0 10px","margin":"0","fontSize":"14px","color":"inherit"}' class="el-icon-service"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>留言板</span>
					</el-menu-item>
					<el-menu-item :index="menuList.length + 1 + ''" @click="goMenu('/index/cart')">
						<i v-if="true" :style='{"width":"16px","padding":"0 10px","margin":"0","fontSize":"14px","color":"inherit"}' class="el-icon-shopping-cart-2"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>购物车</span>
					</el-menu-item>
					<el-menu-item :index="menuList.length + 2 + ''" v-if="Token && notAdmin" @click="goMenu('/index/center')">
						<i v-if="true" :style='{"width":"16px","padding":"0 10px","margin":"0","fontSize":"14px","color":"inherit"}' class="el-icon-user"></i>
						<span :style='{"padding":"0 10px","lineHeight":"60px","fontSize":"14px","color":"inherit","height":"60px"}'>个人中心</span>
					</el-menu-item>
				</el-menu>
			</div>
			
			<div class="banner-preview" :style='{"width":"100%","padding":"10px 7% 68px","margin":"0px auto 0","height":"620px"}'>
				<el-carousel :style='{"width":"100%","margin":"0 auto"}' trigger="click" indicator-position="inside" arrow="always" type="default" direction="horizontal" height="620px" :autoplay="true" :interval="6000" :loop="true">
					<el-carousel-item :style='{"borderRadius":"10px","width":"100%","height":"100%"}' v-for="item in carouselList" :key="item.id">
						<el-image :style='{"objectFit":"cover","width":"100%","height":"100%"}' :src="baseUrl + item.value" fit="cover"></el-image>
					</el-carousel-item>
				</el-carousel>
			</div>
			
			<router-view></router-view>
			
			<div class="bottom-preview" :style='{"padding":"50px 50px 0","alignItems":"center","background":"url(http://codegen.caihongy.cn/20230112/945970528aee445e83fe30c9962339f7.jpg) no-repeat center top / 100% auto,#ffc303","flexDirection":"column","display":"flex","width":"100%","justifyContent":"center","height":"220px"}'>
			    <img :style='{"width":"44px","objectFit":"cover","borderRadius":"100%","display":"none","height":"44px"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" >
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			    <div :style='{"margin":"10px 0 0","fontSize":"14px","lineHeight":"28px","color":"#333"}'></div>
			</div>
		</div>
		
        <el-dialog title="留言板" :visible.sync="chatFormVisible" width="600px" :before-close="chatClose">
            <div class="chat-content"
                style="background: #f5f5f5;padding: 10px;box-sizing: border-box;overflow-y: scroll;max-height: 40vh;min-height: 40vh;">
                <div :class="{'right-content': item.reply == '' || item.reply == null, 'left-content': item.ask == '' || item.ask == null}"
                    v-for="item in chatList" :key="item.id">
                    <el-tag :type="(item.ask == '' || item.ask == null) ? 'warning' : 'success'" style="margin: 10px;">
                        {{(item.ask == '' || item.ask == null) ? item.reply : item.ask}}
                    </el-tag>
                </div>
            </div>
            <div slot="footer" class="dialog-footer">
                <el-input v-model="form.ask" placeholder="请输入内容" style="width: calc(100% - 80px);float: left;">
                </el-input>
                <el-button type="primary" @click="addChat">发送</el-button>
            </div>
        </el-dialog>
	</div>
</template>

<script>
import Vue from 'vue'
export default {
    data() {
		return {
            activeIndex: '0',
			roleMenus: [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"产品分类","menuJump":"列表","tableName":"chanpinfenlei"}],"menu":"产品分类管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"景点分类","menuJump":"列表","tableName":"jingdianfenlei"}],"menu":"景点分类管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"旅游景点","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"纪念品","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除","查看评论"],"menu":"特色美食","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","修改","删除","查看评论"],"menu":"游记信息","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息管理"},{"child":[{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"留言板","tableName":"chat"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-shop","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"系统公告","tableName":"news"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除","日销额","月销额","年销额","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除","日销额","月销额","年销额"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"旅游景点列表","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","查看评论"],"menu":"纪念品列表","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论"],"menu":"特色美食列表","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","查看评论"],"menu":"游记信息列表","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除","查看评论"],"menu":"游记信息","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"旅游景点列表","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","查看评论"],"menu":"纪念品列表","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论"],"menu":"特色美食列表","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","查看评论"],"menu":"游记信息列表","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}],
			baseUrl: '',
			carouselList: [],
			menuList: [],
			chatFormVisible: false,
			chatList: [],
			form: {
				ask: '',
				userid: localStorage.getItem('userid')
			},
			Token: localStorage.getItem('Token'),
            username: localStorage.getItem('username'),
            notAdmin: localStorage.getItem('sessionTable')!='"users"',
			timer: '',
			iconArr: [
				'el-icon-star-off',
				'el-icon-goods',
				'el-icon-warning',
				'el-icon-question',
				'el-icon-info',
				'el-icon-help',
				'el-icon-picture-outline-round',
				'el-icon-camera-solid',
				'el-icon-video-camera-solid',
				'el-icon-video-camera',
				'el-icon-bell',
				'el-icon-s-cooperation',
				'el-icon-s-order',
				'el-icon-s-platform',
				'el-icon-s-operation',
				'el-icon-s-promotion',
				'el-icon-s-release',
				'el-icon-s-ticket',
				'el-icon-s-management',
				'el-icon-s-open',
				'el-icon-s-shop',
				'el-icon-s-marketing',
				'el-icon-s-flag',
				'el-icon-s-comment',
				'el-icon-s-finance',
				'el-icon-s-claim',
				'el-icon-s-opportunity',
				'el-icon-s-data',
				'el-icon-s-check'
			],	
		}
    },
    created() {
		this.baseUrl = this.$config.baseUrl;
		this.menuList = this.$config.indexNav;
		this.getCarousel();
        if(localStorage.getItem('Token') && localStorage.getItem('Token')!=null) {
            this.saveChathelper('主人，我是您的智能助手小搏，请问有什么可以帮您！');
            this.getChatList();
        }
    },
    mounted() {
        this.activeIndex = localStorage.getItem('keyPath') || '0';
    },
    watch: {
        $route(newValue) {
            let that = this
            let url = window.location.href
            let arr = url.split('#')
            for (let x in this.menuList) {
                if (newValue.path == this.menuList[x].url) {
                    this.activeIndex = x
                }
            }
            this.Token = localStorage.getItem('Token')
        },
    },
    methods: {
        handleSelect(keyPath) {
            if (keyPath) {
                localStorage.setItem('keyPath', keyPath)
            }
        },
		toLogin() {
		  this.$router.push('/login');
		},
        logout() {
            localStorage.clear();
            Vue.http.headers.common['Token'] = "";
            this.$router.push('/index/home');
            this.activeIndex = '0'
            localStorage.setItem('keyPath', this.activeIndex)
            this.Token = ''
            this.$forceUpdate()
            this.$message({
                message: '登出成功',
                type: 'success',
                duration: 1000,
            });
        },
		getCarousel() {
			this.$http.get('config/list', {params: { page: 1, limit: 3 }}).then(res => {
				if (res.data.code == 0) {
					this.carouselList = res.data.data.list;
				}
			});
		},
		goBackend() {
			window.open(`${this.$config.baseUrl}admin/dist/index.html`, "_blank");
		},
		getChatList() {
			this.$http.get('chat/list', {params: { userid: localStorage.getItem('userid'), sort: 'addtime', order: 'asc',limit: 1000 }}).then(res => {
				if (res.data.code == 0) {
					this.chatList = res.data.data.list;
                    let div = document.getElementsByClassName('chat-content')[0]
                    setTimeout(() => {
                        if (div)
                            div.scrollTop = div.scrollHeight
                    }, 0)
				}
			});
		},
		addChat() {
			this.$http.post('chat/add', this.form).then(res => {
				if (res.data.code == 0) {
					this.form.ask = '';
					this.getChatList();
				}
			});
		},
		chatClose() {
			clearInterval(this.timer);
			this.chatFormVisible = false;
		},
		goChat() {
            if(!localStorage.getItem('Token')) {
                this.toLogin();
                return;
            }
			this.chatFormVisible = true;
			this.timer = setInterval(this.getChatList, 2000);
		},
		goMenu(path) {
            if (!localStorage.getItem('Token')) {
                this.toLogin();
            } else {
                this.$router.push(path);
            }
		},
    }
}
</script>

<style rel="stylesheet/scss" lang="scss" scoped>
	.menu-preview {
	  .el-scrollbar {
	    height: 100%;
	
	    & /deep/ .scrollbar-wrapper {
	      overflow-x: hidden;
	    }
	  }
	}
	
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item {
		cursor: pointer;
		border: 0;
		padding: 0 20px;
		color: #fff;
		white-space: nowrap;
		display: flex;
		font-size: 16px;
		line-height: 48px;
		background: none;
		align-items: center;
		position: relative;
		list-style: none;
		height: 48px;
	}
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item:hover {
		cursor: pointer;
		border: 0;
		padding: 0 20px;
		color: #ff0;
		white-space: nowrap;
		background: none;
		font-size: 16px;
		line-height: 48px;
		position: relative;
		list-style: none;
		height: 48px;
	}
	
	.menu-preview .el-menu-horizontal-demo .el-menu-item.is-active {
		cursor: pointer;
		border: 0;
		padding: 0 20px;
		color: #ff0;
		white-space: nowrap;
		background: none;
		font-size: 16px;
		line-height: 48px;
		position: relative;
		list-style: none;
		height: 48px;
	}
	
	.banner-preview {
	  .el-carousel /deep/ .el-carousel__indicator button {
	    width: 0;
	    height: 0;
	    display: none;
	  }
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--left:hover {
		background: #a1c842;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right {
		width: 36px;
		font-size: 12px;
		height: 36px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__container .el-carousel__arrow--right:hover {
		background: #a1c842;
	}

	.banner-preview .el-carousel /deep/ .el-carousel__indicators {
		padding: 0;
		margin: 0 0 10px;
		z-index: 2;
		position: absolute;
		list-style: none;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li {
		border-radius: 10px;
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 12px;
		opacity: 0.4;
		transition: 0.3s;
		height: 12px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li:hover {
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 24px;
		opacity: 0.7;
		height: 12px;
	}
	
	.banner-preview .el-carousel /deep/ .el-carousel__indicators li.is-active {
		padding: 0;
		margin: 0 4px;
		background: #fff;
		display: inline-block;
		width: 24px;
		opacity: 1;
		height: 12px;
	}

    .chat-content {
      .left-content {
          width: 100%;
          text-align: left;
      }
      .right-content {
          width: 100%;
          text-align: right;
      }
    }
</style>
