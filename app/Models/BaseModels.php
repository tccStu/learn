<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;

class BaseModels extends Model
{
    protected $_where;
    protected $_order;
    protected $_select;

    /**
     * 设置查询的结果字段
     * @param null $select
     * @return array
     */
    public function setSelect($select = null){
        if(empty($select) || !is_array($select)){
            return array('status'=>false,'msg'=>'结果集数据不正确');
        }
        $this->_select = implode(',',$select);
        return array('status'=>true,'msg'=>$this->_select);
    }

    /**
     * 获取查询的结果字段
     * @return mixed
     */
    public function getSelect(){
        return $this->_select;
    }

    /**
     *  设置查询条件
     *  要注意这里的查询字段中本身有'in'
     *  @param array $where 键值对， 键为 字段和条件   值为 值
     *  @param string $type   "and" "or"
     *  @return $this
     *  demo : setWhere(array('id = '=>1,'cat_id in'=>(1,2,3,4)));
     */
    public function setWhere($where = null, $type = 'and') {
        if (empty($where) || !is_array($where))
            return array('status'=>false,'msg'=>'条件数据不正确');

        $data = array();
        $searchString = '';

        foreach ($where as $search => $value) {

            $isIn = strstr($search, 'in');

            if($isIn){
                $searchString .= ' ' . trim($search) . " ($value) " . $type;
            }else {
                $searchString .= ' ' . trim($search) . ' ? ' . $type;
                $data['bind'][] = trim($value);
            }
        }

        $data['param'] = substr_replace(trim($searchString, ' '), '', -4);
        $this->_where = $data;

        return array('status'=>true,'msg'=>$this->_where);
    }

    /**
     * 	设置排序
     * @param array $order 键值对  键为字段 值为排序类型
     * @return $this
     * demo : setOrder(array('id'=>'desc','created_at'=>'asc'));
     */
    public function setOrder($order = null) {
        if (empty($order) || !is_array($order))
            return array('status'=>false,'msg'=>'排序数据不正确');

        $orderString = '';

        foreach ($order as $field => $type) {
            $orderString .= $field . ' ' . $type . ',';
        }
        $this->_order = trim($orderString . $this->_order, ',');

        return array('status'=>true,'msg'=>$this->_order);
    }

    /**
     *  获取排序
     */
    public function getOrder() {
        return $this->_order;
    }

    /**
     * 查询 某一条数据
     * @param null $primaryKey 主键
     * @return array|bool
     */
    public function getRow($primaryKey = null)
    {
        if(!empty($primaryKey))
        {
            $rs = $this->where($this->primaryKey, '=', $primaryKey)->first();
        }
        else
        {
            $obj = $this;
            if(!empty($this->_where))
            {
                $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
            }
            $rs = $obj->first();
        }

        return empty($rs) ? false : $rs->toArray() ;
    }

    /**
     * 	不带分页的查询
     * 如果需要带有条件，则设置 setWhere 后 查询
     *
     * @return array
     */
    public function getList()
    {
        $obj = $this;
        if(!empty($this->_where))
        {
            $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
        }
        $rs = $obj->orderByRaw($this->_order)
            ->get();

        return empty($rs) ? false : $rs->toArray() ;
    }

    /**
     * 	分页查询
     *
     * @param int 		$page  		当前页数
     * @param limit		$limit			每页显示条数
     */
    public function getListByPage($page = 0, $limit = 10) {
        $obj = $this;

        // 注册搜索条件
        if (!empty($this->_where)) {
            $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
        }
        return $obj->offset($page)->limit($limit)
            ->orderByRaw($this->_order)
            ->get();
    }

    /**
     * 数量
     * @return mixed
     */
    public function getCount()
    {
        $obj = $this;

        if(!empty($this->_where))
        {
            $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
        }

        return $obj->count();
    }

    /**
     * 获取查询条件
     * @return mixed
     */
    public function getWhere()
    {
        return $this->_where;
    }


    /**
     * @param null $data
     * @return array
     */
    public function add($data = null)
    {
        if(empty($data))
            return array('status'=>false, 'msg'=>'数据为空');

        if($this->timestamps)
        {
            $data['created_at'] = date('Y-m-d H:i:s', time());
        }
        $primaryKey = $this->primaryKey;
        $this->$primaryKey = $this->insertGetId($data);
        //$this->attributes = $data;
        //$this->save();
        if($this->$primaryKey > 0)
        {
            return array('status'=>true, 'msg'=>'添加成功','id'=>$this->primaryKey);
        }
        else
        {
            return array('status'=>false, 'msg'=>'添加失败');
        }
    }

    /**
     * 参数中要带有主键
     * @param null $data
     * @return array|bool
     */
    public function edit($data = null)
    {
        if(empty($data))
            return array('status'=>false,'msg'=>'数据为空');
        if($this->timestamps)
        {
            $data['updated_at'] = date('Y-m-d H:i:s', time());
        }
        if(empty($this->_where))
        {
            $status = $this->where($this->primaryKey, '=', $data[$this->primaryKey])->update($data);
        }
        else
        {
            $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
            $status = $obj->update($data);
        }

        if($status)
        {
            return array('status'=>true, 'msg'=>'修改成功');
        }
        else
        {
            return array('status'=>false, 'msg'=>'修改失败');
        }
    }

    /**
     * 是否已主键为条件删除
     * @param null $primaryKey
     * @return array
     * @throws \Exception
     */
    public function des($primaryKey = null)
    {
        //已主键为条件删除
        if(!empty($primaryKey))
        {
            $rs = $this->where($this->primaryKey, '=', $primaryKey)->delete();
        }
        else
        {   //非主键条件删除，在调用本方法前，需要调用setWhere设置查询条件
            $obj = $this;
            if(!empty($this->_where))
            {
                $obj = $this->whereRaw($this->_where['param'], $this->_where['bind']);
            }
            $rs = $obj->delete();
        }
        if($rs)
        {
            return array('status'=>true, 'msg'=>'删除成功');
        }
        else
        {
            return array('status'=>false, 'msg'=>'删除失败');
        }
    }

    /**
     * 数据检查
     * @param $data
     * @return array
     */
    public function checkData($data){
        if(empty($data)){
            return array('status'=>false,'msg'=>'数据为空');
        }else{
            foreach($data as $k=>$v){
                if(!isset($v)){
                    return array('status'=>false,'msg'=>$k.'为空');
                }
            }
            return array('status'=>true,'data'=>$data);
        }
    }

    public function checkValidate($data){
        Validator::extend('mobile', function($attribute, $value, $parameters)
        {
            return preg_match('/^0?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/', $value);
        });
        $rules = array(
            'email' => 'required|email',
            'name' => 'required|between:1,20',
            'password' => 'required|min:8',
        );
        $message = array(
            "required"             => ":attribute 不能为空",
            "between"      => ":attribute 长度必须在 :min 和 :max 之间"
        );

        $attributes = array(
            "email" => '电子邮件',
            'name' => '用户名',
            'password' => '用户密码',
        );

        $validate = Validator::make($data,$rules,$message,$attributes);
        return $validate;
    }

}
