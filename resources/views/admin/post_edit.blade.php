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
				<h1 class="page-title txt-color-blueDark"><i class="fa fa-list-ul"></i> Post Edit</h1>
			</div>
		</div>
		<div class="row">
			<form class="form-horizontal add_category" enctype="multipart/form-data" role="form" method="POST" action="{{ route('admin.post.update',$posts->id) }}">
                {!! csrf_field() !!}
				<input type="hidden" class="post_id" name="post_id" value="{{$posts->id}}">
				<div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Post Title</label>

                    <div class="col-md-9">
                        <input type="text" class="form-control" name="title" value="{{ $posts->title }}">

                        @if ($errors->has('title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>
                    <?php 
                    $id=$posts->main_category_id;            
                    ?>
                <div class="form-group{{ $errors->has('main_category_id') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Main Category</label>

                    <div class="col-md-9">
                        
                        <select class="form-control parent_category" name="main_category_id" id="ctr_parent_id">
                            {!! CategoriesFunctions::edit_parent_categories($id); !!}
                        </select>
                        @if ($errors->has('main_category_id'))
                            <span class="help-block">
                                <strong>{{ $errors->first('main_category_id') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>
                @if($posts->sub_category_id!=0)
                <div class="form-group{{ $errors->has('sub_category_id') ? ' has-error' : '' }}" id="original_sub_categoires">
                    <label class="col-md-2 control-label">Sub Category</label>
                    <div class="col-md-9">
                        <select id="ctr_sub_id" class="form-control" name="sub_category_id">
                            <option value="{{ isset($posts->SubCategory->id) ? $posts->SubCategory->id : ''}}" selected>{{ isset($posts->SubCategory->title)? $posts->SubCategory->title : '' }}</option>

                            @foreach($subcat as $sc)
                                @if($sc->parent_id==$posts->main_category_id && $posts->SubCategory->id!=$sc->id))
                                    <option value="{{ $sc->id }}">{{ $sc->title }}</option>
                                @endif
                            @endforeach
                        </select>
                      </div>
                </div>
                @endif
                <div class="form-group{{ $errors->has('sub_category_id') ? ' has-error' : '' }}" id="sub_category_div">
                    <label class="col-md-2 control-label">Sub Category</label>
                    <div class="col-md-9 sub_cat">

                    </div>
                </div>

                <div class="form-group{{ $errors->has('feature_photo') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Feature Photo</label>

                    <div class="col-md-9">
                        <img src="{{ asset('upload/posts/'. $posts->feature_photo) }}" style="max-height: 300px">
                        <input type="file" class="form-control" name="feature_photo">@if ($errors->has('feature_photo'))
                            <span class="help-block">
                                <strong>{{ $errors->first('feature_photo') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('attach_file') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Attach File</label>

                    <div class="col-md-9">
                        {{ $posts->attach_file }}
                        <input type="file" class="form-control" name="attach_file" >
                        @if ($errors->has('attach_file'))
                            <span class="help-block">
                                <strong>{{ $errors->first('attach_file') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('short_description') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Short Description</label>
                    <div class="col-md-9">
	                        <textarea class="form-control" name="short_description">{{ $posts->short_description }}</textarea>
	                        @if ($errors->has('short_description'))
	                            <span class="help-block">
	                                <strong>{{ $errors->first('short_description') }}</strong>
	                            </span>
	                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('detail_photo') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Detail Photo</label>
                    <div class="col-md-9">
                        <img src="{{ asset('upload/posts/'. $posts->detail_photo) }}" style="max-height: 300px">
                        <input type="file" class="form-control" name="detail_photo">@if ($errors->has('detail_photo'))
                            <span class="help-block">
                                <strong>{{ $errors->first('detail_photo') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('detail_description') ? ' has-error' : '' }}">
                    <label class="col-md-2 control-label">Detail Description</label>
                    <div class="col-md-9">
                        <textarea class="form-control" id="summernote" style="height:300px" name="detail_description">{{ $posts->detail_description}}</textarea>
                        @if ($errors->has('detail_description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('detail_description') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>
                <hr>
								<div class="form-group{{ $errors->has('acf_group') ? ' has-error' : '' }}">
											<label class="col-md-2 control-label">Coustom Field Lists </label>
											<div class="col-md-9">
														<select class='form-control acf_group' name='acf_group'>
																 <option value='0'>None</option>
																 {{CustomFieldGroup($cf_lists,$cfl_group_id)}}
														</select>
														@if ($errors->has('acf_group'))
																<span class="help-block">
																		<strong>{{ $errors->first('acf_group') }}</strong>
																</span>
														@endif
												<br>
												<div class="acf_group_value">

												</div>
										</div>
								</div>
								<hr>
								<div class="form-group{{ $errors->has('acf_group') ? ' has-error' : '' }}">
									 <label class="col-md-2 control-label">Custom Field Details</label>
									 <div class="col-md-9">
												 <table class="table myTable">
														<thead >
																<th>
																		<div class="col-md-3">
																			Custom Field Name
																		</div>
																	 <div class="col-md-3">
																			Custom Field Type
																		</div>
																	 <div class="col-md-5">
																			Custom Field value
																		</div>
																	 <div class="col-md-1">
																	 </div>
															 </th>
														</thead>
														<tbody>
																@if ($cf_details!=null)
																		 @foreach ( $cf_details as $detail )
																					 {{customField_details($detail->cf_name,$detail->cf_type,$detail->cf_value,$detail->id)}}
																		 @endforeach
																@endif
														</tbody>
												</table>
												<button type="button" class="btn btn-success add_acf_detail">Add Field</button><br>
									 </div>
							 </div>
							 <hr>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-6">
                        <br>
                        <button type="submit" class="btn btn-primary">
                            Update
                        </button>
                    </div>
                </div>
            </form>
		</div>
	</div>
    <input type="hidden" id="ctr_tocken" value="{{ csrf_token() }}" />
</div>

@endsection

@section('scripts')
@parent

<script type="text/javascript" src="{{ asset('js/getsubfrommain.js') }}"></script>
<script>
    $(document).ready(function() {
			$('table.myTable > tbody > tr').each(function(){
				var i=$(this).find('.cf_detail_type').val();

        $(this).find('#img').hide();
				$(this).find('#input1').hide();
				$(this).find('#input1').attr('disabled', 'true');

        $(this).find('#img').hide();
				$(this).find('#input2').hide();
				$(this).find('#input2').attr('disabled', 'true');

        $(this).find('#img').hide();
				$(this).find('#input3').hide();
				$(this).find('#input3').attr('disabled', 'true');

        $(this).find('#img').hide();
				$(this).find('#input4').hide();
				$(this).find('#input4').attr('disabled', 'true');

        $(this).find('#img').hide();
				$(this).find('#input5').hide();
				$(this).find('#input5').attr('disabled', 'true');

				$(this).find('#input'+i).show();
				$(this).find('#input'+i).removeAttr('disabled');

				if (i==4) {
							$(this).find('#img').show();
				}

			});

			if ($('.acf_group').val()!=0) {

					 var val = $('select.acf_group').val();
           cusurl = "{{ url("admin/custom_field") }}/get_acf_group/"+val;
					 var post_id = ($('.post_id').val() ? $('.post_id').val() : '');
					 $.ajax({
								 url : cusurl,
								 type: 'GET',
								 dataType : 'html',
								 data : {
									 post_id : post_id,
								 },
								 success: function(response)
								 {
										console.log(response);
										$(".acf_group_value").html(response);
								 },
								 error: function(error){
										 alert("Something went wrong!")
								 }
					 });
			}

        $('#summernote').summernote({
               height: 300,                 // set editor height
               minHeight: null,             // set minimum height of editor
               maxHeight: null,             // set maximum height of editor
               focus: true
        });
    });

$('#sub_category_div').hide();
    $sub_val=0;
    $('#ctr_sub_id').val(0);
    $('.add_category').delegate('.parent_category', 'change', function(){
        $('#original_sub_categoires').hide();
        $sub_val=$(this).val();     
        $val=$(this).val(); 
        jQuery.ajax({
            url : "edit/sub_cat/"+$val,
            type : "GET",
            dataType : "html",
            success: function(data){ 
                //alert(data.length);
                if(data.length >209)
                {
                    $('.sub_cat').html(data);
                    $('#sub_category_div').show();   
                    $('.sub_cat').show();                
                }
                else
                {
                    $('.sub_cat').hide();
                    $('#sub_category_div').hide();   
                }
            }      
        });
    });
    $('.add_category').delegate('.sub_categories', 'change', function() {   
            $sub_val=$(this).val();
    }); 
  </script>
@endsection
<?php
    function customField_details($name,$type,$value,$id)
		{
			   $src="";
			   if ($type==4 && $id!=0)
				 {
					  $src=asset("upload/custom_field/$value");
			   }
         $img="<img src='$src' id='img' style='max-height: 70px' style='display:none'>";

         switch ($type) {
             case 1:
									 echo "<tr><td>";
									 echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
									 echo	"<div class='form-group'>
																 <div class='col-md-3'>
																		 <input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
																 </div>
																 <div class='col-md-3'>
																      <select class='form-control cf_detail_type' name='cf_detail_type[]' >
																					 <option value='1' selected>Text</option>
																			 </select>
																 </div>
																 <div class='col-md-5'>
																       $img
																			 <input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none' value='$value' >
																			 <input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' style='display:none' >
																			 <input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' style='display:none' >
																			 <input type='file' name='cf_file[]' class='form-control cf_detail_value' id='input4' style='display:none' >
																			 <textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' style='display:none ' ></textarea>
																 </div>
																 <div  class='col-md-1'>
																       <span class='btn btn-link pull-right remove' data-id='$id'>X</span>
																 </div>
													  </div>
														</td></tr>";
                  break;
           case 2:
								 echo "<tr><td>";
								 echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
								 echo	"<div class='form-group'>
															 <div class='col-md-3'>
																	 <input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
															 </div>
															 <div class='col-md-3'>
																		<select class='form-control cf_detail_type' name='cf_detail_type[]' >
																				 <option value='2' selected>Number</option>
																		 </select>
															 </div>
															 <div class='col-md-5'>
															       $img
																		 <input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none'  >
																		 <input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' value='$value' style='display:none' >
																		 <input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' style='display:none' >
																		 <input type='file' name='cf_file[]' class='form-control cf_detail_value' id='input4' style='display:none' >
																		 <textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' style='display:none ' ></textarea>
															 </div>
															 <div  class='col-md-1'>
																		 <span class='btn btn-link pull-right remove' data-id='$id'>X</span>
															 </div>
													</div>
													</td></tr>";
			                 break;
           case 3:
								 echo "<tr><td>";
								 echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
								 echo	"<div class='form-group'>
															 <div class='col-md-3'>
																	 <input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
															 </div>
															 <div class='col-md-3'>
																		<select class='form-control cf_detail_type' name='cf_detail_type[]' >
																				 <option value='3' selected>Date</option>
																		 </select>
															 </div>
															 <div class='col-md-5'>
															       $img
																		 <input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none'  >
																		 <input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' style='display:none' >
																		 <input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' value='$value' style='display:none' >
																		 <input type='file' name='cf_file[]' class='form-control cf_detail_value' id='input4' style='display:none' >
																		 <textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' style='display:none ' ></textarea>
															 </div>
															 <div  class='col-md-1'>
																		 <span class='btn btn-link pull-right remove' data-id='$id'>X</span>
															 </div>
													</div>
													</td></tr>";
			                 break;
           case 4:
								 echo "<tr><td>";
								 echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
								 echo	"<div class='form-group'>
															 <div class='col-md-3'>
																	 <input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
															 </div>
															 <div class='col-md-3'>
																		<select class='form-control cf_detail_type' name='cf_detail_type[]' >
																				 <option value='4' selected>Image/File</option>
																		 </select>
															 </div>
															 <div class='col-md-5'>
															       $img
																		 <input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none'  >
																		 <input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' style='display:none' >
																		 <input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' style='display:none' >
																		 <input type='file' name='cf_file_old[]' class='form-control cf_detail_value' id='input4' value='$value' style='display:none' >
																		 <input type='hidden' name='cf_file_id[]' class='form-control cf_file_id' value='$id'>
																		 <input type='hidden' name='cf_detail_value[]' class='form-control cf_detail_value' value='$value'>
																		 <textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' style='display:none ' ></textarea>
															 </div>
															 <div  class='col-md-1'>
																		 <span class='btn btn-link pull-right remove' data-id='$id'>X</span>
															 </div>
													</div>
													</td></tr>";
			                 break;
            case 5:
									echo "<tr><td>";
									echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
									echo	"<div class='form-group'>
																<div class='col-md-3'>
																		<input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
																</div>
																<div class='col-md-3'>
																		 <select class='form-control cf_detail_type' name='cf_detail_type[]' >
																					<option value='5' selected>Textarea</option>
																			</select>
																</div>
																<div class='col-md-5'>
																      $img
																			<input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none'  >
																			<input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' style='display:none' >
																			<input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' style='display:none' >
																			<input type='file' name='cf_file[]' class='form-control cf_detail_value' id='input4' style='display:none' >
																			<textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' value='$value'  style='display:none ' ></textarea>
																</div>
																<div  class='col-md-1'>
																			<span class='btn btn-link pull-right remove' data-id='$id'>X</span>
																</div>
													 </div>
													 </td></tr>";
                  break;
           default:
									 echo "<tr><td>";
									 echo "<input type='hidden' name='cf_detail_id[]' class='cf_detail_id' value='$id'>";
									 echo	"<div class='form-group'>
																 <div class='col-md-3'>
																		 <input type='text' class='form-control cf_detail_name' name='cf_detail_name[]' value='$name' >
																 </div>
																 <div class='col-md-3'>
																			<select class='form-control cf_detail_type' name='cf_detail_type[]' >
																					 <option value='1' selected>Text</option>
																					 <option value='2'>Number</option>
																					 <option value='3'>Date</option>
																					 <option value='4'>Image/File</option>
																					 <option value='5'>Textarea</option>
																			 </select>
																 </div>
																 <div class='col-md-5'>
																			 <input type='text' name='cf_detail_value[]' class='form-control cf_detail_value' id='input1' style='display:none' value='$value' >
																			 <input type='number' name='cf_detail_value[]' class='form-control cf_detail_value' id='input2' style='display:none' >
																			 <input type='date' name='cf_detail_value[]' class='form-control cf_detail_value' id='input3' style='display:none' >
																			 <input type='file' name='cf_file[]' class='form-control cf_detail_value' id='input4' style='display:none' >
																			 <textarea name='cf_detail_value[]' rows='5' cols='50' class='form-control cf_detail_value' id='input5' style='display:none ' ></textarea>
																 </div>
																 <div  class='col-md-1'>
																			 <span class='btn btn-link pull-right remove' data-id='$id'>X</span>
																 </div>
														</div>
														</td></tr>";

         }
     }

    function CustomFieldGroup($array,$cfl_group_id)
     {
              foreach ($array as $value)
              {
                   $selected=(($value->id==$cfl_group_id) ? "selected" : '');
                   echo "<option value='$value->id' $selected > $value->group_name </option>";
               }
          return;
     }
?>
