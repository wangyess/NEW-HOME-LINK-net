<template>
    <div class="col-md-10">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="title" class="col-md-2 control-label">标题:</label>
                <div class="col-md-10">
                    <input type="text" v-model="house.title" id="title" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="subtitle" class="col-md-2 control-label">副标题:</label>
                <div class="col-md-10">
                    <input type="text" v-model="house.subtitle" id="subtitle" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="root_count" class="col-md-2 control-label">户型: </label>
                <div class="col-md-10">
                    <input type="text" v-model="house.room_count" id="root_count" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="area" class="col-md-2 control-label">面积:</label>
                <div class="col-md-10">
                    <input type="text" v-model="house.area" id="area" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="direction" class="col-md-2 control-label"> 朝向:</label>
                <div class="col-md-10">
                    <input type="text" v-model="house.direction" id="direction" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="community" class="col-md-2 control-label"> 小区:</label>
                <div class="col-md-10">
                    <input type="text" v-model="house.community" id="community" class="form-control">
                </div>
            </div>
            <div class="radio">
                <label class="col-md-2 control-label">装修:</label>
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
                <label class="col-md-2 control-label">供暖:</label>
                <div class="radio">
                    <label>
                        <input type="radio" name="gong" value="true" v-model="house.heat_supply"> 有
                    </label>
                    <label>
                        <input type="radio" name="gong" value="false" v-model="house.heat_supply"> 没有
                    </label>
                </div>
            </div>
            <div class="radio">
                <label class="col-md-2 control-label">电梯:</label>
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
                <label for="detail" class="col-md-2 control-label">详细介绍:</label>
                <div class="col-md-10">
                    <textarea class="form-control" id="detail" cols="30" rows="2" v-model="house.detail"></textarea>
                    <br>
                </div>
            </div>
            <div class="form-group">
                <label for="contact_name" class="col-md-2 control-label">联系人: </label>
                <div class="col-md-10">
                    <input type="text" v-model="house.contact_name" id="contact_name" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="contact_phone" class="col-md-2 control-label">电话: </label>
                <div class="col-md-10">
                    <input type="text" v-model="house.contact_phone" id="contact_phone" class="form-control">
                </div>
            </div>
            <button type="button" @click="kk" class="btn btn-success btn-block">提交</button>
        </form>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        data() {
            return {
                house: {}
            }
        },
        methods: {
            kk() {
                axios.post('/api/house/add', this.house)
                    .then((r) => {
                      this.reset
                    })
            },
            reset(){
                this.house={};
            }
        }
    }
</script>