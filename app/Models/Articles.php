<?php

namespace App\Models;


class Articles extends BaseModel
{
    /**
     * @var string
     */
    protected $table = 'article';

    /**
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * @var array
     */
    protected $guarded  = ['user_id'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(){
        return $this->belongsTo('App\Models\User');
    }
}
