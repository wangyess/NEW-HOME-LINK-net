<?php

use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::any('/{model}/{action}',function ($model,$action){
    //通过命名空间找到 对应的控制器 new一下  进入控制器
    $klass= '\App\Http\Controllers\\'.ucfirst($model).'Controller';
    $klass = new $klass($model);
    return $klass->$action();
});
