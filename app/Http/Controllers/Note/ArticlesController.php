<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/12/23
 * Time: 10:30
 */

namespace app\Http\Controllers\Note;


use App\Http\Controllers\Controller;

class ArticlesController extends Controller
{
    public function __construct()
    {
        //$this->middleware('article.view');
    }

    public function index(){
        return view('articles.index');
    }


    public function view($id){

        return view('articles.view');
    }
}