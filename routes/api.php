<?php

use Illuminate\Http\Request;
Use App\Films;

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

Route::middleware('cors')->post('register', 'Auth\RegisterController@register');
Route::middleware('cors')->post('login', 'Auth\LoginController@login');
Route::middleware('cors')->post('logout', 'Auth\LoginController@logout');

Route::middleware('cors')->get('films', 'FilmsController@index');
Route::middleware('cors')->get('films/{film}', 'FilmsController@show');
Route::middleware('cors')->post('films', 'FilmsController@store');
Route::middleware('cors')->put('films/{film}', 'FilmsController@update');
Route::middleware('cors')->delete('films/{article}', 'FilmsController@delete');
Route::middleware('cors')->middleware('auth:api')->post('comment', 'CommentsController@store');