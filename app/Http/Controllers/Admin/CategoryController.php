<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Model\Category;
use Validator;
use App\Http\Classes\helpers;

class CategoryController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cat=Category::where('parent_id', '0')->orderBy('parent_id', 'asc')->get();

        return view('admin.category.index', array('cat' => $cat));
    }

    public function create()
    {
        $cat = Category::pluck('title', 'id');
        return view('admin.category.create', array('cat' => $cat));
    }

    // public function store(Request $request){
    //     $validator = Validator::make($request->all(), [
    //         'title' => 'required|unique:category'
    //     ]);

    //     if ($validator->fails()) {
    //         return redirect()->back()
    //           ->withInput()
    //           ->withErrors($validator);
    //     }

    //     $arr=[
    //             'title' => $request->title,
    //             'description' => ($request->description)? $request->description : '',
    //             'parent_id' => $request->parent_id,
    //             'main_or_sub' => ($request->parent_id==0)? 0 : 1
    //         ];

    //     $res=Category::create($arr);

    //     return redirect()->route('admin.category');
    // }

    // public function delete($id)
    // {
    //   $category = Category::find($id)->delete();
    //   return redirect()->back()->with('success','Category is successfully deleted!');
    // }

    // category added by Hnin
    public function save(Request $request)
    {
      $data = array(
                      'title'=>$request->name,
                      'parent_id'=>$request->parent_cat ,
              );
      Category::insert($data);
     return json_encode(["status"=>0,"message"=>"Has been created!!"]);
    }
    public function rev_edit($id)
    {
      global $cat;
      $rev_out=Category::where('id','=',$id)->get();
      if($rev_out[0]['parent_id']!=0){
      $cat[]=$rev_out[0]['id'];
      $this->rev_edit($rev_out[0]['parent_id']);
      }
      else
      {
        $cat[]=$rev_out[0]['id'];
      }
      //dd($cat);
      return($cat);
    }

  public function edit($id)
  {
      $data=[];
      $cat=[];
    $output=Category::where('id','=',$id)->get();
    $name=$output[0]['title'];
    $pid=$output[0]['parent_id'];
    if($pid!=0)
    {
    $data=$this->rev_edit($pid);
    return view('admin.category.edit')->with('output',$data)
                  ->with('self_id',$id)
                  ->with('name',$name);
    }
    else{
      return view('admin.category.edit')->with('output',$data)
                    ->with('self_id',$id)
                    ->with('name',$name);
    }
  }



  public function sub_cat($id)
  { 
    return view('admin.category.sub_cat')->with('id',$id);
  }

  public function parameter_sub_cat($edit_id,$id)
  { 
    return view('admin.category.sub_cat')->with('id',$id);
  }


  public function update(Request $request)
  {
    $change_data=Category::where('id','=',$request->id)->get();
    $parent_id=$change_data[0]['parent_id'];
    $output=Category::where('parent_id','=',$request->id)->get();
    if(($request->subcat_changed==1 && sizeof($output)>0)||($request->parent_changed==1 && sizeof($output)>0))      
    {
      foreach($output as $child)
      {
        $child_data=array(
              'id'=>$child['id'],
              'title'=>$child['title'],
              'parent_id'=>$parent_id,
            );
        Category::where('id','=', $child['id'])->update($child_data);
      }
    }
      $data= array(
          'id'=>$request->id,
                    'title'=>$request->name,
                    'parent_id'=>$request->parent_cat ,
        );

        Category::where('id','=', $request->id)->update($data);
       return json_encode(["status"=>0,"message"=>"Has been updated!!"]); 
  }

    public function delete($id)
    {
      $input=Category::where('id','=',$id)->get();
      $childs=Category::where('parent_id','=',$id)->get();
      if(sizeof($childs)>0)
      {
        foreach($childs as $data)
        {
            $change_parent=array(
                   'id'=>$data['id'],
                    'title'=>$data['title'],
                    'parent_id'=>$input[0]['parent_id'],
                  );
        Category::where('id','=',$data['id'])->update($change_parent);
        }
      }
      Category::where('id','=',$id)->delete();

       return redirect()->back()->with('success','Category is successfully deleted!');
    }


}
