<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class UserController extends ApiController
{
    public $rules = [
        'username' => 'required|unique:user|between:3,24',
        'password' => 'required|between:6,32',
    ];

    public function signup()
    {
        //验证规则
        if (!$this->validate_rule($this->rules)) {
            return $this->s_error();
        };
        //给密码加密
        $data = request()->toArray();
        //判断是否有权限字段 有就删掉
//        if(@$data['permission']){
//            unset($data['permission']);
//        }

        $data['password'] = Hash::make($data['password']);
        return $this->model->fill($data)->save() ? suc('您已经注册成功') : err('internal_error');
    }

    public function login()
    {
        $user = $this->model->where('username', request('username'))->first();
        if (!$user) {
            return err('invalid_username');
        }
        //检查密码是否匹配
        if (Hash::check(request('password'), $user['password'])) {
            session(['user' => $user]);
            return suc('成功登陆');
        }
        return err('invalid_password');
    }

    public function logout()
    {
       session()->pull('user');
       if(session()->has('user')){
           return err('internal_error');
       }
       return suc('你已经成功推出');
    }

    public function islogin()
    {
        if (session()->has('user')) {
            if (request('want')) {
                return suc(session('user')->all(request('want')));
            }
            return suc('你已经成功登陆');
        }
        return err('未登录');
    }
}
