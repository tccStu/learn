### note
创建队列失败的存储的表名
php artisan queue:failed-table

queue 驱动
1.database 配置文件中的 QUEUE_DRIVER 修改为 database ，需要生成job表  php artisan queue:table 就ok

2.redis  首页要配置 redis 环境，然后 配置文件中的 QUEUE_DRIVER 修改为 database，在控制台 查看命令 keys *;

3.beanstalkd  学习中......

4.sync 默认选项，同步，主要用于测试




