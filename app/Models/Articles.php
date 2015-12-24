<?php

namespace App\Models;


class Articles extends BaseModels
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
    protected $hidden = ['click_num'];

    /**
     *
     * 这两个字段的值，不能被批量修改
     * save(),update(),都不行
     * @var array
     */
    protected $guarded  = ['user_id','id'];


    /**
     * 这里面的字段 是 能够被批量修改的,其他的就是不能被修改的
     * @var array
     */
    protected $fillable = ['title'];

    //protected $with = ['User'];

    //public $timestamps = false;

    /**
     * The attributes that should be mutated to dates.
     * 在 $dates 这个数组里面的所有的字段，在外显示的时候，都会以Carbon 的格式显示
     * @var array
     */
    protected $dates = ['created_at', 'updated_at'];

    /**
     * The attributes that should be casted to native types.
     *
     * 将从数据库 取出的数据的某些个字段，转换成你希望显示的数据类型，不管它们在数据库里面的字段类型
     *
     * @var array
     *
     *  类型有：  integer, real, float, double, string, boolean, object, array, collection, date and datetime.
     */
    protected $casts = [
        'status' => 'boolean',
        'content' => 'array'
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    /**
     * 修改器
     *  下面的两个 getNameAttribute,setNameAttribute 方法就是修改器
     *  它们只是对从数据库取出数据后的某个字段的  get\set 操作，并不会影响数据库中，该字段的本身的值
     *
     */
    /**
     * @param $value
     * @return string
     *
     * 取得 title 字段的时候，对它的操作
     */
    public function getTitleAttribute($value){

        return ucfirst($value);
    }


    /**
     * @param $value
     * @return mixed
     *
     * 重新设置 title 字段值的时候，对它的操作
     */
    public function setTitleAttribute($value){

        return $this->attributes['title'] = strtolower($value);

    }


}
