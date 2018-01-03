@extends('layouts.main')

@section('styles')
@parent
<!-- your custom css here -->
@endsection

@section('content')

<div class="col-md-6" style="margin-top: 30px;">
	<p style="font-size: 18px;">
		<input type="hidden" name="_token"  id="ctr_token" value="<?php echo csrf_token() ?>">
		 {!! CategoriesFunctions::edit_sub_category(); !!}
		<input type="hidden">
	</p>
</div>

@endsection

@section('scripts')
@parent
<!-- your custom script 