@extends('default')

@section('head')
    <title>Article view</title>
@stop


@section('content')

    <div class="container">
        <form >
            <div class="form-control">
                <label>title:</label>
                <input class="" type="text" name="title" value="{{$article['title'] or 'default title'}}">
            </div>
            <div class="form-control">
                <label>content:</label>
                <input class="" type="text" name="content" value="{{$article['content'] or 'default content'}}">
            </div>
        </form>

    </div>

@stop


@section('foot')

@stop