
<div class="from-group">
    {!! From::label('username',null,['class'=>'from-control']) !!}
    {!! From::text('username',null,['class'=>'from-control']) !!}

</div>

<div class="from-group">
    {!! From::label('email',null,['class'=>'from-control']) !!}
    {!! From::text('email',null,['class'=>'from-control']) !!}

</div>


<div class="from-group">
    {!! From::label('password',null,['class'=>'from-control']) !!}
    {!! From::password('password',null,['class'=>'from-control']) !!}

</div>

<div class="from-group">
    {!! From::label('repeat',null,['class'=>'from-control']) !!}
    {!! From::password('password_confirmation',null,['class'=>'from-control']) !!}

</div>

<div class="from-group">
    {!! From::label('time','time:',['class'=>'from-control']) !!}
    {!! From::input('date','time',date('Y-m-d H:i:s'),null,['class'=>'from-control']) !!}

</div>


<div class="from-group">
    {!! From::submit('Update Msg',['class'=>'btn btn-primary']) !!}
</div>