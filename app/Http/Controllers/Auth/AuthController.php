<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * 登录时候的用户名字段
     * 默认 email
     * @var string
     */
    protected $username = 'username';

    /**
     * 登录路由
     * 默认：'/auth/login'
     * @var string
     */
    protected $loginPath = '/auth/login';

    /**
     * 最大尝试登录次数
     * 默认：5
     * @var int
     */
    private $maxLoginAttempts = 3;

    /**
     * 账户被锁定时间 S
     * 默认：60
     * @var int
     */
    private $lockoutTime = 60;

    /**
     * 登出后的跳转路由
     * 默认：'/'
     * @var string
     */
    private $redirectAfterLogout = '/';

    /**
     * 登录成功后的跳转路由
     * 默认：'/home'
     * @var string
     */
    private $redirectTo = '/index';
    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'getLogout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed|min:6',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }
}
