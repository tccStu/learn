<?php

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| The first thing we will do is create a new Laravel application instance
| which serves as the "glue" for all the components of Laravel, and is
| the IoC container for the system binding all of the various parts.
|
*/
/**
 * 1. 注册绑定 Illuminate\Foundation\Application 容器
 * 2. 注册绑定 EventServiceProvider and RoutingServiceProvider 这两个服务容器
 * 3. 注册框架的所有的核心服务
 * 4. 设置框架的基本文件地址信息   public_path  base_path ......
 */
$app = new Illuminate\Foundation\Application(
    realpath(__DIR__.'/../')
);

/*
|--------------------------------------------------------------------------
| Bind Important Interfaces
|--------------------------------------------------------------------------
|
| Next, we need to bind some important interfaces into the container so
| we will be able to resolve them when needed. The kernels serve the
| incoming requests to this application from both the web and CLI.
|
*/
/**
 * Create a new HTTP kernel instance.
 * 这里是已字符串的形式  注册 singleton
 * singleton 方法在 Illuminate\Container\Container 里面
 * 它只是在 bind方法外面封装了一次
 * bind('Illuminate\Contracts\Http\Kernel','App\Http\Kernel',true)
 */
$app->singleton(
    Illuminate\Contracts\Http\Kernel::class,
    App\Http\Kernel::class
);

$app->singleton(
    Illuminate\Contracts\Console\Kernel::class,
    App\Console\Kernel::class
);

$app->singleton(
    Illuminate\Contracts\Debug\ExceptionHandler::class,
    App\Exceptions\Handler::class
);

/*
|--------------------------------------------------------------------------
| Return The Application
|--------------------------------------------------------------------------
|
| This script returns the application instance. The instance is given to
| the calling script so we can separate the building of the instances
| from the actual running of the application and sending responses.
|
*/

return $app;
