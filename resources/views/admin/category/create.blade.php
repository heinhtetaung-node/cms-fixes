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
            <div class="well">
                @if ($message = Session::get('success'))
                    <div class="alert alert-success">
                        <p>{{ $message }}</p>
                    </div>
                @endif         
                <div class="form-group add_category" style="margin-top: 30px;">
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
</div>

@endsection

@section('scripts')
@parent
<!-- your custom script here -->
<script type="text/javascript">
        $sub_val=0;
        $('.add_category').delegate('.parent_category', 'change', function(){
            $sub_val=$(this).val();     
            $val=$(this).val(); 
            jQuery.ajax({
                url : "{{url('admin')}}/category/edit/sub_cat/"+$val,
                type : "GET",
                dataType : "html",
                success: function(data){
                 //alert(data.length); 
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
            $sub_val=$(this).val();
        });         
        jQuery(".product_save").click(function(){
            jQuery.ajax({
                    url : "{{url('admin')}}/category/create",
                    type : "POST",
                    data : {
                            parent_cat : $sub_val,
                            name : $('.name').val(),
                             _token : $('#ctr_token').val()
                    },
                    dataType: "json",
                    success:function(data){
                        alert(data.message);
                        window.location="{{url('admin')}}/category";
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