<?php
namespace App\CustomHelpers;
use App\Model\Category;
use App\Controller\CategoryController;
class CategoriesFunctions1
{

	public static function show_sub_category()
	{	
		$j=1;
		$output=Category::where('parent_id','=',0)->get();
		foreach($output as $c)
		{	
			echo "<option value='$c->id'>"."-".$c->title."</option>";			
			 self::SubCategories($c->id);			
     	}
	}

	public static function SubCategories ($id)
	{	global $j;
		$cats=Category::where('parent_id','=',$id)->get();
		if($cats!=null){
			 $j++;
			foreach($cats as $s)
			{
				echo "<option value='$s->id'>";
			  for($i=0;$i<$j;$i++)
				{
					echo "-- ";	
				}
				echo $j.$s->title."</option>";
	         	self::SubCategories($s->id);          	        
	     	}
	     	$j=$j-1;  
	    }
	    else{
	    	echo "0";
	    }
	}
	public static function parent_categories()
	{
		$parent_cat=Category::where('parent_id','=',0)->get();
		foreach($parent_cat as $p_cat)
			{
				echo "<option value='$p_cat->id'>".$p_cat->title."</option>";
			}
	}
	public static function edit_parent_categories($id)
	{
		$parent_cat=Category::where('parent_id','=',0)->get();
		foreach($parent_cat as $p_cat)
		{	
			$selected = "";
			if(($p_cat->id)==$id)
			{
				$selected = "selected";
			}
			echo "<option ".$selected." value='$p_cat->id'>".$p_cat->title."</option>";
		}
	}



	public static function editt_sub_category($self_id,$parent_id,$id)
	{	
		$j=1;
		$output=Category::where('parent_id','=',$parent_id)->get();
		foreach($output as $c)
		{	
			$selected = "";
			$disabled="";
			if($c->id==$id)
			{
				$selected="selected";
			}
			if($c->id==$self_id){
				$disabled="disabled";
			}
			echo "<option ".$selected.$disabled." value='$c->id'>"."-".$c->title."</option>";			
			 self::edit_SubCategories($c->id,$id,$self_id);		
     	}
     	
	}

	public static function edit_SubCategories ($id,$sel_id,$self_id)
	{	
		global $j;
		$cats=Category::where('parent_id','=',$id)->get();
		if($cats!=null){
			 $j++;
			foreach($cats as $s)
			{	
				$selected="";
				$disabled="";
				if($s->id == $sel_id)
				{
					$selected=" selected "; 
	         	}  
	         	if($s->id == $self_id) 
	         	{
	         		$disabled=" disabled ";	
	         	}
	         		echo "<option ".$selected." ".$disabled." value='$s->id'>";
				  	for($i=0;$i<$j;$i++)
					{
						echo "-- ";	
					}
					echo $j.$s->title."</option>";
		         	self::edit_SubCategories($s->id,$sel_id,$self_id);  	        
	     	}
	     	 $j=$j-1;  
	    }
	    else{
	    	echo "0";
	    }
	}


	public static function edit_sub_category()
	{	
		$j=1;
		$output=Category::where('parent_id','=',0)->get();
		foreach($output as $c)
		{	
			echo "--".$c->title.'&nbsp;&nbsp;[<a href="'.url('admin/category/edit/'.$c->id).'">edit</a>]';
			echo "<br><br>";		
			self::editSubCategories($c->id);			
     	}
	}

	public static function editSubCategories ($id)
	{	global $j;
		$cats=Category::where('parent_id','=',$id)->get();
		 $j++;
		foreach($cats as $s)
		{
		  for($i=0;$i<$j;$i++)
			{
				echo "----";	
			}
			echo $j.$s->title.'&nbsp;&nbsp;[<a href="'.url('admin/category/edit/'.$s->id).'">edit</a>]  [<a href="'.url('admin/category/delete/'.$s->id).'">Delete</a>]';
			echo "<br><br>";
         	self::editSubCategories($s->id);          	        
     	}
     	$j=$j-1;  
	}		
}
?>