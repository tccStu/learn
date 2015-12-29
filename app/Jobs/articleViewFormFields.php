<?php

namespace App\Jobs;

use App\Jobs\Job;
use App\Models\Articles;
use Carbon\Carbon;
use Illuminate\Contracts\Bus\SelfHandling;

/**
 * 看一下与 testJob 的 区别
 *  主要就是 ShouldQueue ,如果实现了  ShouldQueue 的话，就会把 这个Job 放到 任务队列 里面去
 *
 *
 */

class articleViewFormFields extends Job implements SelfHandling
{
    /**
     *  job 任务往往注重 结果
     *  任务有明确的目标，本身任务就是为了完成某个目标而产生的活动，有特定的任务委托人，结果是可预期的，任务完成了，结果也就达到了
     *
     *  event 事件一般是临时突发的，不可预期的，需要快速响应处理的一类活动
     *
     *  当某一类事件频繁发生的时候，就需要建立一个任务去彻底解决这个问题
     *
     *  “事件”指的是有确定发生日期的事项，
     *
     *  “任务”指的是执行时间待定的事项。
     */


    /**
     *  article's id
     */
    protected $_id;

    /**
     * List of fields and default value for each field
     *
     * @var array
     */
    protected $fieldList = [
        'user_id'=>'',
        'title' => '',
        'content' => '',
        'click_num' => '',
        'status' => "0",
        'created_at' => '',
        'updated_at' => '',
        //'layout' => 'blog.layouts.post',
        //'tags' => [],
    ];

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($id = null)
    {
        $this->_id = $id;
    }

    /**
     * Execute the job.
     *
     * @return array
     */
    public function handle()
    {
        $fields = $this->fieldList;

        if(!empty($this->_id)){
            $fields = $this->fieldsFromModel($this->_id,$fields);
        }else{
            $fields['updated_at'] = Carbon::now();
        }

        foreach($fields as $name=>$val){
            $fields[$name] = old($name,$val);
        }

        return $fields;
    }

    /**
     * 取得 模型 所有的 字段
     *
     * 并且对 每个字段 进行 赋值
     *
     * @param $id
     * @param array $fields
     * @return array
     */
    protected function fieldsFromModel($id,array $fields){
        $article = Articles::findOrFail($id)->toArray();
        //debug($article);
        $fieldNames = array_keys($article);
        //debug($fieldNames);

        $fields = ['id'=>$id];
        foreach($fieldNames as $field){

            $fields[$field] = $article[$field];
        }

        return $fields;
    }










}
