<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/12/23
 * Time: 10:30
 */

namespace app\Http\Controllers\Note;


use App\Events\LoginEvent;
use App\Http\Controllers\Controller;
use App\Jobs\articleViewFormFields;
use App\Jobs\sendEmailJob;
use App\Models\Articles;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class ArticlesController extends Controller
{
    public function __construct()
    {
        //$this->middleware('article.view');
    }

    public function index(){

        return view('articles.index');
    }

    /** debug($request->name);
     * debug($request->all());
     * debug($request->att);
     */

    /**
     *  把 读取模型数据 这件事 作为一个 任务
     *
     *
     * @param Request $request
     * @param $id
     */
    public function view(Request $request,$id = null){
        /**
         * 用一个 任务，来完成数据的提取操作
         * 在这个 任务 中，可能发生一些突发事件，比如说 日志
         *
         * 事件需要立即执行，但是任务 它是有
         */
        //$job = (new articleViewFormFields($id))->delay(60);
        //$user = User::findOrFail(1);
        $job = (new sendEmailJob())->delay(60);


        $data = $this->dispatch($job);

        debug($data);
        return view('articles.view',compact('data'));

    }



    public function jobView(Request $request,$id){
        //$id = 5555;
        $article = Articles::findOrFail($id);
        if(empty($article)){
            debug('no one');
        }
        debug($article);

        return view('index');
    }



}