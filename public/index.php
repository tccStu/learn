<?php

/**
 * Laravel - A PHP Framework For Web Artisans
 *
 * @package  Laravel
 * @author   Taylor Otwell <taylorotwell@gmail.com>
 */

/*
|--------------------------------------------------------------------------
| Register The Auto Loader
|--------------------------------------------------------------------------
|
| Composer provides a convenient, automatically generated class loader for
| our application. We just need to utilize it! We'll simply require it
| into the script here so that we don't have to worry about manual
| loading any of our classes later on. It feels nice to relax.
|
*/

require __DIR__.'/../bootstrap/autoload.php';

/*
|--------------------------------------------------------------------------
| Turn On The Lights
|--------------------------------------------------------------------------
|
| We need to illuminate PHP development, so let us turn on the lights.
| This bootstraps the framework and gets it ready for use, then it
| will load up this application so that we can run it and send
| the responses back to the browser and delight our users.
|
*/
/**
 * 首先是 服务容器的绑定
 * 1.建立服务容器  Illuminate\Foundation\Application
 * 2.绑定  'App\Http\Kernel'  到 'Illuminate\Contracts\Http\Kernel',
 */
$app = require_once __DIR__.'/../bootstrap/app.php';

/*
|--------------------------------------------------------------------------
| Run The Application
|--------------------------------------------------------------------------
|
| Once we have the application, we can handle the incoming request
| through the kernel, and send the associated response back to
| the client's browser allowing them to enjoy the creative
| and wonderful application we have prepared for them.
|
*/
/**
 * 容器的如何使用
 * 当call $app->make(Illuminate\Contracts\Http\Kernel::class); 的时候，实际上会建立App\Http\Kernel 的实例
 * make  方法在 Container 里面
 */
$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);


/**
 * 'Illuminate\Foundation\Bootstrap\DetectEnvironment',
'Illuminate\Foundation\Bootstrap\LoadConfiguration',
'Illuminate\Foundation\Bootstrap\ConfigureLogging',
'Illuminate\Foundation\Bootstrap\HandleExceptions',
'Illuminate\Foundation\Bootstrap\RegisterFacades',
'Illuminate\Foundation\Bootstrap\RegisterProviders',
'Illuminate\Foundation\Bootstrap\BootProviders',
 */
/**
 *  对上面的array 里面的多有的 文件进行配置、绑定
 * example : 'Illuminate\Foundation\Bootstrap\RegisterProviders',  就会对所有的 config/app.php 里面的 providers 进行绑定
 */
/**
 * App\Illuminate\kernel::handle  实际上会 call
 *  Illuminate\Foundation\Http\Kernel::handle  它又会 call
 *   Illuminate\Foundation\Http\Kernel::sendRequestThroughRouter -> bootstrap 方法
 */
$response = $kernel->handle(
    $request = Illuminate\Http\Request::capture()
);

$response->send();

$kernel->terminate($request, $response);
