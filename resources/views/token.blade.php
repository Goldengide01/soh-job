@extends('layouts.custom')

@section('menu')
@stop
@section('content')
<div class="container">
    <div class="row" style="margin-top: 10%;">
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2" >
            <div class="panel panel-primary">
                <div class="panel-heading text-center"><i class="icon-lock"> </i>GateWay</div>
                <div class="panel-body"> <!-- style="background-color: transparent;" -->
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/profile/update/info') }}" style="padding-right: 10%; padding-left: 10%;">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <!-- <label for="email" class="col-md-4 control-label">E-Mail Address</label> -->

                            <div class="input-group">
                                <div class="input-group-addon"><i class="icon-key"></i></div>
                                <input id="token" type="text" class="form-control" name="token" value="{{ old('token') }}" placeholder="Enter your security number here" required autofocus>

                                @if (session('alert-failure'))
                                    <p style="color: black;">{{session('alert-failure')}}</p>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-8"> <!-- col-md-offset-4 -->
                                <button type="submit" class="btn btn-primary">
                                    Submit
                                </button>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
