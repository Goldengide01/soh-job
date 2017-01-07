@extends('layouts.custom')
@section('content')
 <div class="container">
 	<div class="row">
 		<div class="wrapper">
	 		<div class="content col-lg-9 col-md-8 col-sm-6" style="margin: auto;">
				<dl class="dl-horizontal">
					<dt>Firstname:</dt>
					<dd>{{$member->firstname}}</dd>
				</dl>
				<dl class="dl-horizontal">
					<dt>Lastname:</dt>
					<dd>{{$member->lastname}}</dd>
				</dl>
				<dl class="dl-horizontal">
					<dt>Email:</dt>
					<dd>{{$member->email}}</dd>
				</dl>
				<dl class="dl-horizontal">
					<dt>Phone:</dt>
					<dd>{{$member->phone}}</dd>
				</dl>
				<dl class="dl-horizontal">
					<dt>Phone:</dt>
					<dd>{{$member->phone}}</dd>
				</dl>
				<dl class="dl-horizontal">
					<dd><a class="btn btn-default" type="button" href="{{url('/member/edit/'.$member->id)}}">Edit</a></dd>
				</dl>
	 		</div>
	 		<div class="side-bar col-lg-3 col-md-4 col-sm-6 hidden-xs" style="margin: auto;">
				<img src="{{ URL::asset("assets/img/square.fw.png") }}" class="img-responsive img-circle">
				<!-- It must be specified that only square images should be uploaded -->
	 		</div>
 		</div>
 	</div>
 </div>
@endsection