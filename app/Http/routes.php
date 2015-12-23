<?php

get('/', function () {
    return view('index');
});

Route::controllers([
    'auth'=>'Auth\AuthController',
    'password'=>'Auth\PasswordController',
]);
get('home/index','BaseController@index');

//get('article/index','Note\ArticlesController@index');

//调用Middleware 的方法，控制器的__construct() 里面  或 路由
//get('article/view/{id}','Note\ArticlesController@view');
//get('article/view/{id}','Note\ArticlesController@view')->middleware('article.view');

//路由组 在group 里面  prefix代表路由前缀,  as代表别名前缀
Route::group(['prefix'=>'article','as=>article.','middleware'=>'article.view'], function (){
        Route::get('index',['as'=>'index','uses'=>'Note\ArticlesController@index']);
        //'url'=>article/index,  'as'=>'article.index'
        Route::get('view/{id}',['as'=>'view','uses'=>'Note\ArticlesController@view']);
        //'as'=>'article.view'
});


//路由参数 ？代表可选，需要加入默认值
get('param/{id?}',function($id = 1){
    return 'param is id and id = '.$id;
});

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