@extends('default')

@section('head')

    <title>register</title>

@stop


@section('content')
    <div class="from-content">

        {!! From::model(['url'=>'auth/register']) !!}

            @include('auth/form')

        {!! From::close() !!}

    </div>


@stop

@section('foot')



@stop

