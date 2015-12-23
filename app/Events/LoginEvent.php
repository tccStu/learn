<?php

namespace App\Events;

use App\Events\Event;
use App\Models\User;
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


    public $_user;
    public $status;
    public $data;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(User $user,$status)
    {
        $user['username'] = $user['id'].'testname';
        $this->_user = $user;
        $this->data['user'] = $this->_user;
        $this->data['status'] = $status ? 0:1;
        $this->status = $status ? 0:1;
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


    /**
     * 被广播的数据
     *默认情况下， Event 中的所有public属性都会被序列化后广播。上面的例子中就是 $user_id 这个属性。你也可以使用 broadcastWith      *这个方法，明确的指出要广播上面数据。
     *
     * @return array
     */
    public function broadcastWith(){
        return ['data' => $this->data];
    }
}
