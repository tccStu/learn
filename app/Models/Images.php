<?php

namespace App\Models;

class Images extends BaseModels
{
    protected $table = 'image';
    protected $primaryKey = 'id';

    /**
     * 多态关联
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     * A model relation B model  and  A model relation C model
     * demo:ImagesModel  User Goods
     */
    public function relation(){
        return $this->morphTo();
    }

}
