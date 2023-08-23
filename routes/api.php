<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\UserController;
// use App/Admin\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::group(['namespace' => 'Api'], function(){

    Route::post('/auth/login','UserController@createUser');

    // authentication middleware
    Route::group(['middleware'=>['auth:sanctum']], function(){
        Route::any('/courseList', 'CourseController@courseList');
        Route::any('/courseDetail', 'CourseController@courseDetail');
        Route::any('/checkout', 'PayController@checkout');

    });
    //https://1eeb-102-88-35-202.ngrok-free.app
    Route::any('/web_go_hooks', 'PayController@web_go_hooks');
});


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();


});




