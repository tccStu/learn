<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class BaseController extends Controller
{

    public function index(){
       print_r('in home index');
    }
}
