<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    public $error;

    public function __construct($model)
    {
        $model = '\App\\' . ucfirst($model);
        $this->model = new $model;
    }

    //增加
    public function add()
    {
        return $this->model->fill(request()->toArray())->save() ? suc($this->model->id) : err('internal_error');
    }

    //读取
    public function read()
    {
        return $this->model->simplePaginate(12) ? suc($this->model->simplePaginate(12)) : err('internal_error');
    }

    //删除
    public function remove()
    {
        $id = request('id');
        if (!$id) {
            return err('invalid_id');
        }
        return $this->model->where('id', $id)->delete() ? suc($id) : err('internal_error');
    }

    //更新
    public function update()
    {
        //更新需要先找到这条数据
        $id = request('id');
        $a = $this->model->where('id', $id)->first();
        if ($a) {
            return $this->model->where('id', $id)->update(request()->toArray()) ? suc($this->model->id) : err('internal_error');
        }
        return err('invalid_id');
    }
    //获取所有数据的总数
    public function number(){
       return $this->model->count();
    }
    //验证规则
    public function validate_rule($rule_arr)
    {

        $V = Validator::make(request()->toArray(), $rule_arr);
        if ($V->fails()) {
            $this->error = $V->errors();
            return false;
        }
        return true;
    }

    //返回错误信息
    public function s_error()
    {
        return err($this->error);
    }
}
