<template>
    <div class="row">
        <div class="container">
            <div class="col-md-2 left_nav">
                <ul class="nav nav-pills nav-stacked">
                    <li> <router-link to="/admin/house/fill">填写表单</router-link></li>
                    <li> <router-link to="/admin/house/see">查看表单</router-link></li>
                    <li class="disabled"> <router-link to="/admin/house/see">管理用户</router-link></li>
                </ul>
            </div>
            <div class="col-md-10">
                <router-view></router-view>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>