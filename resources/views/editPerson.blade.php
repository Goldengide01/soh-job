@extends('layouts.custom')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="place-holder col-xs-12">
			<!-- text, name, placeholder -->
			<!-- <div class="package"></div> -->
			<form action="{{url('/profile/update')}}" method="post">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<input type="hidden" name="token" value="{{ $member->token }}">
				<input type="hidden" name="id" value="{{ $member->id }}">
				<div class="form-group">
					<label for="name">Name</label><br>
					<input type="text" class="form-control" name="name" value="{{ $member->name}} ">
				</div>
				<div class="form-group">
					<label for="email">Phone</label><br>
					<input type="text" class="form-control" name="phone" value="{{ $member->phone}} ">
				</div>
				<div class="form-group">
					<label for="email">Email</label><br>
					<input type="text" class="form-control" name="email" value="{{ $member->email}} ">
				</div>
				<div class="form-group">
					<label for="birthday">Birthday</label><br>
					<input type="text" class="form-control" name="birthday" value="{{ $member->birthday}} "  data-mask="aaa-99">
				</div>
				<div class="form-group">
					<label for="wedding_anniversary">Wedding Anniversary</label><br>
					<input type="text" class="form-control" name="wedding_anniversary" value="{{$member->wedding_anniversary}} " data-mask="aaa-99"  >
				</div>
				<div class="form-group">
					<label for="unit">Unit</label><br>
					<input type="text" class="form-control" name="unit" value="{{ $member->unit}} ">
				</div>
				<div class="form-group">
					<label for="gepi">Gepi Partner</label><br>
					<select name = "gepi_partner" class="form-control" style="border-radius: 0;">
					@if($member->gepi_partner == "YES")
						<option name ="YES" selected>YES</option>
						<option name ="NO" >NO</option>
					@else  data-mask="99/99/9999 99:99 am"
						<option name ="YES">YES</option>
						<option name ="NO" selected>NO</option>
					@endif
					</select>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-primary" value="Submit Biodata">
				</div>
				@if (session('alert-failure'))
				<p class="text-warning">{{ session('alert-failure')}}</p>
				@endif
				
			</form>
		</div>
	</div>
</div>
@endsection