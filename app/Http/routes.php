<?php

get('/', function () {
    return view('index');
});

Route::controllers([
    'auth'=>'Auth\AuthController',
    'password'=>'Auth\PasswordController',
]);
get('home/index','BaseController@index');


//Relationships
//一对多
Route::any('r/has/many',['uses'=>'Note\RelationshipsController@userArticle']);

Route::any('r/belongs/to',['uses'=>'Note\RelationshipsController@articleUser']);
//多对多
Route::any('r/many',['uses'=>'Note\RelationshipsController@userRole']);

Route::any('r/manys',['uses'=>'Note\RelationshipsController@roleUser']);
//远层一对多关联
Route::any('r/through',['uses'=>'Note\RelationshipsController@through']);

//多态关联
Route::any('r/morph',['uses'=>'Note\RelationshipsController@morph']);

Route::any('r/morph/to',['uses'=>'Note\RelationshipsController@morphTo']);


Route::any('r/pre/load',['uses'=>'Note\RelationshipsController@preLoad']);