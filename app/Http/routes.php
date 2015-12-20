<?php

get('/', function () {
    return view('index');
});

Route::controllers([
    'auth'=>'Auth\AuthController',
    'password'=>'Auth\PasswordController',
]);
get('home/index','BaseController@index');