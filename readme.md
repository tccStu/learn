### note
Auth 如果使用框架自带的Auth,但是你的用户表不是users 的话，那么需要在model里面修改用户表的table 属性，还有 配置文件里面 auth.php 里面的 'table' 的值

php artisan make:migration create_users_table --create='tcc_users'

create_users_table 会生成一个文件名为 CreateUsersTable 的 文件
tcc_users 是要创建的表名

##数据填充
php artisan make:migration seed_uses_table
会生成一个SeedUsersTable 的文件  这里的users 与表无关

php artisan migrate  创建表、填充数据 都用它