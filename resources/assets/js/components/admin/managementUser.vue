<template>
    <div class="table-responsive col-md-12 clearfix">
        <table class=" table table-hover table-bordered table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>CreateTime</th>
                <th>Permission</th>
                <th>Operation</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="item in list">
                <td>{{item.id}}</td>
                <td>{{item.username}}</td>
                <td>{{item.user_email}}</td>
                <td>{{item.created_at}}</td>
                <td>{{item.permission}}</td>
                <td>
                    <button data-toggle="modal" data-target="#modal1" @click="fill_form(item)">更新</button>
                    <button @click="del(item.id)">删除</button>
                </td>
            </tr>
            </tbody>
        </table>
        <ul class="pager">
            <li><a href="#" @click="top_page">Previous</a></li>
            <li><a href="#" @click="next_page">Next</a></li>
        </ul>
        <div class="modal fade" id="modal1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">更新user</h4>
                    </div>
                    <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="contact_name" class="col-xs-2 control-label">联系人: </label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.permission" id="contact_name"
                                               class="form-control">
                                    </div>
                                </div>
                            </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dixsiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" @click="update">更新</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        mounted() {
            this.get_data_number();
            this.read();
        },
        data() {
            return {
                house: {},
                list: [],
                row: {
                    page: 1,
                },
                data_number: ''
            }
        },
        methods: {
            read() {
                axios.post('/api/user/read', this.row)
                    .then((r) => {
                        this.list = r.data.data.data;
                    })
            },
            fill_form(data) {
                this.house = data;
            },
            update() {
                axios.post('/api/user/update', this.house)
                    .then((r) => {
                        $('#modal1').modal('hide');
                    })
            },
            del(id) {
                axios.post('/api/user/remove', {'id': id})
                    .then((r) => {
                        this.read();
                    })
            },
            next_page() {
                if (this.row.page < Math.ceil((this.data_number) / 10)) {
                    this.row.page++;
                    this.read();
                }
                return;
            },
            top_page() {
                if (this.row.page < 2) {
                    return;
                } else {
                    this.row.page--;
                    this.read();
                }
            },
            //获取表中数据的总数
            get_data_number: function () {
                axios.post('/api/user/number')
                    .then((r) => {
                        this.data_number = r.data;
                    })
            },
        }
    }
</script>