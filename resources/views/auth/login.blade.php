@extends('default')

@section('head')

    <title>login</title>

@stop

@if(!empty($errors->has('username')))

    <?php
        print_r($errors->first('username'));
    ?>


@endif

@section('content')
    <div class="from-content">

        {!! From::model(['url'=>'auth/login']) !!}


        <div class="from-group {{$errors->has('username')?'has_error':''}}">
            {!! From::label('username',null,['class'=>'from-control']) !!}
            {!! From::text('username',null,['class'=>'from-control']) !!}
            {!! $errors->first('username','<span class="help-block">:message</span>') !!}
        </div>

        <div class="from-group {{$errors->has('password')?'has_error':''}}">
            {!! From::label('password',null,['class'=>'from-control']) !!}
            {!! From::password('password',null,['class'=>'from-control']) !!}
            {!! $errors->first('password','<span class="help-block">:message</span>') !!}

        </div>

        <div class="from-group">
            {!! From::submit('Update Msg',['class'=>'btn btn-primary']) !!}
        </div>

        {!! From::close() !!}

    </div>


@stop

@section('foot')



@stop

