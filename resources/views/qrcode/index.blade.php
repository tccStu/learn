@extends('default')

@section('head')
<title>QrCode</title>
@stop
@section('content')
<div class="container">
    {{--<div class=" text-center">
        <h3>生成一个http URL 链接 </h3>
        {!! QrCode::size(100)->generate(url('https://www.baidu.com')) !!}
    </div>--}}


   {{-- <div class=" text-center">
        <h3>生成一个 发送邮件 的二维码 </h3>
        {!! QrCode::encoding('UTF-8')->size(200)->email('tangmian101518@163.com','QrCode测试邮件','测试邮件的内容，通过二维码发送') !!}
    </div>--}}

    <div class=" text-center">
        <h3>生成一个 发送邮件 的二维码 </h3>
        {!! QrCode::encoding('UTF-8')->size(200)->generate('mailto:18672858778') !!}
    </div>



    <div class=" text-center">
        <h3>生成一个指定格式，大小的，直接保存到 路径 的二维码图片</h3>
        <h2>如果去掉路径的话，文件格式是 svg 的话，就可以直接在浏览器上显示</h2>
        <h1>color 是二维码图片的颜色，background 是图片的背景色</h1>
        {{--{!! QrCode::format('png')->size(200)->color(255,5,255)->backgroundColor(255,255,0)->generate(url('http://www.baidu.com'),public_path('qrcodes/'.rand(1,1000000).'.png')) !!}--}}
    </div>

</div>
@stop


@section('foot')
@stop