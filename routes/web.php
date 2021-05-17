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

Route::namespace('Student')->prefix('profile')->name('student.')->group(function(){

    Route::get('/','HomeController@index')->name('home');

    Route::name('account.')->group(function(){
        Route::get('/account/profile','AccountController@showFormUpdateProfile')->name('edit-profile');
        Route::post('/account/profile','AccountController@updateProfile')->name('update-profile');
    
        Route::get('/account/password','AccountController@showFormUpdatePassword')->name('edit-password');
        Route::post('/account/password','AccountController@updatePassword')->name('update-password');
    });

    Route::name('notification.')->group(function(){
        Route::get('/notification','NoteController@index')->name('index');

    });
});

