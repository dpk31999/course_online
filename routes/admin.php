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
                Route::get('/courses/create','CourseController@create')->name('add');
                Route::get('/courses/edit/{course}','CourseController@edit')->name('edit');

                Route::post('/courses','CourseController@store')->name('store');
                Route::post('/courses/edit/{course}','CourseController@update')->name('update');
                Route::get('/courses/delete/{course}','CourseController@destroy')->name('delete');
            });

            Route::name('class.')->group(function(){
                Route::get('/classes','ClassController@index')->name('index');
                Route::get('/classes/create','ClassController@create')->name('add');
                Route::get('/classes/edit/{class}','ClassController@edit')->name('edit');

                Route::post('/classes','ClassController@store')->name('store');
                Route::post('/classes/edit/{class}','ClassController@update')->name('update');
                Route::get('/classes/delete/{class}','ClassController@destroy')->name('delete');
            });

            Route::name('question.')->group(function(){
                Route::get('/questions','QuestionController@index')->name('index');
                Route::get('/questions/create','QuestionController@create')->name('add');
                Route::get('/questions/edit/{question}','QuestionController@edit')->name('edit');

                Route::post('/questions','QuestionController@store')->name('store');
                Route::post('/questions/edit/{question}','QuestionController@update')->name('update');
                Route::get('/questions/delete/{question}','QuestionController@destroy')->name('delete');
            });

            Route::name('student.')->group(function(){
                Route::get('/students','StudentController@index')->name('index.manager');
                Route::get('/students/{user}','StudentController@show')->name('show');
            });
        
        });

        Route::middleware('isAdmin')->group(function () {

            Route::name('manager.')->group(function(){
                Route::get('/managers','ManageController@index')->name('index');
                Route::get('/managers/create','ManageController@create')->name('add');
                Route::get('/managers/edit/{admin}','ManageController@edit')->name('edit');
    
                Route::post('/manager','ManageController@store')->name('store');
                Route::post('/manager/edit/{admin}','ManageController@update')->name('update');
                Route::get('/manager/delete/{admin}','ManageController@destroy')->name('delete');
            });

            Route::name('student.')->group(function(){
                Route::get('/studentRegister','StudentController@indexRegister')->name('index.admin');
        
                Route::get('/studentRegister/allow/{user}','StudentController@allow')->name('allow');
                Route::get('/studentRegister/refuse/{user}','StudentController@refuse')->name('refuse');

                Route::get('/resetPassword','StudentController@indexResetPassword')->name('index.reset.admin');

                Route::get('/resetPassword/allow/{user}','StudentController@resetAllow')->name('reset.allow');

            });

        });

    });
});