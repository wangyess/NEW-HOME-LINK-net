<template>
    <div class="row">
        <div class="container text-center">
            <div class="col-md-8 col-sm-offset-2 text-center">
                <fieldset>
                    <legend>用户登录</legend>
                    <div class="form-group text-left">
                        <label for="user_name">用户名:</label>
                        <input type="text" v-model="form_data.username" class="form-control" id="user_name"
                               placeholder="username">
                    </div>
                    <div class="form-group text-left">
                        <label for="user_password">密码:</label>
                        <input type="text" v-model="form_data.password" class="form-control" id="user_password"
                               placeholder="password">
                    </div>
                </fieldset>
                <button type="button" @click="submit_form" name="button" class="btn btn-info btn-block">提交</button>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        data() {
            return {
                form_data: {}
            }
        },
        methods: {
            submit_form() {
                axios.post('/api/user/login', this.form_data)
                    .then((r) => {
                        if (r.data.success) {
                            alert('你已经成功登录');
                            this.form_data = {};
                            this.$router.push({path: '/'});
                        }
                    })
            }
        }
    }
</script>