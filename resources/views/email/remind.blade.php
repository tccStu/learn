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
        <img src="{!!$message->embedData(QrCode::format('png')->generate('Embed me into an e-mail!'), 'QrCode.png', 'image/png')!!}">
    </div>
</div>
</body>
</html>
