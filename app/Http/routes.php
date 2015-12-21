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



//Collection 集合
get('c/index','Note\CollectionController@index');

//Eloquent 也是一个Collection对象,并且能够进行where key-value查询
get('c/where','Note\CollectionController@where');

//map 方法，是对Collection 的一次遍历，并且，定义闭包函数，对遍历进行处理
get('c/map','Note\CollectionController@map');

//Collection 数学方法  avg sum  min  max  chunk .....
get('c/math','Note\CollectionController@math');

//对Collection切片，分组
get('c/chunk','Note\CollectionController@chunk');


get('c/contains','Note\CollectionController@contains');