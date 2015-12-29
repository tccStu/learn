<?php

namespace App\Listeners;

use App\Events\LoginEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class LoginEventListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event
     * @param LoginEvent $event
     * @return int
     */
    public function handle(LoginEvent $event)
    {
        //$data = $event->broadcastWith();
        $user = $event->_user;
         //debug($user);

        $status = $event->_status ? 0:1;

        $re = array('status'=>$status);
        //debug('in LoginEvent the LoginEventListen handle method');

        $pathToFile = 'F:\wamp\www\test.php';
        $image = 'F:\wamp\www\123.jpg';
        $theme = 'Theme'.rand(1000,1000000);
        $data = ['username'=>$user->username,'email'=>'799658891@qq.com','image'=>$image];
        $mail = Mail::send('email.remind', ['user' => $data], function ($m) use ($data,$pathToFile,$theme) {
            $m->from(env('MAIL_USERNAME'), 'Application');

            $m->to($data['email'], $data['username'])->subject($theme);

            $m->attach($pathToFile);
        });


        return  $mail;
    }



}
