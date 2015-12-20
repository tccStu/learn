<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class SeedTccUsesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        for($i=1;$i<=3;$i++){
            $array = [
                'username'=>'tcc'.$i,
                'email'=>rand(100000,9999999).'@qq.com',
                'password'=>Crypt::encrypt('tcc')
            ];
            DB::table('tcc_users')->insert($array);
        }

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::table('tcc_users')->delete();
    }
}
