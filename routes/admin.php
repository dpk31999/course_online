<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register admin routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "admin" middleware group. Now create something great!
|
*/

Route::namespace('Admin')->name('admin.')->group(function () {
    Route::namespace('Auth')->group(function(){
        Route::get('/login', 'LoginController@showLoginForm')->name('login');
        Route::post('/login', 'LoginController@login')->name('excute.login');
        Route::post('/logout','LoginController@logout')->name('logout');
    });
    
    Route::middleware('auth:admin')->group(function () {
        Route::get('/', 'HomeController@index')->name('home');
    });
});