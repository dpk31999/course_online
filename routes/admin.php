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

        Route::middleware('isManager')->group(function () {

            Route::name('course.')->group(function(){
                Route::get('/courses','CourseController@index')->name('index');
                // Route::get('/courses/{course}','CourseController@show')->name('show');
                Route::get('/courses/create','CourseController@create')->name('add');
                Route::get('/courses/edit/{course}','CourseController@edit')->name('edit');

                Route::post('/course','CourseController@store')->name('store');
                Route::post('/course/edit/{course}','CourseController@update')->name('update');
                Route::post('/course/{course}','CourseController@delete')->name('delete');
            });
        
        });

        Route::middleware('isAdmin')->group(function () {

            Route::name('manager.')->group(function(){
                Route::get('/managers','ManageController@index')->name('index');
                // Route::get('/managers/{admin}','ManageController@show')->name('show');
                Route::get('/managers/create','ManageController@create')->name('add');
                Route::get('/managers/edit/{admin}','ManageController@edit')->name('edit');
    
                Route::post('/manager','ManageController@store')->name('store');
                Route::post('/manager/edit/{admin}','ManageController@update')->name('update');
                Route::get('/manager/delete/{admin}','ManageController@destroy')->name('delete');
            });

        });

    });
});