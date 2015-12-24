<!DOCTYPE html>
<html>
<head>
    <title>Email</title>
</head>
<body>
<div class="container">
    <div class="content">
        <div class="title">hello {{ $user['username'] }}</div>
        <div><img src="{{ $message->embed($user['image']) }}}"></div>
    </div>
</div>
</body>
</html>
