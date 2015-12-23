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
use App\Models\User;
use Illuminate\Http\Request;

class ArticlesController extends Controller
{
    public function __construct()
    {
        //$this->middleware('article.view');
    }

    public function index(){
        return view('articles.index');
    }


    public function view(Request $request,$id){

        /*debug($request->name);
        debug($request->all());
        debug($request->att);*/


        $user = User::findOrFail(1);
        $status = 1;
        $ev = event(new LoginEvent($user,$status));
        //debug($user['username']);
        //debug('-------------------------------------');
        //debug($status);
        debug($ev);
        return view('articles.view');
    }
}