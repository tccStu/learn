<?php

namespace App\Events;

use App\Events\Event;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class LoginEvent extends Event
{
    use SerializesModels;

    /**
     *  1.生成Event事件
     *         php artisan event:generate,会默认一起 生成事件，监听，以及绑定文件
     *         php artisan make:event LoginEvent，会单独生成  LoginEvent 事件文件
     *  2.生成Listen监听
     *        php artisan handle:event LoginEventListen  --event="LoginEvent",会生成 LoginEventListen 监听文件，并且把 LoginEvent 事件 注入到 handle 方法里面
     *
     *  3.绑定Event事件 与 Listen监听
     *        app\Providers\EventServiceProvider::listen
     *
     *  4.Event::fire(LoginEvent());
     */


    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the channels the event should be broadcast on.
     *
     * @return array
     */
    public function broadcastOn()
    {
        return [];
    }
}
