<?php

namespace App\Http\Controllers;

use App\Events\LoginEvent;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Event;

class BaseController extends Controller
{

    public function index(){

        event(new LoginEvent());

        return view('index');
    }
}
