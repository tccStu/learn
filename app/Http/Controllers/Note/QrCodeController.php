<?php

namespace App\Http\Controllers\Note;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class QrCodeController extends Controller
{
    public function index(){
        return view('qrcode.index');
    }
}
