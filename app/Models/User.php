<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Foundation\Auth\Access\Authorizable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class User extends Model implements AuthenticatableContract,
                                    AuthorizableContract,
                                    CanResetPasswordContract
{
    use Authenticatable, Authorizable, CanResetPassword;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'tcc_users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'email', 'password'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = ['password', 'remember_token'];


    /**
     *
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     */
    /*public function users(){
        return $this->morphTo();
    }*/

    /**
     * 一对多关系
     *
     * 第一个参数：关系的模型
     * 第二个参数：关系模型与本模型 关联关系的 外键，如果不写，那么默认为本模型的模型名称_id （user_id）
     * 第三个参数：本模型与关系模型 关联关系的 键, 如果不写，那么默认就是本模型的主键
     */
    public function article(){
        //return $this->hasMany('App\Models\Articles');

        return $this->hasMany('App\Models\Articles','user_id','id');
    }

    /**
     *  多对多关系
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     * A hasMany/hasOne B and B hasMany/hasOne A
     * demo: Role model
     */
    public function role(){
        return $this->belongsToMany('App\Models\Roles','users_role','users_id','role_id');
    }

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
