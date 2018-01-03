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
			<!-- <form class="form-horizontal" role="form" method="POST" action="{{ route('admin.category.store') }}">
                {!! csrf_field() !!}
				<div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                    <label class="col-md-4 control-label">Category Name</label>

                    <div class="col-md-6">
                        <input type="text" class="form-control" name="title" value="{{ old('title') }}">

                        @if ($errors->has('title'))
                            <span class="help-block">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                    <label class="col-md-4 control-label">Description</label>

                    <div class="col-md-6">
                        <textarea class="form-control" name="description">{{ old('description') }}</textarea>

                        @if ($errors->has('description'))
                            <span class="help-block">
                                <strong>{{ $errors->first('description') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>

                <div>
                    <label class="col-md-4 control-label">Parent Category</label>

                    <div class="col-md-6">
                        <select class="form-control" name="parent_id">
                            <option value="0"></option>
                            @foreach($cat as $key=>$value)
                                <option value="{{ $key }}">{{ $value }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <br>
                        <button type="submit" class="btn btn-primary">
                            Add
                        </button>
                    </div>
                </div>
            </form>
 -->
          <div class="form-group" style="margin-top: 30px;">
        <input type="hidden" name="_token"  id="ctr_token" value="<?php echo csrf_token() ?>">
        <label>Insert category</label>
        <input type="text" class="form-control name" style="width: 200px;"><br>
        <select class="form-control parent_category" style="width:400px;">
            <option>Please select parent category</option>
            {!! CategoriesFunctions::parent_categories(); !!}
        </select>
        <br><br>
        <div class="sub_cat"></div>
        <input type="button" class="btn btn-success product_save" value="Save">
    </div>
    
        
		</div> 


	</div>
</div>

@endsection

@section('scripts')
@parent
<!-- your custom script here -->
<script type="text/javascript">
        $(".parent_category").change(function(){    
                $sub_val=$(this).val();     
                $val=$(this).val(); 
                jQuery.ajax({
                    url : "http://localhost/cms-fixes/public/admin/sub_cat/"+$val,
                    type : "GET",
                    dataType : "html",
                    success: function(data){ 
                        $('.sub_cat').html(data);                       
                        $(".sub_categories").change(function(){
                            $sub_val=$(this).val();
                        });      
                    }      
                });
        });         

        jQuery(".product_save").click(function(){
            jQuery.ajax({
                    url : "http://localhost/cms-fixes/public/admin/category/create",
                    type : "POST",
                    data : {parent_cat : $sub_val,name : $('.name').val(), _token : $('#ctr_token').val() },
                    dataType: "json",
               
            });
        });
    </script>

    <script>
      $('.alert-success').fadeIn().delay(3000).fadeOut();
    </script>
@endsection