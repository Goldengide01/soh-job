@extends('layouts.custom')
@section('content')
<div class="container">
	<div class="row text-primary">
	<h1>Biodata List</h1>
	@if (session('alert-success'))
		<p style="color: white;">{{session('alert-success')}}</p>
	@endif
		<table id="datatables" class="table table-striped table-hover" style="background-image: url({{URL::asset("assets/img/overlays/white.fw.png")}});">
			<thead>
				<tr>
					<th>S/N</th>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
					<th>Phone No</th>
					<th>Sex</th>
					<th>Created at</th>
					<th>Updated at</th>
					<th>Action<!-- <br><span style="font-weight:bold;" class="text-info">edit view delete</span> --></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>S/N</th>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
					<th>Phone No</th>
					<th>Sex</th>
					<th>Created at</th>
					<th>Updated at</th>
					<th>Action<!-- <br><span style="font-weight:bold;" class="text-info">edit view delete</span> --></th>
				</tr>
			</tfoot>
			<tbody>
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
					<td>
						<a class="text-primary" href="{{url('/member/edit/'.$member->id)}}"><i class="icon-eye-open"></i></a> 
						<a class="text-warning" href="{{url('/member/view/'.$member->id)}}"><i class="icon-edit"> </i></a> 
						<a class="text-danger" href="{{url('/member/delete/'.$member->id)}}"><i class="icon-remove"></i></a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
@endsection
@section('special_plugins_css')
<link rel="stylesheet" type="text/css" href="{{URL::asset("assets/dataTables/css/dataTables.bootstrap.min.css")}}">
@endsection
@section('special_plugins_script')
<script src= "{{URL::asset("assets/dataTables/js/jquery.dataTables.min.js")}}"></script>
<script src= "{{URL::asset("assets/dataTables/js/dataTables.bootstrap.min.js")}}"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#datatables').DataTable();
	});
</script>
@endsection