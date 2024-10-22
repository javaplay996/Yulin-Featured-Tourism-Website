export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除"],"menu":"产品分类","menuJump":"列表","tableName":"chanpinfenlei"}],"menu":"产品分类管理"},{"child":[{"appFrontIcon":"cuIcon-rank","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除"],"menu":"景点分类","menuJump":"列表","tableName":"jingdianfenlei"}],"menu":"景点分类管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"旅游景点","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"纪念品","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除","查看评论"],"menu":"特色美食","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","修改","删除","查看评论"],"menu":"游记信息","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息管理"},{"child":[{"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"留言板","tableName":"chat"},{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-shop","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-flashlightopen","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"系统公告","tableName":"news"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除","日销额","月销额","年销额","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除","日销额","月销额","年销额"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-phone","buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"旅游景点列表","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","查看评论"],"menu":"纪念品列表","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论"],"menu":"特色美食列表","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","查看评论"],"menu":"游记信息列表","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["新增","查看","修改","删除","查看评论"],"menu":"游记信息","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","查看评论"],"menu":"旅游景点列表","menuJump":"列表","tableName":"lvyoujingdian"}],"menu":"旅游景点模块"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","查看评论"],"menu":"纪念品列表","menuJump":"列表","tableName":"jinianpin"}],"menu":"纪念品模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论"],"menu":"特色美食列表","menuJump":"列表","tableName":"tesemeishi"}],"menu":"特色美食模块"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","查看评论"],"menu":"游记信息列表","menuJump":"列表","tableName":"youjixinxi"}],"menu":"游记信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
