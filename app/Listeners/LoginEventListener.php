<?php

namespace App\Listeners;

use App\Events\LoginEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

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
         debug($user);

        $status = 0;
        debug('in LoginEvent the LoginEventListen handle method');
        return  $status;
    }



}
