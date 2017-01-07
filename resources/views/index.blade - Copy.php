<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/bootstrap/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/css/style.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ URL::asset('assets/vegas/vegas.min.css') }}">
</head>
<body>
<div class="container">
	<div class="row table-margin">
	<h1>Biodata List</h1>
		<table class="table table-bordered" style="background-color: #fff;">
			<tr>
				<th>S/N</th>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Email</th>
				<th>Phone No</th>
				<th>Sex</th>
				<th>Created at</th>
				<th>Updated at</th>
				<th>Action</th>
			</tr>
			@foreach($members as $member)
			<tr>
				<td>{{$member->id}}</td>
				<td>{{$member->firstname}}</td>
				<td>{{$member->lastname}}</td>
				<td>{{$member->email}}</td>
				<td>{{$member->phone}}</td>
				<td>{{$member->sex}}</td>
				<td>{{$member->created_at}}</td>
				<td>{{$member->updated_at}}</td>
				<td><a class="text-info" href="">edit</a>|<a class="text-info" href="">view</a>|<a class="text-info href="">delete</a></td>
			</tr>
			@endforeach
		</table>
	</div>
</div>
<script src = "{{URL::asset('assets/scripts/jquery.min.js')}}"></script>
<!-- <script src = "{{URL::asset('assets/bootstrap/js/bootstrap.js')}}"></script> -->
<script src = "{{URL::asset('assets/vegas/vegas.min.js')}}"></script>
<script type="text/javascript">
	$("body").vegas({
		delay: 7000,
		timer: false,
		shuffle: true,
		firstTransition: 'fade',
		firstTransitionDuration: 5000,
		transition: 'slideDown2',
		transitionDuration: 2000,
		slides: [
			{src: "{{URL::asset('assets/img/gideon7.png') }}"},
			{src: "{{URL::asset('assets/img/gideon4.png') }}"},
			{src: "{{URL::asset('assets/img/gideon5.png') }}"},
			{src: "{{URL::asset('assets/img/Gideon6.png') }}"}
		]
	});
</script>
</body>
</html>