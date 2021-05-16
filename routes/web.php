<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','HomeController@index')->name('home');

//auth
Auth::routes();

//register course
Route::get('/registerCourse/{course}','CourseController@showFormRegisterCourse')->name('register-course');
Route::post('/registerCourse/{course}','CourseController@create')->name('register-course.store');

Route::name('setting.')->group(function(){
    Route::get('/setting/profile','SettingController@showFormUpdateProfile')->name('edit-profile');
    Route::post('/setting/profile','SettingController@updateProfile')->name('update-profile');

    Route::get('/setting/password','SettingController@showFormUpdatePassword')->name('edit-password');
    Route::post('/setting/password','SettingController@updatePassword')->name('update-password');
});
