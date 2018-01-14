
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
//前端验证

import Vue from 'vue';
import VeeValidate from 'vee-validate';

Vue.use(VeeValidate);

//引用 VueRouter  并告诉vue  使用VueRouter
import VueRouter from 'vue-router';
//将路由文件引入进来
import router from './routes';
Vue.use(VueRouter);


// Vue.component('example-component', require('./components/Signup.vue'));

const app = new Vue({
    el: '#app',
    router,
    mounted(){
        console.log(router);
}
});
