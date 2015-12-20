<!DOCTYPE html>
<html>
<head>
    @yield('head')
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap-theme.css')}}">
</head>
<body>
<div class="content">
    @yield('content')
</div>


</body>
<script src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
@yield('foot')
</html>
