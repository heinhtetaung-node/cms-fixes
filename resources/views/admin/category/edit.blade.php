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
				<h1 class="page-title txt-color-blueDark"><i class="fa fa-list-ul"></i> Category Create</h1>
			</div>
		</div>
		<div class="row">
			 <!-- for success message -->
            @if ($message = Session::get('success'))
              <div class="alert alert-success">
                  <p>{{ $message }}</p>
              </div>
             @endif

         <div class="form-group" style="margin-top: 30px;">
		<input type="hidden" name="_token"  id="ctr_token" value="<?php echo csrf_token() ?>">
		<label>Category</label>
		<input type="text" class="form-control name" style="width: 200px;" value="{{$name}}">
		<input type="hidden"  class="id" value="{{$self_id}}">
		<br>
		<?php
		//dd($output);
		$length=sizeof($output);
		if($length!=0)
		{
		$id=$output[$length-1];
		$sub_id=$output[0];
		$s_id=$self_id;
		}
		?>
		<input type="hidden"  class="length" value="{{sizeof($output)}}">
		 <div><select class="form-control parent_category" style="width:400px;">
	   @if($length>0)
			{!! CategoriesFunctions::edit_parent_categories($id); !!}
		@endif
		</select>
		</div>
		<br><br>
		@if($length>1)
		<select class="form-control sub_category" style="width:400px;">
			{!! CategoriesFunctions::editt_sub_category($s_id,$id,$sub_id); !!}
		</select>
		@endif
		<div class="sub_cat">

		</div>
		<br>

		<input type="button" class="btn btn-success product_update" value="Update">
</div>

		</div>


	</div>
</div>

@endsection

@section('scripts')
@parent
<!-- your custom script here -->
<script type="text/javascript">
	var changed;
	var sub_changed;
	$(document).ready(function(){
		var size=$('.length').val();
		if(size>1)
		{
			$sub_val=$('.sub_category').val();
		}
		else
		{
			$sub_val=0;
		}
	});
		$(".parent_category").change(function(){
				changed=1;
				$val=$(this).val();
				$('.sub_category').hide();
				jQuery.ajax({
					url : "{{ url('admin/sub_cat') }}/"+$val,
					type : "GET",
					dataType : "html",
					success: function(data){
						$('.sub_cat').html(data);
						$(".sub_categories").change(function(){
							 sub_changed=1;
							$sub_val=$(this).val();
						});
					}
				});
		});

		jQuery(".product_update").click(function(){
			if(sub_changed!=1 && changed==1)
			{
				$sub_val=$('.parent_category').val();
			}
			$id=$('.id').val();
			jQuery.ajax({
					url : "{{ url('admin/category/update') }}",
					type : "POST",
					data : {
						parent_cat : $sub_val,
						name : $('.name').val(),
						parent_changed : changed,
						subcat_changed : sub_changed,
						id : $id,
						_token : $('#ctr_token').val()
					},
					dataType: "json",

			});
		});
	</script>

	<script>
	  $('.alert-success').fadeIn().delay(3000).fadeOut();
	</script>
@endsection
