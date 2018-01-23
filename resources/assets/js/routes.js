// 引入VueRouter
import VueRouter from 'vue-router';
//定义路由
let routes = [
    {path: '/', component: require('./components/homeContent/firstContect')},
    {path: '/signup', component: require('./components/user/Signup.vue')},
    {path: '/login', component: require('./components/user/Login.vue')},
    {path: '/logout', component: require('./components/user/Logout.vue')},
    {path: '/admin/house', component: require('./components/admin/AdminHouse.vue'),
        children: [
            {
                path: 'fill',
                component: require('./components/admin/Fillform.vue')
            },
            {
                path: 'see',
                component: require('./components/admin/SeeForm.vue')
            },
            {
                path: 'user',
                component: require('./components/admin/managementUser.vue')
            }
            ]
    },
];
//实例化一个路由

export default new VueRouter({
    mode:'history',
    routes
})


