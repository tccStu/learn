<?php

namespace App\Models;

class Business extends BaseModel
{
    protected $table = 'business';
    protected $primaryKey = 'id';


    public function order(){
        return $this->hasManyThrough('App\Models\Order','App\Models\Goods','bussiness_id','goods_id');
    }
}