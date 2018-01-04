<select class="form-control sub_categories" style="width:200px;" name="sub_category_id">
	<option value="0">Please select Categories</option>
	<option value='{{$id}}'></option>
	{!! CategoriesFunctions::SubCategories($id); !!}
</select>
<br><br>
