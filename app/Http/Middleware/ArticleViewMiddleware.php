<?php

namespace App\Http\Middleware;

use Closure;

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
        /*debug('view handle');*/
       /*if(!$request->has('id')){
           return redirect('article/index');
       }else{
           debug($request->id);
       }*/
        debug($request->name);
        //debug($a);
        return $next($request);
    }
}
