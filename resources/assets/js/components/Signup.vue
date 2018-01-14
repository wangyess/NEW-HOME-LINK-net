<template>
    <div class="row">
        <div class="container text-center">
            <div class="col-md-8 col-sm-offset-2 text-center">
                <form action="" role="form">
                    <!--//表单域-->
                    <fieldset>
                        <!--// 表单中专用的标题标签-->
                        <legend>用户注册</legend>
                        <div class="form-group">
                            <label for="user_name"></label>
                            <input type="text" v-model="form_data.username" class="form-control" id="user_name"
                                   placeholder="username">
                            <p class="help-block">可以是数字、字符、文字等</p>
                        </div>
                        <div class="form-group">
                            <label for="pass_word"></label>
                            <input type="password" v-model="form_data.password" class="form-control" id="pass_word"
                                   placeholder="password">
                            <p class="help-block">密码不能少于6位</p>
                        </div>
                        <div class="form-group">
                            <label for="user_email"></label>
                            <input type="text" v-model="form_data.user_email" class="form-control" id="user_email"
                                   placeholder="user_email">
                            <p class="help-block">请输入邮箱\选填</p>
                        </div>
                        <div class="form-group">
                            <label for="user_phone"></label>
                            <input type="text" v-model="form_data.user_phone" class="form-control" id="user_phone"
                                   placeholder="user_phone">
                            <p class="help-block">请输入手机号\选填</p>
                        </div>
                    </fieldset>
                    <button type="button" @click="submit_form" name="button" class="btn btn-info btn-block">提交</button>
                </form>
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
                form_data: {},

            }
        },
        methods: {
            submit_form(e) {
                e.preventDefault();
                console.log(this.form_data);
                axios.post('/api/user/signup', this.form_data)
                    .then((r) => {
                        if (r.data.success) {
                            this.form_data = {};
                        }
                    })
            },
            reset() {
                this.form_data = {};
            }
        }
    }
</script>

