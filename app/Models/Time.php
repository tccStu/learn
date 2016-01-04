<?php

namespace App\Models;


class Time extends BaseModels
{
    protected $table = 'time';

    public $timestamps = true;

    protected $fillable = ['user_id','click'];

    //protected $dates = ['created_at','updated_at'];
}
