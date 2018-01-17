<template>
    <div class="row">
        <div class="container">
            <div class="col-md-8 col-sm-offset-2 text-center">
                <h1>吃干抹净了吗?</h1>
                <p>你确定要离开了吗?</p>
                <p>就是这样抛下我吗?</p>
                <p>以后被欺负了怎么办?</p>
                <button @click="go_away" class="btn btn-danger">去意已决</button>
                <button @click="go_back" class="btn btn-success">考虑一下</button>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        methods: {
            go_back() {
                this.$router.push({path: '/'});
            },
            go_away() {
                axios.post('/api/user/logout')
                    .then((r) => {
                        if (r.data.success) {
                            alert('你已经成功退出');
                            this.$router.push({path: '/'});
                        }
                    })
            }
        }
    }
</script>