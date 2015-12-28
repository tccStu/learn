<?php

namespace App\Http\Controllers\Note;

use App\Models\Articles;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Mockery\Exception;


/**
 * Class EloquentController
 * @package App\Http\Controllers\Note
 *
 * 在 查询 的时候，需要注意每一个方法的返回值 情况，
 * 因为 有些方法是 Eloquent 里面的method, 而有些方法是 Collection 里面的 method
 *
 * 在 Eloquent， Collection 里面 有很多方法的名称是一样的，区别只是返回值的不同，所以这里需要了解每个方法用在什么地方，它的返回值是什么，都要搞清楚
 *
 * 对于我们操作数据库来说，大部分情况 都应该是 先在 Eloquent 里面把你需要查询的条件写完整了，之后再用 Collection 的方法进行操作
 *
 * 如果 Eloquent 查询一半 ，就先对 Collection 操作的话，很有可能 Eloquent 的到的数据量 很大，这样的话 性能降低、还有可能直接 内存溢出
 */
class EloquentController extends Controller
{

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     * 先查询，在分组，这里的groupBy 是 Collection 的方法,
     * 所以数据库里面的所有满足条件的数据都会被先查询出来，然后再按照user_id 进行分组
     */
    public function getGroupBy(){

        $userIds = Articles::select('user_id','title')->get()->groupBy('user_id')->toarray();
        debug($userIds);
        return view('index');

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     * 先分组，在查询，这里的groupBy 是 Eloquent 的方法，
     * 所以是先对user_id 进行分组，然后取出第一条数据
     */
    public function groupByGet(){

        $rows = Articles::select('user_id','title')->groupBy('user_id')->get()->toarray();

        debug($rows);

        //取得分组后，每一组的数据条数
        //$num = Articles::select(DB::Raw('user_id, count( id ) as num '))->groupBy('user_id')->get()->toarray();
        //select count(id) as num group by `user_id` from `article`

        //随机取得2个不同的user_id
        //$ids = Articles::all()->unique('user_id')->random(2)->lists('user_id');
        $ids = Articles::distinct()->lists('user_id')->random(2);

        /**
         *  取得所有的不同的user_id,2中方式，Eloquent 、Collection
         *  下面两条语句中，第一条是 Collection 方式
         *   第二条是  Eloquent 方式
         *  如果只是单存的为了取得 user_id,建议用 Eloquent,特别是在数据量大的时候，这样占用的内存会少很多
        */
        //$userIds = Articles::all()->unique('user_id')->lists('user_id');
        $userIds = Articles::distinct()->lists('user_id');



        debug($ids);

        return view('index');
    }

    /**
     * 字段的属性设置，显示
     */
    public function attribute(){
        $row = Articles::findOrNew(1);

        //这里会调用 Articles 里面的  getTitleAttribute  方法
        $title = $row->title;

        debug($title);

        //这里会调用 Articles 里面的  setTitleAttribute  方法
        $row->title = 'TANGmm';

        debug($row);

        return view('index');
    }

    /**
     * 字段类型 的转换
     *
     * 这里 是根据在 Model 里面定义的 $casts 属性
     * 实现对 从数据库 查询出来的 某些字段的 类型的 转换
     */
    public function cast(){
        $id = 1;
        $row = Articles::findOrNew($id);

        //status 字段转换成bool
        if($row->status){
            debug('status is casted to bool and is true');
        }else{
            debug('status is casted to bool and is false');
        }

        //content 转换成array  但是在 存入数据库的时候，会以 json 存入
        $content = $row->content;
        debug($row);
        //如果不是array 类型的话，会输出 null
        debug($content);

        $content['key'] = 'content is casted to array if save to the database, it will be serialized back into JSON for storage '.$id;
        $row->content = $content;

        $row->save();

        return view('index');
    }


    /**
     * 日期 字段 的 格式的定义
     *
     * 这里 是根据在 Model 里面定义的 $dates 里面的字段，
     * 这些字段在从数据库取出来后，显示的格式 都是 Carbon
     * 写入数据库的时候，这些 字段也会以 Carbon 格式写入
     */
    public function dates(){
        $row = Articles::findOrNew(3);

        debug($row->created_at);
        debug($row->created_at->getTimestamp());

        $row->created_at = 1430996379;

        $row->save();

        return view('index');
    }

    /**
     *  Model  里面的 $hidden 属性，定义了在查询的结果集中被隐藏的字段
     */
    public function hidden(){
        $obj = new Articles();
        $row = $obj->where('user_id',1)->get()->toarray();

        debug($row);

        return view('index');
    }

    /**
     * guard 属性定义的 字段 不能被批量修改，如果fillable 属性没有定义字段的话，那么其它所有的字段都能够修改
     *
     * fillable 属性定义的 字段 能够被批量修改，其它属性都是不能被批量修改的,不管guard 属性 是否定义了其他的 字段
     *
     */
    public function guard(Request $request){
        $row = Articles::find(10);

        debug($row->toArray());

        $title = $request->input('title');
        $content = ['guard'=>$request->input('content')];
        //$row->title = $title;
        //$row->content = $content;
        //$row->status = 1;
        //$data = ['title'=>$title,'content'=>$content,'status'=>1];
        $data = ['title'=>$title,'status'=>1];

        $re = $row->update($data);

        debug($re);

        return view('index');
    }


    /**
     * 查询作用域 scope
     *
     * 实际就是对一些查询条件的封装
     *
     */
    public function scope(){
        $obj = new Articles();
        //这里的 popular 方法，实际上是 scopePopular 方法
        $popular = $obj->popular()->orderBy('id')->get();

        debug($popular);

        return view('index');
    }

    public function modelEvent(){
        $data = ['title'=>'Model Event',
            'content'=>'the model event can be declaration in model boot method',
        'user_id'=>3,
        'click_num'=>99];

        try{
            Articles::create($data);

        }catch(Exception $e){
            debug($e->getMessage());
        }

        $obj = Articles::create($data);

        debug($obj->toArray());

        return view('index');
    }

}
