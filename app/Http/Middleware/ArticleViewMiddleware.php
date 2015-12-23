<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Validator;

class ArticleViewMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        //http://tcc.com/article/view/124?name=tcc&no=555555
        /**
         * 在 $request里 更改、或者添加了其他的键值对 key/value后，
         * $request->all()，方法是得不到修改、或者添加的键值对的键或者值，只有单独的反问某个键、才会取得更改、添加键的值
         * 也就是说 $request->all(),始终得到的是 最原始的 请求数据，不会因为中途数据的修改而 改变
         * 在控制器里 也是同样的情况
         */
        //tcc
        debug($request->name);

       if(!$request->has('name')){
           //return redirect('article/index');
           $request->name = 'middleware add name';
       }else{
           $request->name = $request->name.' add tcc1015';
       }
        //name is tcc and tcc1015
        debug('name is '.$request->name);

        $request->att = 'attributes';

        //attributes
        debug($request->att);

        $data = $request->all();
        //['name'=>'tcc','no'=>55555]
        debug($data);



        //
        $validate = self::articleValidate($data);

        if($validate->fails()){
            $msg = $validate->errors()->all();
            debug($msg);
        }

        // String
        //用户名 长度必须在 8 和 20 之间
        $first = $validate->errors()->first('name');
        debug($first);

        // Array
        // [0=>'电子邮件 不能为空']
        $email = $validate->errors()->get('email');
        debug($email);

        // 判断是否 某个字段 的输入请求 存在错误
        if($validate->errors()->has('email')){

        }

        return $next($request);
    }


    /**
     * 一个完整的后台 表单验证 代码
     * @param $data
     * @return mixed
     */
    private static function articleValidate($data){
        $rules = array(
            'email' => 'required|email',
            'name' => 'required|between:8,20',
            'password' => 'required|min:8',
        );
        $message = array(
            "required"             => ":attribute 不能为空",
            "between"      => ":attribute 长度必须在 :min 和 :max 之间"
        );

        $attributes = array(
            "email" => '电子邮件',
            'name' => '用户名',
            'password' => '用户密码',
        );

        $validate = Validator::make($data,$rules,$message,$attributes);


        return $validate;
    }
}
