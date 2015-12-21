<?php

namespace App\Models;


class Roles extends BaseModels
{
    protected $table = 'role';
    protected $primaryKey = 'id';


    /**
     *  多对多关系
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     * A hasMany/hasOne B and B hasMany/hasOne A
     * demo: User model
     */
    public function user(){
        //第一个参数   关联表
        //第二个参数   关系表（这是一张关联表，只用主键保存关系）
        //第三个参数   role_id
        //第四个参数   关系表中值为role_id 的所有关联表中主键为users_id的信息
        return $this->belongsToMany('App\Models\User','users_role','role_id','users_id');


        //return $this->belongsToMany('App\Models\User','users_role','users_id','role_id');

    }


}