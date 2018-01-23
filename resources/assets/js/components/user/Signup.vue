<template>
    <div class="row">
        <div class="container text-center">
            <div class="col-md-8 col-sm-offset-2 text-center">
                <form role="form">
                    <!--//表单域-->
                    <fieldset>
                        <!--// 表单中专用的标题标签-->
                        <legend>用户注册</legend>
                        <div class="form-group" :class="{'has-error':errors.has('username')}">
                            <label for="user_name"></label>
                            <input type="text"
                                   v-validate data-vv-rules="required|min:6" data-vv-as="用户名"
                                   v-model="form_data.username" class="form-control" id="user_name"
                                   placeholder="username" name="username" required>
                            <span class="help-block" v-show="errors.has('username')"> {{errors.first('username')}}</span>
                        </div>
                        <div class="form-group" :class="{'has-error':errors.has('password')}">
                            <label for="pass_word"></label>
                            <input type="password"
                                   v-validate data-vv-rules="required|min:6" data-vv-as="密码"
                                   v-model="form_data.password" class="form-control" id="pass_word"
                                   placeholder="password" name="password">
                            <span class="help-block" v-show="errors.has('password')"> {{errors.first('password')}}</span>
                        </div>
                        <div class="form-group" :class="{'has-error':errors.has('email')}">
                            <label for="user_email"></label>
                            <input type="text"
                                   v-validate data-vv-rules="required|email" data-vv-as="邮箱"
                                   v-model="form_data.user_email" class="form-control" id="user_email"
                                   placeholder="user_email" name="email">
                            <span class="help-block" v-show="errors.has('email')"> {{errors.first('email')}}</span>
                        </div>
                        <div class="form-group" :class="{'has-error':errors.has('phone')}">
                            <label for="user_phone"></label>
                            <input type="text"
                                   v-validate data-vv-rules="required|numeric|min:11" data-vv-as="手机号"
                                   v-model="form_data.user_phone" class="form-control" id="user_phone"
                                   placeholder="user_phone" name="phone">
                            <span class="help-block" v-show="errors.has('phone')"> {{errors.first('phone')}}</span>
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
                axios.post('/api/user/signup', this.form_data)
                    .then((r) => {
                        if (r.data.success) {
                            this.reset();
                            this.$router.push({path:'/login'});
                        }
                    })
            },
            reset() {
                this.form_data = {};
            },
        }
    }
</script>

