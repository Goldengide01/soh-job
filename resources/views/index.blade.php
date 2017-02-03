@extends('layouts.custom')
@section('content')
<div class="container">
	<div class="row" style="color: #000;">
	<h1>Biodata List</h1>
	@if (session('alert-success'))
		<p style="color: white;">{{session('alert-success')}}</p>
	@endif
		<table id="datatables" class="table table-striped table-hover" style="background-image: url({{URL::asset("assets/img/overlays/white.fw.png")}});">
			<thead>
				<tr>
					<th>NAME</th>
					<th>PHONE NUMBER</th>
					<th>EMAIL</th>
					<th>BIRTHDAY</th>
					<th>WEDDING ANNIVERSARY</th>
					<th>GEPI PARTNER</th>
					<!-- <th>Created at</th> -->
					<!-- <th>Updated at</th> -->
					<th>Action<!-- <br><span style="font-weight:bold;" class="text-info">edit view delete</span> --></th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>NAME</th>
					<th>PHONE NUMBER</th>
					<th>EMAIL</th>
					<th>BIRTHDAY</th>
					<th>WEDDING ANNIVERSARY</th>
					<th>GEPI PARTNER</th>
					<!-- <th>Created at</th> -->
					<!-- <th>Updated at</th> -->
					<th>Action<!-- <br><span style="font-weight:bold;" class="text-info">edit view delete</span> --></th>
				</tr>
			</tfoot>
			<tbody>
				@foreach($members as $member)
				<tr>
					<td>{{$member->name}}</td>
					<td>{{$member->phone}}</td>
					<td>{{$member->email}}</td>
					<td>{{$member->birthday}}</td>
					<td>{{$member->wedding_anniversary}}</td>
					<td>{{$member->gepi_partner}}</td>
					<!-- <td>{{$member->created_at}}</td> -->
					<!-- <td>{{$member->updated_at}}</td> -->
					<td>
						<a class="text-primary" href="{{url('/member/view/'.$member->id)}}" title="view"><i class="icon-eye-open"> </i></a> 
						<a class="text-warning" href="{{url('/member/edit/'.$member->id)}}" title="edit"><i class="icon-edit"> </i></a> 
						<a class="text-danger confirm-delete" href="{{url('/member/delete/'.$member->id)}}" title="delete"><i class="icon-remove"> </i></a>
						@if($member->count($member->email) > 1)
						<br><a class="text-danger" href="{{url('/member/merge/'.$member->email)}}" title="merge duplicates"><i class="icon-resize-small"> </i>merge{{$member->count($member->email)}}</a>
						@endif
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
		$('.confirm-delete').click(function() {
			// alert("H!!!!");
			if (confirm("Do you want really want to delete it")) {
				return true;
			}
			else {
				return false;
			}
			return false;
		});
	});
</script>
@endsection