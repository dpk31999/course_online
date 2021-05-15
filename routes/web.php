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
Route::get('/registerCourse','Auth\RegisterController@showFormRegisterCourse')->name('registercourse');
Route::post('/registerCourse','Auth\RegisterController@create');
