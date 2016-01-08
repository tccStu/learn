<?php

namespace App\Http\Controllers\Note;

use App\Models\Articles;
use App\Models\Business;
use App\Models\Goods;
use App\Models\Images;
use App\Models\Roles;
use App\Models\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class RelationshipsController extends Controller
{

    /**
     *  所有模型里面模型的定义名称
     *  本模型：A
     *  关联模型：B
     *  本模型与关联模型的中间模型：C
     *
     *  比如所在User模型里面，A 就是User 模型， 在article() function 中，B 模型 就是 Article
     *
     *
     */


    /**
     * 一对多关系
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A hasMany B
     * demo : user hasMay article
     */
    public function userArticle(){
        //一条语句
        $article = User::find(1)->article;

        //多条语句
       /* $obj = new User();
        $user = $obj->find(1);
        $article = $user->article->toarray();*/


        debug($article);

        return view('index');
    }

    /**
     * 一对多关系
     *  动态属性(还可以在一对一关系里面使用)
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A hasMany B
     * demo : user hasMay article
     */
    public function articleUser(){

        //一条语句
        $user = Articles::find(1)->user;

        //多条语句
        $obj = new Articles();
        $article = $obj->find(1);
        $user = $article->user;

        debug($user);
        //动态属性
        debug($article->user->username);

        return view('index');
    }

    /**
     * 预载入
     * 是用来减少 N + 1 查询问题
     *
     * 这里的 user 为Articles 模型里面的 user() 方法
     */
    public function preLoad(){
        //直接读取所有的字段
        $rows = Articles::with('user')->get()->toArray();

        //有选中的读取字段，但是字段中必须包含关联的键

        $rows = Articles::with(['user'=>function($query)
        {
            return $query->select('username','id');

        }])->select('title','user_id')->get()->toArray();



        debug($rows);

        return view('index');
    }

    /**
     * 多对多关系
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * 与function roleUser() 对应
     * A hasMany/hasOne B and B hasMany/hasOne A
     */
    public function userRole(){
        $obj = new User();
        $role = $obj->find(1)->role;

        /**
         *  使用枢纽表  pivot
         *  在查询结果集中 使用枢纽表 被定义为 pivot 属性，它包含了 枢纽表 的所有字段
         *  demo:users_id,role_id
         *
         *  如果是已 Object 的形式处理数据  那么被定义的属性为 pivot_枢纽表 的所有字段
         *  demo:pivot_users_id,pivot_role_id
         *
         *  如果是已 Array 的形式处理数据  那么背定义的属性为 pivot ,但是它是一个数组 包含 枢纽表 的所有字段
         *  demo: pivot=>array('users_id','role_id')
         *
         */
        debug($role);
        foreach($role as $key=>$val){
            debug($val->pivot->users_id);
            debug($val->pivot->role_id);
        }

        debug($role->toarray());

        return view('index');
    }

    /**
     * 多对多关系
     * 与function userRole（） 对应
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A hasMany/hasOne B and B hasMany/hasOne A
     */
    public function roleUser(){
        $obj = new Roles();
        $rows = $obj->find(1)->user->toarray();
        print_r($rows);

        return view('index');
    }

    /**
     * 远层一对多关联
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * 商家表
     * 商品表
     * 订单表
     * 通过商家直接查找订单
     * A hasMany/hasOne B, B hasMany/hasOne C, then A hasManyThrough C (through B)
     */
    public function through(){
        $obj = new Business();
        $rows = $obj->find(1)->order;

        print_r($rows);

        return view('index');
    }

    /**
     * 多态关联
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A model relation B model  and  A model relation C model
     * demo:ImagesModel  User Goods
     * 从 B OR C 读取 A model 的字段值
     */
    public function morph(){
        $obj = new User();
        //$rows = $obj->find(1)->images->toarray();
        $rows = $obj->where('id',1)->iamges->select('id')->toarray();
        print_r($rows);

        $obj = new Goods();
        $rows = $obj->find(1)->images->toarray();
        print_r($rows);
        return view('index');
    }

    /**
     * 多态关联
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A model relation B model  and  A model relation C model
     * demo:ImagesModel  User Goods
     * 从 A model 读取 B OR C 的字段值
     */
    public function morphTo(){
        $obj = new Images();
        $rows = $obj->find(1)->relation->toarray();
        print_r($rows);
        return view('index');
    }


    /**
     * 关联查询
     *
     *  article 为 User 模型 里面的 article() 方法
     *
     */
    public function queryRelation(){
        //select `username` from `tcc_users` where (select count(*) from `article` where `article`.`user_id` = `tcc_users`.`id`) > 5
        $user = User::has('article','>',5)->select('username')->get();
        debug($user);

        $user = User::whereHas('article', function($query)
        {
            $query->where('content', 'like', '%content%');

        })->get();

        debug($user);

        return view('index');
    }
}
