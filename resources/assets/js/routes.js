// 引入VueRouter
import VueRouter from 'vue-router';
//定义路由
let routes = [
    {path: '/', component: require('./components/firstContect')},
    {path: '/signup', component: require('./components/Signup.vue')},
    {path: '/login', component: require('./components/Login.vue')},
    {path: '/logout', component: require('./components/Logout.vue')},
    {path: '/admin/house', component: require('./components/AdminHouse.vue')}
];
//实例化一个路由

export default new VueRouter({
    mode:'history',
    routes
})


