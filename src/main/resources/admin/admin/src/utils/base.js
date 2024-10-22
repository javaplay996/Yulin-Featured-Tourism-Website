const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot8f7p0/",
            name: "springboot8f7p0",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot8f7p0/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "榆林特色旅游网站的设计与实现"
        } 
    }
}
export default base
