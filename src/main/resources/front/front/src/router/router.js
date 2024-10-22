import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import AddrList from '../pages/shop-address/list'
import AddrAdd from '../pages/shop-address/addOrUpdate'
import Order from '../pages/shop-order/list'
import OrderConfirm from '../pages/shop-order/confirm'
import Cart from '../pages/shop-cart/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import chanpinfenleiList from '../pages/chanpinfenlei/list'
import chanpinfenleiDetail from '../pages/chanpinfenlei/detail'
import chanpinfenleiAdd from '../pages/chanpinfenlei/add'
import yonghuList from '../pages/yonghu/list'
import yonghuDetail from '../pages/yonghu/detail'
import yonghuAdd from '../pages/yonghu/add'
import jingdianfenleiList from '../pages/jingdianfenlei/list'
import jingdianfenleiDetail from '../pages/jingdianfenlei/detail'
import jingdianfenleiAdd from '../pages/jingdianfenlei/add'
import lvyoujingdianList from '../pages/lvyoujingdian/list'
import lvyoujingdianDetail from '../pages/lvyoujingdian/detail'
import lvyoujingdianAdd from '../pages/lvyoujingdian/add'
import jinianpinList from '../pages/jinianpin/list'
import jinianpinDetail from '../pages/jinianpin/detail'
import jinianpinAdd from '../pages/jinianpin/add'
import tesemeishiList from '../pages/tesemeishi/list'
import tesemeishiDetail from '../pages/tesemeishi/detail'
import tesemeishiAdd from '../pages/tesemeishi/add'
import youjixinxiList from '../pages/youjixinxi/list'
import youjixinxiDetail from '../pages/youjixinxi/detail'
import youjixinxiAdd from '../pages/youjixinxi/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
                {
                    path: 'shop-address/list',
                    component: AddrList
                },
                {
                    path: 'shop-address/addOrUpdate',
                    component: AddrAdd
                },
				{
					path: 'shop-order/order',
					component: Order
				},
				{
					path: 'cart',
					component: Cart
				},
				{
					path: 'shop-order/orderConfirm',
					component: OrderConfirm
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'chanpinfenlei',
					component: chanpinfenleiList
				},
				{
					path: 'chanpinfenleiDetail',
					component: chanpinfenleiDetail
				},
				{
					path: 'chanpinfenleiAdd',
					component: chanpinfenleiAdd
				},
				{
					path: 'yonghu',
					component: yonghuList
				},
				{
					path: 'yonghuDetail',
					component: yonghuDetail
				},
				{
					path: 'yonghuAdd',
					component: yonghuAdd
				},
				{
					path: 'jingdianfenlei',
					component: jingdianfenleiList
				},
				{
					path: 'jingdianfenleiDetail',
					component: jingdianfenleiDetail
				},
				{
					path: 'jingdianfenleiAdd',
					component: jingdianfenleiAdd
				},
				{
					path: 'lvyoujingdian',
					component: lvyoujingdianList
				},
				{
					path: 'lvyoujingdianDetail',
					component: lvyoujingdianDetail
				},
				{
					path: 'lvyoujingdianAdd',
					component: lvyoujingdianAdd
				},
				{
					path: 'jinianpin',
					component: jinianpinList
				},
				{
					path: 'jinianpinDetail',
					component: jinianpinDetail
				},
				{
					path: 'jinianpinAdd',
					component: jinianpinAdd
				},
				{
					path: 'tesemeishi',
					component: tesemeishiList
				},
				{
					path: 'tesemeishiDetail',
					component: tesemeishiDetail
				},
				{
					path: 'tesemeishiAdd',
					component: tesemeishiAdd
				},
				{
					path: 'youjixinxi',
					component: youjixinxiList
				},
				{
					path: 'youjixinxiDetail',
					component: youjixinxiDetail
				},
				{
					path: 'youjixinxiAdd',
					component: youjixinxiAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
