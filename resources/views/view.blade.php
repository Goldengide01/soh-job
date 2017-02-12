@extends('layouts.custom')
@section('content')
 <div class="container">
 	<div class="row">
 		<style type="text/css">
 			.invisible-input {display: none;}
 			.custom-upload {}
 			.custom-upload img span{}
 		</style>
 		<div class="wrapper">
	 		<div class="content col-lg-9 col-md-8 col-sm-6" style="margin: auto;">
				<dl class="dl-horizontal">
					<dt style="white-space: normal; text-align: left;">Name:</dt> <dd>{{$member->name}}</dd><br>
					<dt style="white-space: normal; text-align: left;">Phone:</dt> <dd>{{$member->phone}}</dd><br>
					<dt style="white-space: normal; text-align: left;">Email:</dt> <dd>{{$member->email}}</dd><br>
					<dt style="white-space: normal; text-align: left;">Birthday:</dt> <dd>{{$member->birthday}}</dd><br>
					@if($member->unit != "")
					<dt style="white-space: normal; text-align: left;">Unit:</dt> <dd>{{$member->unit}}</dd><br>
					@endif
					<!-- <dt style="white-space: normal; text-align: left;">Directory:</dt> <dd>{{$member->original_pics_url}}</dd><br> -->
					@if($member->wedding_anniversary != "")
					<dt style="white-space: normal; text-align: left;">Wedding Anniversary:</dt> <dd>{{$member->wedding_anniversary}}</dd><br><br>
					@endif
					<dt style="white-space: normal; text-align: left;">GEPI Partner:</dt> <dd>{{$member->gepi_partner}}</dd><br><br>
					<dt><a class="btn btn-large form-control btn-default" style="border-radius: 0;" type="button" href="{{url('/member/edit/'.$member->id)}}">Edit</a><br><a class="btn btn-large form-control btn-primary" style="border-radius: 0;" type="button" href="{{url('/member')}}">Back to List</a></dt>
				</dl>
	 		</div>
	 		<div class="side-bar col-lg-3 col-md-4 col-sm-6 hidden-xs" style="margin: auto;">
				<img class="img-responsive img-circle"
                    @if ($member->square_pics_url == "")
                    src="{{ URL::asset("assets/img/square.fw.png") }}"
                    @else
                    src="{{URL::asset("$member->square_pics_url")}}" />
                    @endif <br><br>
		 		<form action="{{url('/member/pics/update')}}" method="post" enctype="multipart/form-data">
		 			<input type="hidden" name="id" value="{{$member->id}}">
					<input type="hidden" name="_token" value="{{ csrf_token() }}">
		 			<label for="file-input" data-toggle="tooltip" data-placement="bottom" title="Click to Change Logo">
						<i class="icon-large icon-pencil">Change your picture here</i>
	                </label>
	                <div class="invisible-input"><input type="file" name="photo" id="file-input" class="photo"></div>
					<button style="border-radius: 0;" type="submit" class="btn btn-large btn-primary submit-button"><i class="icon-upload-alt"> Upload</i></button><br>
					@if(session('alert-success'))
					<i class="text-success">{{ session('alert-success')}}</i>
					@endif
					@if(session('alert-failure'))
					<i class="text-danger">{{ session('alert-failure')}}</i>
					@endif
	            </form>
				<!-- It must be specified that only square images should be uploaded -->
	 		</div>
 		</div>
 	</div>
 </div>
@endsection
@section('special_plugins_script')
<script type="text/javascript">
	$(document).ready(function() {
		$('.submit-button').hide();
		
		$('.photo').click(function() {
			$('.submit-button').show();
		});
	});
</script>
@endsection