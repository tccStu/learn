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
     * 一对多关系
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * A hasMany B
     * demo : user hasMay article
     */
    public function userArticle(){
        $obj = new User();
        $user = $obj->find(1);
        $article = $user->article->toarray();


        print_r($article);
        //return View::make('index');
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
        $obj = new Articles();
        $article = $obj->find(1);
        $user = $article->user->toarray();
        print_r($user);
        echo "\n";
        //动态属性
        echo $article->user->username;

        return view('index');
    }

    /**
     * 预载入
     * 是用来减少 N + 1 查询问题。例如，一个 Book 模型数据会关联到一个 Author
     */
    public function preLoad(){
        //直接读取多有的字段
        //$rows = Article::with('user')->get()->toArray();
        //有选中的读取字段，但是字段中必须包含关联的键
        $rows = Articles::with(['user'=>function($query)
        {
            return $query->select('username','id');

        }])->select('title','user_id')->get()->toArray();

        print_r($rows);

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
        $rows = $obj->find(1)->role->toArray();

        print_r($rows);
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
}
