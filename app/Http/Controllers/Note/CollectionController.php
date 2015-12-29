<?php

namespace App\Http\Controllers\Note;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Articles;
use App\Models\User;

class CollectionController extends Controller
{
    /**
     * @var \Illuminate\Support\Collection
     *
     * 这里面的 所有的方法里面，如果调用 闭包函数的话，一定要注意 param ，以及 param 的顺序
     *
     */
    protected $collection;
    public function __construct()
    {
        $this->collection = collect([
            ['product' => 'Desk', 'price' => 200],
            ['product' => 'Chair', 'price' => 100],
            ['product' => 'Bookcase', 'price' => 150],
            ['product' => 'Door', 'price' => 100],
        ]);

    }

    /**
     * 自定义一个Collection 对象
     * 并且，能够对这个对象进行 查询
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(){
        /** @var TYPE_NAME $collection */
        $collection = $this->collection;

        print_r($collection->where('price',100));

        return view('index');
    }

    /**
     * @return mixed
     * 对Collection 进行where 查询
     */
    public function where(){

        $user = new User();
        //这里得到的 $article 对象也是一个Collection 对象
        //Illuminate\Database\Eloquent\Collection Object
        $article = $user->find(1)->article;

        //where 里面是一个给定的键值对的集合，且，只能是一个键值对的集合
        //key/value
        $article = $article->where('id',1);
        print_r($article);

        return view('index');
    }


    /**
     *  map each filter 方法，都会对Collection 做一次遍历，并且，定义闭包函数
     *
     * map,each，filter 的区别
     * 1 . 放回的结果类型区别，map看return 的值的类型，each，filter还是原来的item 的结构类型,
     * 2 . 对条件不满足的item 的处理方式：map用null 来处理，而each对原来的值只是不做处理，filter直接不需要这部分item
     * 3. 返回的数据长度：map,each 原来的数据长度，filter所有满足条件的数据的长度
     */
    public function map(){
        echo "这里展示Map and  Each 方法\n";
        $user = new User();
        $article = $user->find(1)->article;

        //print_r($article->toarray());

        //一直执行到某个条件后，跳出循环，返回的是 return 的结果类型(这里是 ID)
        //Illuminate\Database\Eloquent\Collection Object ( [items:protected] => Array ( [0] => 10 [1] => 20 [2] =>  [3] => ) )
        $map = $article->map(function($item,$k){
            //debug($val->id);
            if($item->id > 4){
                return false;
            }else{
                return $item->id * 10;
            }

        });
        //print_r($map);

        //得到的是一个Array()
        $all = $article->all();
        //print_r($all);

        //一直执行到某个条件后，跳出循环,结果还是原来的结构,只是改变满足条件的item，返回所有的item
        // Illuminate\Database\Eloquent\Collection Object ( [items:protected] => Array ( [0] => App\Models\Article Object (),[1]=>App\Models\Article Object),[2] => App\Models\Article Object (),[3]=>App\Models\Article Object))
        $each = $article->each(function($item,$k){
            //debug($item->id);
            if($item->id > 4){
                return false;
            }else{
                $item->id = $item->id * 10;
            }
        });

        //print_r($each);


        //debug($each->all());


        //遍历article,返回满足条件的key--item,不满足条件的删除，但是索引没变
        //
        $filter = $article->filter(function($item){
            debug($item->id);
            return $item->id > 10;
        });

        debug($filter->count());
        print_r($filter);

        return view('index');
    }


    public function contains(){
        $user = new User();
        //$article = $user->find(1)->article;
        $article = collect([
            ['id'=>1,'title'=>'title'],
            ['id'=>2,'title'=>'title2'],
            ['id'=>3,'title'=>'title3'],
            ['id'=>4,'title'=>'title4'],
            ['id'=>5,'title'=>'title5'],
        ]);
        //print_r($article);
        //返回值 TRUE,FALSE,
        //在 $article 集合中，title 键key，是否有 value 为 title222 的片
        //$contains = $article->contains('title','title222');
        //debug($contains);

        //采用闭包函数，可以自定义条件
        /**
         * 实际上执行
         * foreach ($array as $key => $value) {
                if (call_user_func($callback, $key, $value)) {
                    return $value;
                }
             }
         *
         * 这里的 $array 就是 $article，$callback 就是闭包函数
         *
         * 它返回的就是第一个满足条件的值，只不过在contains(),方法外面又封装了一层，最后的结果才是BOOl类型
         *
         */
        $contains = $article->contains(function($key,$val){
            return $val['id']> 5;
        });

        //debug($contains);

        return view('index');
    }

    public function math(){
        $user = new User();
        $article = $user->find(1)->article;

        debug($article->toarray());
        //平均数
        $avg = $article->avg('click_num');//或者->avg();
        debug($avg);

        $count = $article->count();
        debug($count);

        $min = $article->min('click_num');
        debug($min);

        $max = $article->max('click_num');
        debug($max);

        return view('index');
    }

    /**
     * chunk 切片，分组，每一组多少数据
     * every 取整，偏移，取得特定的某些 元素的数据 集合
     * 这个也可以用在view 页面，比如对查询的结果展示，要进行分组，商品分类显示，并且分类展示的商品数量还不同
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     *
     */
    public function chunk(){
        echo "这里展示Chunk and Every\n";

        $user = new User();
        $article = $user->find(1)->article;

        //对现有的集合 进行切片，分组，参数是每一组里面的数据个数，如果最后的一个不够，那就不够
        //demo $collection 切片，并且每一组有3个，若果不够，就是剩下的
        //$collection = collect([1, 2, 3, 4, 5, 6, 7]);
        //切片后：[[1,2,3],[4,5,6],[1]]
        $chunk = $article->chunk(3);

        //这种方法也可以取得所需要的数据，但是这个是对数据库的查询分组，这样就会查询很多次
        //上面的方法只查询一次，但下面的方法查询的 N 次
        /*$chunk = Articles::chunk(3,function($articles){
            foreach($articles as $item){
                debug($item->id);
            }
        });
        print_r($chunk);*/


        //取得key能够整除4的所有key---value元素
        //这里取得key：0,2，4,6.....
        //$every = $article->every(2);

        //取得key能够整除4的所有key+1---value元素
        //这里取得的key:1,4,7,10,......
        $every = $article->every(3,1);

        debug($every->count());

        return view('index');
    }


    /**
     * 两个集合的差集，集合数据只能是一维形式，不能是多维的
     * $collectOne->diff($collectionTwo);
     *
     *  结果是：存在集合 $collectOne 中，并且不存在 $collectionTwo 的一个集合
     *
     *  对应的： 两个集合的 交集
     *
     */
    public function diff(){
        $others = collect([
            ['product' => 'Desk', 'price' => 200],
            ['product' => 'book', 'price' => 10],
            ['product' => 'shop', 'price' => 20],
            ['product' => 'goods', 'price' => 100],
        ]);

        //debug($this->collection);
        //多维 执行不了  报错
        //$diff = $this->collection->diff($other);

        // 差集
        $collection = collect([1, 2, 3, 4, 5]);
        $other = collect([2, 4, 6, 8]);
        //一维可以执行
        $diff = $collection->diff($other);

        debug($diff);

        // 交集
        $intersect = $collection->intersect($other);
        debug($intersect);

        // 并集  合并后 的集合 是不管里面有没有的重复元素的，这是集合的定义决定的
        $merge = $collection->merge($other);

        $merge = $this->collection->merge($others);
        debug($merge);

        return view('index');
    }


    /**
     *  取得满足 filter 条件的 集合
     *  filter 方法实际上是 走的 array_filter($this->items, $callback) 这个数组底层函数
     *
     */
    public function filter(){

        /**
         * array_filter($this->collection, function(){})
         */
        $filter = $this->collection->filter(function($item){
            return $item['price'] == 100;
        });

        debug($filter);

        return view('index');
    }


    /**
     *  取得 集合中 满足 闭包条件的  第一个元素 first
     *  首先 call  Collection 的 first method
     *  first method call Arr::first($this->items, $callback, $default);
     *  它返回的是一个值
     *
     *  对应的
     * 取得 集合中 满足 闭包条件的  最后一个元素 last
     */
    public function first(){

        debug($this->collection);

        //返回第一个满足条件的 $value
        $first = $this->collection->first(function($key,$value){
            return $value['price'] == 100;
        });

        debug($first);

        $last = $this->collection->last(function($key,$value){
            return $value['price'] == 100;
        });

       debug($last);

        //这里就直接返回第一个集合元素
        $first = $this->collection->first();

        debug($first);

        return view('index');
    }



    /**
     * 反转 集合元素的 键值对 key/value 变成 value/key
     * 这里的集合元素 只能是一维的，并且 只支持 string and integer
     */
    public function flip(){
        $collection = collect(['name' => 'taylor', 'framework' => 'laravel']);

        $flip = $collection->flip();

        debug($flip);

        return view('index');
    }

    /**
     * 分页
     */
    public function forPage(){

        $collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9]);

        /**
         *  forPage($page, $perPage)
         *  $page 当前的页数
         *  $perPage 每页的数量
         */
        $page = $collection->forPage(3,2);

        debug($page);

        debug($page->all());

        return view('index');
    }


    /**
     *
     *  集合元素 转换成 字符串
     *
     * implode
     *
     */
    public function implode(){

        $val = $this->collection->map(function($val,$key){
            return $val['price'];
        });

        debug($val);

        //Desk,Chair,Bookcase,Door
        $implode = $this->collection->implode('product',',');
        debug($implode);

        //1-2-3-4-5
        $implode = collect([1, 2, 3, 4, 5])->implode('-');
        debug($implode);

        return view('index');

    }

    /**
     * 检索 key值，是这个元素
     * 摘取 某个字段的值，生成一个新的集合
     */
    public function pluck(){
        $user = new User();
        $article = $user->find(1)->article;

        //pluck($value, $key = null)
        $pluck = $article->pluck('title','id');

        debug($pluck);

        return view('index');
    }

}
