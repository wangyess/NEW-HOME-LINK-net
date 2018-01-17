<template>
    <div class="table-responsive col-md-12 clearfix">
        <table class=" table table-hover table-bordered table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Create-Time</th>
                <th>Update-Time</th>
                <th>Operation</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="item in list">
                <td>{{item.id}}</td>
                <td>{{item.title}}</td>
                <td>{{item.created_at}}</td>
                <td>{{item.updated_at}}</td>
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
                        <h4 class="modal-title" id="myModalLabel">更新表单</h4>
                    </div>
                    <div class="modal-body">
                        <div class="modal_div">
                            <form>
                                <div class="form-group">
                                    <label for="title" class="col-xs-2 control-label">标题:</label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.title" id="title" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="subtitle" class="col-xs-2 control-label">副标题:</label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.subtitle" id="subtitle" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="root_count" class="col-xs-2 control-label">户型: </label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.room_count" id="root_count"
                                               class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="area" class="col-xs-2 control-label">面积:</label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.area" id="area" class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="direction" class="col-xs-2 control-label"> 朝向:</label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.direction" id="direction"
                                               class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="community" class="col-xs-2 control-label"> 小区:</label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.community" id="community"
                                               class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="radio">
                                    <label class="col-xs-2 control-label">装修:</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="zhuang" value="true" v-model="house.decoration">已装修
                                        </label>
                                        <label>
                                            <input type="radio" name="zhuang" value="false" v-model="house.decoration">未装修
                                        </label>
                                    </div>
                                </div>
                                <div class="radio">
                                    <label class="col-xs-2 control-label">供暖:</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gong" value="true" v-model="house.heat_supply"> 有
                                        </label>
                                        <label>
                                            <input type="radio" name="gong" value="false" v-model="house.heat_supply">
                                            没有
                                        </label>
                                    </div>
                                </div>
                                <div class="radio">
                                    <label class="col-xs-2 control-label">电梯:</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="dian" value="true" v-model="house.elevator"> 有
                                        </label>
                                        <label>
                                            <input type="radio" name="dian" value="false" v-model="house.elevator"> 没有
                                        </label>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="detail" class="col-xs-2 control-label">详细介绍:</label>
                                    <div class="col-xs-10">
                                <textarea class="form-control" id="detail" cols="30" rows="2"
                                          v-model="house.detail"></textarea>
                                        <br>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="contact_name" class="col-xs-2 control-label">联系人: </label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.contact_name" id="contact_name"
                                               class="form-control">
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="contact_phone" class="col-xs-2 control-label">电话: </label>
                                    <div class="col-xs-10">
                                        <input type="text" v-model="house.contact_phone" id="contact_phone"
                                               class="form-control">
                                    </div>
                                </div>
                            </form>
                        </div>
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
                axios.post('/api/house/read', this.row)
                    .then((r) => {
                        this.list = r.data.data.data;
                    })
            },
            fill_form(data) {
                this.house = data;
            },
            update() {
                axios.post('/api/house/update', this.house)
                    .then((r) => {
                        $('#modal1').modal('hide');
                    })
            },
            del(id) {
                axios.post('/api/house/remove', {'id': id})
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
                axios.post('/api/house/number')
                    .then((r) => {
                        this.data_number = r.data;
                    })
            },
        }
    }
</script>