@extends('layouts.custom')
@section('content')
<div class="container">
	<div class="row">
		<div class="place-holder col-xs-12">
			<!-- text, name, placeholder -->
			<!-- <div class="package"></div> -->
			<form action="{{url('/member/add')}}" method="post">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<div class="form-group">
					<label for="firstname">Name</label><br>
					<input type="text" class="form-control" name="name" placeholder="Your name here">
				</div>
				<div class="form-group">
					<label for="email">Phone</label><br>
					<input type="text" class="form-control" name="phone" placeholder="Please Enter full phone with country code preceeding it">
				</div>
				<div class="form-group">
					<label for="email">Email</label><br>
					<input type="text" class="form-control" name="email" placeholder="Email">
				</div>
				<!-- <div class="form-group">
					<label for="email">Upload Pics</label><br>
					<input type="text" class="form-control" name="pics" placeholder="Upload your Pics here">
				</div> -->
				<div class="form-group">
					<label for="lastname">Birthday</label><br>
					<input type="text" class="form-control" name="birthday" placeholder="Select your Birthday" data-mask="99/99/9999 99:99 am">
				</div>
				<div class="form-group">
					<label for="lastname">Wedding Anniversary</label><br>
					<input type="text" class="form-control" name="wedding_anniversary" placeholder="Select your Wedding Anniversary if not leave Blank" data-mask="99/99/9999 99:99 am">
				</div>
				<div class="form-group">
					<label for="lastname">Unit</label><br>
					<input type="text" class="form-control" name="unit" placeholder="unit">
				</div>
				<div class="form-group">
					<label for="gepi">Gepi Partner</label><br>
					<select name="gepi_partner" class="form-control" style="border-radius: 0;">
						<option name ="YES" >YES</option>
						<option name ="NO" selected>NO</option>
					</select>
				</div>
				<!-- <div class="form-group">
					<label for="nationalty">NAtionalty</label><br>
					<select name="country_id" class="form-control" style="border-radius: 0;">
						<option name ="1" >Nigeria</option>
						<option name ="2" >Ghana</option>
					</select>
				</div> -->
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
@section('special_plugins_script')
<script src = "{{URL::asset('assets/datepicker/bootstrap-datepicker.min.js')}}"></script>
<script type="text/javascript">
	$('.mydatepicker').datepicker({
		todayBtn: 1,
		todayHighlight: 1,
	});
</script>
@endsection
@section('special_plugins_css')
<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/datepicker/bootstrap-datepicker.min.css') }}">

@endsection
