@extends('layouts.custom')
@section('content')
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4 col-sm-3 hidden-xs"></div>
		<div class="place-holder col-md-4 col-sm-6 col-xs-12">
			<!-- text, name, placeholder -->
			<!-- <div class="package"></div> -->
			<form action="{{url('/member/edit')}}" method="post">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<input type="hidden" name="id" value="{{ $member->id }}">
				<div class="form-group">
					<label for="firstname">Firstname</label><br>
					<input type="text" class="form-control" name="firstname" value="{{ $member->firstname}} ">
				</div>
				<div class="form-group">
					<label for="lastname">Lastname</label><br>
					<input type="text" class="form-control" name="lastname" value="{{ $member->lastname}} ">
				</div>
				<div class="form-group">
					<label for="email">Email</label><br>
					<input type="text" class="form-control" name="email" value="{{ $member->email}} ">
				</div>
				<div class="form-group">
					<label for="email">Phone</label><br>
					<input type="text" class="form-control" name="phone" value="{{ $member->phone}} ">
				</div>
				<div class="form-group">
					<label for="sex">Sex</label><br>
					<select name = "sex" class="form-controls">
						<option name ="male" >Male</option>
						<option name ="female" >Female</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" class="form-control" value="Submit Biodata">
				</div>
				@if (session('alert-failure'))
				<p class="text-warning">{{ session('alert-failure')}}</p>
				@endif
				
			</form>
		</div>
		<div class="col-md-4 col-sm-3 hidden-xs"></div>
	</div>
</div>
@endsection