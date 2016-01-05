<?php

namespace App\Jobs;

use App\Events\LoginEvent;
use App\Jobs\Job;
use App\Models\User;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Bus\SelfHandling;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class sendEmailJob extends Job implements SelfHandling, ShouldQueue
{
    use InteractsWithQueue, SerializesModels;


    protected $_event;
    /**
     * Create a new job instance.
     *
     * @return void
     */
   // public function __construct(/*LoginEvent $event*/)
    //{
        //$this->_event = $event;
    //}

    /**
     * Execute the job.
     *
     */
    public function handle()
    {
       $user = User::findOrFail(1);
        $status = 1;
        $mail = event(new LoginEvent($user,$status));

        return $mail;
    }
}
