@extends('admin.layout')

@section('styles')
@parent
<!-- your custom css here -->
<style type="text/css">
.alert-success{
  display: block;
  background: #efefef;
  color: green;
}
</style>
@endsection

@section('content')

<div id="content" class="bodylayout"><!-- second common-->
	<div class="well">
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
				<h1 class="page-title txt-color-blueDark"><i class="fa fa-list-ul"></i> Custom Field Lists</h1>
			</div>
		</div>


		<div class="row">
			<form action="{{ route('admin.post.search') }}" method="GET" role="form">
				<div class="form-group col-md-3">
				    <div class="input-group">
				        <input type="text" class="form-control" name="search"
				            placeholder="Search" value="{{ (isset($_GET['search']))? $_GET['search'] : '' }}">
				        </span>
				    </div>
				</div>
			</form>

			<div class="col-md-6">

			</div>
			 <!-- for success message -->
            @if ($message = Session::get('success'))
              <div class="alert alert-success">
                  <p>{{ $message }}</p>
              </div>
             @endif
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<td width="40px;">NO</td>
						<td width="700px;">Name</td>
						<td><input type="submit" class="btn btn-xs btn-default" onclick="window.location.href='{{ route('admin.custom_field.add_new') }}'" value="Add New" ></td>
					</tr>
				</thead>
				<tbody>
					<?php $i=1 ?>
					@foreach($lists as $list)
					<tr>
						<td>{{$i++}}</td>
						<td>
							<a href="{{ route('admin.custom_field.g_view',$list->id) }}">{{$list->group_name}}</a>
						</td>
						<td>
							<input type="submit" class="btn btn-primary" onclick="window.location.href='{{ route('admin.custom_field.g_edit',$list->id) }}'" value="Edit">
              <a href="{{route('admin.custom_field.g_delete',$list->id)}}" class="btn btn-danger g_delete" onclick="return confirm('Are you sure to delete ?')"> Delete</a> </td>
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>

	</div>

		{!! $lists->render() !!}

	<input type="hidden" id="ctr_tocken" value="{{ csrf_token() }}" />
</div>
@endsection

@section('scripts')
@parent

<script type="text/javascript" src="{{ asset('js/getsubfrommain.js') }}"></script>

@endsection
