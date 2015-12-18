<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class BaseController extends Controller
{
    private $_auth;

    /**
     * BaseController constructor.
     */
    public function __construct()
    {

    }

    public function index(){
        
    }
}
