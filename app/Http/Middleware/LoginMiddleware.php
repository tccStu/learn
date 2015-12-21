<?php

namespace App\Http\Middleware;

use Closure;

class LoginMiddleware
{
    /**
     * MiddleWare就是在请求发送之后到应用程序响应之前所完成的一系列业务逻辑。
     *
     * php artisan make:middleware LoginMiddleware
     */

    /**
     * laravel5提供了两种方法使用中间件，都是在App\Http\Kernel文件中配置：
     * kernel文件中有两个配置选项middleware和routeMiddleware，
     * middleware配置选项将会应用到每个request请求，
     * routeMiddleware只是针对某些路由适用，这里只是配置了别名
     *
     * 注意在middleWare中默认启动的选项中有VerifyCsrfToken,就标志了在laravel5之后对每一个post请求都会做csrf处理
     */

    /**
     * middleware 在哪里使用
     *
     * 1. 在路由中使用
     *    单个路由 get('/home/index','BaseController@index',['middle'=>'auth.login']) 这里的auth.login 就是LoginMiddleware 的别名  在kennel 里面定义的
     *    路由组 $router->group(['middleware' => 'auth.login'], function() { echo 'test'});
     *
     * 2. 在控制器中使用
     *  在控制器方法中  调用 $this->middleware('auth.login', ['only' => 'update'])
     *
     */


    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        /**
         *
         * Closure（匿名函数）用来处理通过中间件下一步需要执行的函数。
         */
        //业务逻辑处理


        return $next($request);
    }
}
