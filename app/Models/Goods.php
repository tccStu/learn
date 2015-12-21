<?php

namespace App\Models;

class Goods extends BaseModels
{
    protected $table = 'goods';
    protected $primaryKey = 'goods_id';


    /**
     * 多态关联
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     * A model relation B model  and  A model relation C model
     * demo:ImagesModel  User Goods
     */
    public function images(){
        return $this->morphMany('App\Models\ImagesModel','relation');
    }
}
