<?php

namespace App\Http\Controllers\Note;

use App\Events\LoginEvent;
use App\Models\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{

    /**
     *
     *  将 发送邮件 放入事件里面执行，不在主逻辑上面走
     */
    public function index(){

        $user = User::findOrFail(1);
        $event = event(new LoginEvent($user,1));

        if($event){
            debug('send mail success');
        }else{
            debug('send mail fail');
        }

        return view('index');
    }

    /**
     * 邮件发送代码
     */
    public function sendMail(Request $request){
        //发件的路径
        $pathToFile = 'F:\wamp\www\test.php';
        $data = ['username'=>'tcc','email'=>'527293671@qq.com'];
        Mail::send('email.remind', ['user' => $data], function ($m) use ($data,$pathToFile) {
            $m->from(env('MAIL_USERNAME'), '发件人');

            $m->to($data['email'], $data['username'])->subject('主题');

            //附件
            $m->attach($pathToFile);
        });
    }
}
