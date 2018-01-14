@extends('admin.layout')

@section('styles')
@parent
<!-- your custom css here -->
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
			<div class="form-group add_category" style="margin-top: 30px;">
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
				@if($length!=0)				
					<input type="hidden"  class="length" value="{{sizeof($output)}}">
					<div>
						<!-- to show parents -->
					 	<select class="form-control parent_category" style="width:400px;">
								{!! CategoriesFunctions::edit_parent_categories($id); !!}
						</select>
					</div>
				@endif
					<br><br>
					<!-- to show sub-categories -->
					@if($length>1)
					<select class="form-control sub_categories" style="width:400px;">
						{!! CategoriesFunctions::editt_sub_category($s_id,$id,$sub_id); !!}
					</select>
					@endif
				<div class="sub_cat">
					<!-- to show sub of sub-categories -->
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
		if(size==1)
		{
			$sub_val=$('.parent_category').val();
		}
		else if(size==null)
		{
			$sub_val=0;
		}
		else
		{
			$sub_val=$('.sub_category').val();
		}
	});
		$('.add_category').delegate('.parent_category', 'change', function(){
				changed=1;
				$val=$(this).val();
				$('.sub_categories').hide();
				jQuery.ajax({
					url : "http://localhost/cms-fixes/public/admin/category/edit/sub_cat/"+$val,
					type : "GET",
					dataType : "html",
					success: function(data){
						if(data.length >209)
	                    {
	                        $('.sub_cat').html(data);   
	                        $('.sub_cat').show();                
	                    }
	                    else
	                    {
	                        $('.sub_cat').hide();
	                    }						
					}
				});
		});
		$('.add_category').delegate('.sub_categories', 'change', function() {
			sub_changed=1;
			$sub_val=$(this).val();
		});
			//alert($sub_val);
		jQuery(".product_update").click(function(){
			if(sub_changed!=1 && changed==1)
			{
				$sub_val=$('.parent_category').val();
			}
			$id=$('.id').val();
			jQuery.ajax({
					url : "http://localhost/cms-fixes/public/admin/category/update",
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
					success:function(data){
                        alert(data.message);
                        window.location="http://localhost/cms-fixes/public/admin/category";
                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                       alert("Someting wrong");
                    }             

			});
		});
	</script>

	<script>
	  $('.alert-success').fadeIn().delay(3000).fadeOut();
	</script>
@endsection
