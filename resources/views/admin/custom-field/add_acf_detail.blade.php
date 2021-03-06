<tr>
  <td>
    <input type="hidden" name="cf_detail_id[]" class="cf_detail_id" value="0">
    <div class="form-group{{ $errors->has('cf_detail_name') ? ' has-error' : '' }}">
          <div class="col-md-3">
              <input type="text" name="cf_detail_name[]" class="form-control cf_detail_name" required>
              @if ($errors->has('cf_detail_name'))
                  <span class="help-block">
                      <strong>{{ $errors->first('cf_detail_name') }}</strong>
                  </span>
              @endif
          </div>
          <div class="col-md-3">
                   <select class="form-control cf_detail_type" name="cf_detail_type[]" required>
                         <option value="1">Text</option>
                         <option value="2">Number</option>
                         <option value="3">Date</option>
                         <option value="4">Image/File</option>
                         <option value="5">Textarea</option>
                    </select>
                    @if ($errors->has('cf_detail_type'))
                        <span class="help-block">
                            <strong>{{ $errors->first('cf_detail_type') }}</strong>
                        </span>
                    @endif
          </div>
          <div class="col-md-5">
                  <input type="text" name="cf_detail_value[]" class="form-control cf_detail_value" id="input1" style="display:none" required>
                  <input type="number" name="cf_detail_value[]" class="form-control cf_detail_value" id="input2" style="display:none" required>
                  <input type="date" name="cf_detail_value[]" class="form-control cf_detail_value" id="input3" style="display:none" required>
                  <input type="file" name="cf_file[]" class="form-control cf_detail_value" id="input4" style="display:none" required>
                  <input type='hidden' name='cf_file_id[]' class='form-control' id='cf_file_id' value='0'>
                  <textarea name="cf_detail_value[]" rows="5" cols="50" class="form-control cf_detail_value" id="input5" style="display:none" required></textarea>
                    @if ($errors->has('cf_detail_value'))
                        <span class="help-block">
                            <strong>{{ $errors->first('cf_detail_value') }}</strong>
                        </span>
                    @endif
          </div>
          <div class="col-md-1">
               <span class="btn btn-link pull-right remove" data-id="0">X</span>
          </div>
    </div>
  </td>
</tr>

<script>
$(document).ready(function(){
      var  tr = $('.myTable tbody tr:last');

      tr.find('#input1').hide();
      tr.find('#input1').attr('disabled', 'true');

      tr.find('#input2').hide();
      tr.find('#input2').attr('disabled', 'true');

      tr.find('#input3').hide();
      tr.find('#input3').attr('disabled', 'true');

      tr.find('#input4').hide();
      tr.find('#input4').attr('disabled', 'true');

      tr.find('#input5').hide();
      tr.find('#input5').attr('disabled', 'true');

      tr.find('#input1').show();
      tr.find('#input1').removeAttr('disabled');
});
</script>
