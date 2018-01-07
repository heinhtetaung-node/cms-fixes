<div class="table cf_val_table">
      <div class="form-group{{ $errors->has('cf_type1') ? ' has-error' : '' }}">
          <?php $value = (($acf_values!="" )? $acf_values->cf_value1 : "") ?>
          <label class="col-md-2 control-label">{{$acf_group->cf_name1}}</label>

          <div class="col-md-10">
              @if ($acf_group->cf_type1==4 && $value!="")
                    <img src="{{asset('upload/custom_field/'.$value)}}" style="max-height: 70px">
              @endif
              {{CustomField_Type($acf_group->cf_type1,'cf_value1',$value)}}
              @if ($errors->has('$value'))
                  <span class="help-block">
                      <strong>{{ $errors->first('$value') }}</strong>
                  </span>
              @endif
          </div>
      </div>

      <div class="form-group{{ $errors->has('cf_value2') ? ' has-error' : '' }}">
          <?php $value = (($acf_values!="" )? $acf_values->cf_value2: "") ?>
          <label class="col-md-2 control-label">{{$acf_group->cf_name1}}</label>

          <div class="col-md-10">
              @if ($acf_group->cf_type2==4 && $value!="")
                    <img src="{{asset('upload/custom_field/'.$value)}}" style="max-height: 70px">
              @endif
              {{CustomField_Type($acf_group->cf_type2,'cf_value2',$value)}}
              @if ($errors->has('$value'))
                  <span class="help-block">
                      <strong>{{ $errors->first('$value') }}</strong>
                  </span>
              @endif
          </div>
      </div>

      <div class="form-group{{ $errors->has('cf_type3') ? ' has-error' : '' }}">
          <?php $value = (($acf_values!="" )? $acf_values->cf_value3 : "") ?>
          <label class="col-md-2 control-label">{{$acf_group->cf_name3}}</label>

          <div class="col-md-10">
              @if ($acf_group->cf_type3==4 && $value!="")
                    <img src="{{asset('upload/custom_field/'.$value)}}" style="max-height: 70px">
              @endif
              {{CustomField_Type($acf_group->cf_type3,'cf_value3',$value)}}
              @if ($errors->has('$value'))
                  <span class="help-block">
                      <strong>{{ $errors->first('$value') }}</strong>
                  </span>
              @endif
          </div>
      </div>

      <div class="form-group{{ $errors->has('cf_type4') ? ' has-error' : '' }}">
          <?php $value = (($acf_values!="" )? $acf_values->cf_value4 : "") ?>
          <label class="col-md-2 control-label">{{$acf_group->cf_name4}}</label>

          <div class="col-md-10">
              @if ($acf_group->cf_type4==4 && $value!="")
                    <img src="{{asset('upload/custom_field/'.$value)}}" style="max-height: 70px">
              @endif
              {{CustomField_Type($acf_group->cf_type4,'cf_value4',$value)}}
              @if ($errors->has('$value'))
                  <span class="help-block">
                      <strong>{{ $errors->first('$value') }}</strong>
                  </span>
              @endif
          </div>
      </div>

      <div class="form-group{{ $errors->has('cf_type5') ? ' has-error' : '' }}">
          <?php $value = (($acf_values!="" )? $acf_values->cf_value5 : "") ?>

          <label class="col-md-2 control-label">{{$acf_group->cf_name5}}</label>
          <div class="col-md-10">
              @if ($acf_group->cf_type5==4 && $value!="")
                    <img src="{{asset('upload/custom_field/'.$value)}}" style="max-height: 70px">
              @endif
              {{CustomField_Type($acf_group->cf_type5,'cf_value5',$value)}}
              @if ($errors->has('$value'))
                  <span class="help-block">
                      <strong>{{ $errors->first('$value') }}</strong>
                  </span>
              @endif
          </div>
      </div>
</div>
      <?php
          function CustomField_Type($type,$name,$value) {
               switch ($type) {
                 case 1:
                     echo "<input type='text' class='form-control cf_value' name='$name' value='$value' >";
                  break;
                 case 2:
                     echo "<input type='number' class='form-control cf_value' name='$name' value='$value' >";
                  break;
                 case 3:
                    echo "<input type='date' class='form-control cf_value' name='$name' value='$value' >";
                  break;
                 case 4:
                     echo "<input type='file' class='form-control cf_value' name='$name' value='$value' >";
                  break;
                  case 5:
                      echo "<textarea class='form-control cf_value' rows='8' cols='80' name='$name' >$value</textarea>";
                   break;
                 default:
                     echo "<input type='text' class='form-control cf_type'>";

               }
           }
      ?>
