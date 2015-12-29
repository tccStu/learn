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
        Route::get('job/{id}',['as'=>'view','uses'=>'Note\ArticlesController@jobView']);

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



/*************************************   Collection 集合   ****************************************/
get('c/index','Note\CollectionController@index');

//Eloquent 也是一个Collection对象,并且能够进行where key-value查询
get('c/where','Note\CollectionController@where');

//map 方法，是对Collection 的一次遍历，并且，定义闭包函数，对遍历进行处理
get('c/map','Note\CollectionController@map');

//Collection 数学方法  avg sum  min  max   .....
get('c/math','Note\CollectionController@math');

//对Collection切片，分组
get('c/chunk','Note\CollectionController@chunk');

//
get('c/contains','Note\CollectionController@contains');

// diff        两个一维集合的差集
// intersect   两个一维集合的 交集
// merge       两个集合的 并集,这里不管一维 、二维....都是可以的
get('c/diff','Note\CollectionController@diff');


// 取得  集合中 满足 闭包条件的所有元素的集合
get('c/filter','Note\CollectionController@filter');

// first 取得 集合中 满足 闭包条件的  第一个元素
// last 取得 集合中 满足 闭包条件的  最后一个元素
get('c/first','Note\CollectionController@first');

// 反转 集合元素的 键值对 key/value 变成 value/key
get('c/flip','Note\CollectionController@flip');

// 对集合分页
get('c/page','Note\CollectionController@forPage');

//
get('c/implode','Note\CollectionController@implode');

// 摘取 某个字段的值，生成一个新的集合
get('c/pluck','Note\CollectionController@pluck');



/* ***********************************************    Eloquent    ********************************* */
//groupBy
get('e/get/group','Note\EloquentController@getGroupBy');

get('e/group/get','Note\EloquentController@groupByGet');

//attributes 属性值得设置
get('e/attr','Note\EloquentController@attribute');

//cast 属性 数据类型的 设置
get('e/cast','Note\EloquentController@cast');

//date 日期字段的统一管理 格式 Carbon
get('e/date','Note\EloquentController@dates');

//hidden  结果集中被隐藏的 字段，只有结果集是 Array , Json 的时候才会隐藏
get('e/hidden','Note\EloquentController@hidden');

//批量修改  fillable ,guard
get('e/guard','Note\EloquentController@guard');

//查询作用域 scope
get('e/scope','Note\EloquentController@scope');

//模型事件, 模型黑白名单，create 与 save 的区别
get('e/model/event','Note\EloquentController@modelEvent');

// 软删除 ，表里面需要存在 deleted_at 字段
get('e/soft/del','Note\EloquentController@softDel');





/*************************************   邮件发送   ***********************************************/
//邮件发送，事件发送
get('mail/event','Note\MailController@index');

get('mail/send','Note\MailController@sendMail');

/*************************************  二维码     ***********************************************/
get('qc/index','Note\QrCodeController@index');
