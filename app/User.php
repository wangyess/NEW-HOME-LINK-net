<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    //忽略ID
    protected $guarded=['id'];
    protected $table='user';
    //只添加这里面定义的字段  你传多少都不会添加
    protected $fillable=['username','password','user_phone','user_email'];
}
