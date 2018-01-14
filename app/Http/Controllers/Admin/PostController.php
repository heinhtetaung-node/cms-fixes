<?php
namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\custom_field\CustomField;
use App\Model\custom_field\CustomFieldValue;
use App\Model\custom_field\CustomFieldDetail;
use App\Model\Post;
use App\Model\Category;
use App\Form;
use Validator;
class PostController extends Controller
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
        $cat = Category::where('parent_id','=', '0')->pluck('title', 'id');
        $posts= Post::orderby('updated_at', 'desc')->paginate(10);
        return view('admin.post',['posts'=>$posts, 'cat'=>$cat, 'subcat'=>array()]);
    }
    public function getsub(Request $r)
    {
        $main_category_id = $r->parent_id;
        $subcat = Category::where('parent_id','=', $main_category_id)->get();
        foreach ($subcat as $s) {
            echo "<option value='".$s->id."'>".$s->title."</option>";
        }
    }
    public function create()
    {
        $acf=CustomField::all();
        $cat = Category::where('parent_id', '0')->orderBy('parent_id', 'asc')->get();
        $subcat = Category::where('parent_id','!=', '0')->orderBy('parent_id', 'asc')->get();
        return view('admin.post_create', array('cat' => $cat, 'subcat'=>$subcat,'acf'=>$acf));
    }
    public function store(Request $request){
        // 'title', 'main_category_id', 'sub_category_id', 'short_description', 'feature_photo', 'detail_description', 'detail_photo', 'custom_field1', 'custom_field2', 'custom_field3', 'custom_field4', 'custom_field5'
        $request['cf_value1']=(isset($request['cf_value1']) ? $request['cf_value1']  : "");
        $request['cf_value2']=(isset($request['cf_value2']) ? $request['cf_value2']  : "");
        $request['cf_value3']=(isset($request['cf_value3']) ? $request['cf_value3']  : "");
        $request['cf_value4']=(isset($request['cf_value4']) ? $request['cf_value4']  : "");
        $request['cf_value5']=(isset($request['cf_value5']) ? $request['cf_value5']  : "");
        $get_cf_name=(isset($request['cf_detail_name']) ? $request['cf_detail_name']  : "");
        $get_cf_type=(isset($request['cf_detail_type']) ? $request['cf_detail_type']  : "");
        $get_cf_value=(isset($request['cf_detail_value']) ? $request['cf_detail_value']  : "");
        $get_cf_file=(isset($request['cf_file']) ? $request['cf_file']  : "");

        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'category_id' => 'required',
            'short_description' => 'required',
            'feature_photo' => 'required',
            'detail_description' => 'required',
            'attach_file'=>'max:50000',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
              ->withInput()
              ->withErrors($validator);
        }

        $structure= "upload/posts/";
        $feature_photo="";

        if($request->file('feature_photo')!=NULL){
            $file = $request->file('feature_photo');
            if($file->getClientOriginalExtension()=="jpg" || $file->getClientOriginalExtension()=="jpeg" || $file->getClientOriginalExtension()=="JPG" || $file->getClientOriginalExtension()=="png" || $file->getClientOriginalExtension()=="PNG" || $file->getClientOriginalExtension()=="gif" || $file->getClientOriginalExtension()=="GIF"){
              $feature_photo = $file->getClientOriginalName();
              $file->move($structure, $feature_photo);
            }
        }

        $attach_file="";
        if($request->file('attach_file')!=NULL){
            $file = $request->file('attach_file');
            if($file->getClientOriginalExtension()=="pdf" || $file->getClientOriginalExtension()=="mp4"){
                $attach_file = $file->getClientOriginalName();
                $file->move($structure, $attach_file);
            }
        }

        $detail_photo="";
        if($request->file('detail_photo')!=NULL){
              $file = $request->file('detail_photo');
              if($file->getClientOriginalExtension()=="jpg" || $file->getClientOriginalExtension()=="jpeg" || $file->getClientOriginalExtension()=="JPG" || $file->getClientOriginalExtension()=="png" || $file->getClientOriginalExtension()=="PNG" || $file->getClientOriginalExtension()=="gif" || $file->getClientOriginalExtension()=="GIF"){
                $detail_photo = $file->getClientOriginalName();
                $file->move($structure, $detail_photo);
              }
        }

        $arr=[
                'title' => $request->title,
                'main_category_id' => $request->category_id,
                'sub_category_id' => ($request->sub_category_id)?$request->sub_category_id : '0',
                'short_description' => ($request->short_description)? $request->short_description : '',
                'feature_photo' => $feature_photo,
                'attach_file' => $attach_file,
                'detail_description' => ($request->detail_description)? $request->detail_description : '',
                'detail_photo' => $detail_photo,
            ];

        $post_id=Post::insertGetId($arr);

        $group['cfl_group_id']=$request['acf_group'];
        $group['post_id']=$post_id;

        // get acf_list_value
        if ($request['acf_group']!=0)
        {
             $group['cf_value1']=($request->hasFile('cf_value1'))
                   ? PostController::img_name($request['cf_value1'])
                   : $request['cf_value1'];
             $group['cf_value2']=($request->hasFile('cf_value2'))
                  ? PostController::img_name($request->cf_value2)
                  :$request['cf_value2'];
             $group['cf_value3']=($request->hasFile('cf_value3'))
                  ? $group['cf_value3']= PostController::img_name($request->cf_value3)
                  : $request['cf_value3'];
             $group['cf_value4']=($request->hasFile('cf_value4'))
                    ? PostController::img_name($request->cf_value4)
                    : $request['cf_value4'];
             $group['cf_value5']=($request->hasFile('cf_value5'))
                    ? PostController::img_name($request->cf_value5)
                    : $request['cf_value5'];

             CustomFieldValue::insert($group);
        }

        if ($get_cf_type!="")
        {
            for ($i=0; $i <count($get_cf_type) ; $i++) {
                     $details['post_id']=$post_id;
                     $details['cf_name']=$get_cf_name[$i];
                     $details['cf_type']=$get_cf_type[$i];
                     if ($get_cf_type[$i]==4) {
                          $file = current($get_cf_file);
                          $photo=PostController::img_name($file);
                          $details['cf_value']=$photo;
                          array_shift($get_cf_file);
                     }
                     else {
                             $value = current($get_cf_value);
                             $details['cf_value']=$value;
                             array_shift($get_cf_value);
                     }
                     $post_details[]=$details;
             }

            CustomFieldDetail::insert($post_details);
        }
        echo "<script> alert('Has been created!!'); window.location.href='".route('admin.post')."'; </script>";
    }

    function img_name($file)
    {
         $fileName = $file->getClientOriginalName();
         $destinationPath = "upload/custom_field/";
          if($fileName) {
               $file->move($destinationPath, $fileName);
           }
          return $fileName;
    }

  //update post by ASO
    public function edit($id)
    {
        $posts = Post::find($id);
        //$cat = Category::where('parent_id', '0')->orderBy('parent_id', 'asc')->get();
        $subcat = Category::where('parent_id','!=', '0')->orderBy('parent_id', 'asc')->get();
        $cf_values=CustomFieldValue::where('post_id',$id)->first();
        $cf_details=CustomFieldDetail::where('post_id',$id)->get();
        $cf_lists=CustomField::all();
        $cfl_group_id=$cf_values['cfl_group_id'];
        $get_group_id=CustomField::where('id',$cfl_group_id);
        return view('admin.post_edit',compact('posts','cat','subcat','cf_values','cf_details','cf_lists','cfl_group_id','get_group_id'));
    }

    //store update post
    public function update($id, Request $request)
    {
        // $post= Post::findOrFail($id);
      //  dd($request->all());
        $group=[];
        $new_field=[];
        $request['cf_value1']=(isset($request['cf_value1']) ? $request['cf_value1']  : "");
        $request['cf_value2']=(isset($request['cf_value2']) ? $request['cf_value2']  : "");
        $request['cf_value3']=(isset($request['cf_value3']) ? $request['cf_value3']  : "");
        $request['cf_value4']=(isset($request['cf_value4']) ? $request['cf_value4']  : "");
        $request['cf_value5']=(isset($request['cf_value5']) ? $request['cf_value5']  : "");
        $get_cf_id=(isset($request['cf_detail_id']) ? $request['cf_detail_id']  : "");
        $get_cf_name=(isset($request['cf_detail_name']) ? $request['cf_detail_name']  : "");
        $get_cf_type=(isset($request['cf_detail_type']) ? $request['cf_detail_type']  : "");
        $get_cf_value=(isset($request['cf_detail_value']) ? $request['cf_detail_value']  : "");
        $get_cf_file_old=(isset($request['cf_file_old']) ? $request['cf_file_old']  : "");
        $get_cf_file_id=(isset($request['cf_file_id']) ? $request['cf_file_id']  : "");
        $get_cf_file=(isset($request['cf_file']) ? $request['cf_file']  : "");
        $get_cf_image=(isset($request['cf_image']) ? $request['cf_image']  : "");

        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'main_category_id' => 'required',
            // 'short_description' => 'required',
            //'feature_photo' => 'required',
            // 'detail_description' => 'required',
            //'detail_photo' => 'required'
           ]);

        if ($validator->fails()) {
            return redirect()->back()
              ->withInput()
              ->withErrors($validator);
        }

        $structure= "upload/posts/";
        $feature_photo="";
        if($request->file('feature_photo')!=NULL){
            $file = $request->file('feature_photo');
              if($file->getClientOriginalExtension()=="jpg" || $file->getClientOriginalExtension()=="jpeg" || $file->getClientOriginalExtension()=="JPG" || $file->getClientOriginalExtension()=="png" || $file->getClientOriginalExtension()=="PNG" || $file->getClientOriginalExtension()=="gif" || $file->getClientOriginalExtension()=="GIF"){
                $feature_photo = $file->getClientOriginalName();
                $file->move($structure, $feature_photo);
              }
        }

        $attach_file="";
        if($request->file('attach_file')!=NULL){
            $file = $request->file('attach_file');
            if($file->getClientOriginalExtension()=="pdf"){
                $attach_file = $file->getClientOriginalName();
                $file->move($structure, $attach_file);
              }
        }

        $detail_photo="";
        if($request->file('detail_photo')!=NULL){
            $file = $request->file('detail_photo');
            if($file->getClientOriginalExtension()=="jpg" || $file->getClientOriginalExtension()=="jpeg" || $file->getClientOriginalExtension()=="JPG" || $file->getClientOriginalExtension()=="png" || $file->getClientOriginalExtension()=="PNG" || $file->getClientOriginalExtension()=="gif" || $file->getClientOriginalExtension()=="GIF"){
                $detail_photo = $file->getClientOriginalName();
                $file->move($structure, $detail_photo);
            }
        }

        $arr=[
                'id'=>$id,
                'title' => $request->title,
                'main_category_id' => $request->main_category_id,
                'sub_category_id' => $request->sub_category_id,
                'short_description' => $request->short_description,
                'feature_photo' => $feature_photo,
                'attach_file' => $attach_file,
                'detail_description' => $request->detail_description,
                'detail_photo' => $detail_photo,
            ];

        $post = Post::findOrFail($id);
        $post->fill($arr)->save();

        $cfl_group_id=$request['acf_group'];
        $group['cfl_group_id']=$cfl_group_id;
        $group['post_id']=$id;

         //check custom_field list is selected or not
         if ($request['acf_group']==0)
         {
              CustomFieldValue::where('post_id',$id)->delete();
         }
        else
        {
            $group['cf_value1']=($request->hasFile('cf_value1'))
                  ? PostController::img_name($request['cf_value1'])
                  : $request['cf_value1'];
            $group['cf_value2']=($request->hasFile('cf_value2'))
                 ? PostController::img_name($request->cf_value2)
                 :$request['cf_value2'];
            $group['cf_value3']=($request->hasFile('cf_value3'))
                 ? $group['cf_value3']= PostController::img_name($request->cf_value3)
                 : $request['cf_value3'];
            $group['cf_value4']=($request->hasFile('cf_value4'))
                   ? PostController::img_name($request->cf_value4)
                   : $request['cf_value4'];
            $group['cf_value5']=($request->hasFile('cf_value5'))
                   ? PostController::img_name($request->cf_value5)
                   : $request['cf_value5'];
           $new_or_update=CustomFieldValue::where('post_id',$id)->first();

             //check for new or old custom_field list
             if (empty($new_or_update)) {
                 CustomFieldValue::insert($group);
               }
           else {
                      foreach ($group as $key => $value)
                      {
                          if ($value!="") {
                              $list[$key]=$value;
                           }
                      }
                    CustomFieldValue::where('post_id',$id)->update($list);
                }
      }

      if ($get_cf_type!="")
      {
          if ($get_cf_file_old!="")
          {
               for ($i=0; $i < count($get_cf_file_old) ; $i++)
                {
                    if ($get_cf_file_id[$i]!=0)
                    {
                        $old_file_id[]=$get_cf_file_id[$i];
                        $file = current($get_cf_file_old);
                        $old_file[]=PostController::img_name($file);
                        array_shift($get_cf_file_old);
                    }
               }
          }

        //dd($old_file);
          for ($i=0; $i < count($get_cf_id) ; $i++)
           {
                 $details['post_id']=$id;
                 $details['cf_name']=$get_cf_name[$i];
                 $details['cf_type']=$get_cf_type[$i];

                if ($get_cf_type[$i]==4 && $get_cf_id[$i]!=0)
                 {
                        if ($get_cf_file_old!="" && ($get_cf_id[$i]==current($old_file_id)))
                        {
                             $details['cf_value']=current($old_file);
                             array_shift($old_file);
                        }
                        else {
                             $details['cf_value']=current($get_cf_value);
                        }
                      array_shift($get_cf_value);
                 }
                // dd()
                elseif ($get_cf_type[$i]==4 && $get_cf_id[$i]==0)
                {
                      $file = current($get_cf_file);
                      $photo=PostController::img_name($file);
                      $details['cf_value']=$photo;
                      array_shift($get_cf_file);
                }
                elseif ($get_cf_type[$i]!=4 && $get_cf_id[$i]==0)
                {
                      $file = current($get_cf_file);
                      $photo=PostController::img_name($file);
                      $details['cf_value']=$photo;
                      array_shift($get_cf_file);
                }
               else
               {
                     $value = current($get_cf_value);
                     $details['cf_value']=$value;
                     array_shift($get_cf_value);
                }

                 //check for old or new custom_field details
                 if ($get_cf_id[$i] > 0) {
                      CustomFieldDetail::where('id',$get_cf_id[$i])->update($details);
                    }
               else {
                      $new_field[]=$details;
                    }
          }

            CustomFieldDetail::where('post_id',$id)->whereNotIn('id',$get_cf_id)->delete();
            $insert_id=CustomFieldDetail::insert($new_field);
      }
        echo "<script> alert('Has been created!!'); window.location.href='".route('admin.post')."'; </script>";
    }

    //show post by id
    public function show($id)
    {
        $post = Post::findOrFail($id);
        return view('admin.post_show',compact('post'));
    }

    //delete  post
    public function delete($id)
    {
        $post = Post::find($id)->delete();
        $post = CustomFieldValue::where('post_id',$id)->delete();
        $post = CustomFieldDetail::where('post_id',$id)->delete();
        return redirect()->back()->with('success','Post is successfully deleted!');
    }

    public function search(Request $request)
    {
        $input = $request->all();
        //dd($input);
        $posts = new Post(); // for_ASO to check fixes this is more better in filter
        $subcat = array();
        if($request->get('search')){
            $posts = $posts->where("title", "LIKE", "%{$request->get('search')}%");
        }
        if($request->get('category_id')){
            $posts = $posts->where("main_category_id", "=", $request->get('category_id'));
            $subcat = Category::where('parent_id','=', $request->get('category_id'))->get();
        }
        if($request->get('sub_category_id')){
            $posts = $posts->where("sub_category_id", "=", $request->get('sub_category_id'));
        }
        $sub_category_id = ($request->get('sub_category_id'))? $sub_category_id = $request->get('sub_category_id') : '';
        $posts = $posts->orderby('updated_at', 'desc');
        $posts = $posts->paginate(10);
        $cat = Category::where('parent_id','=', '0')->pluck('title', 'id');
        return view('admin.post', ['posts'=>$posts, 'cat'=>$cat, 'subcat' => $subcat, 'sub_category_id' => $sub_category_id]);
     }
     //show member
     public function show_member()
     {
       $members= Form::orderby('id', 'desc')->paginate(10);
        return view('admin.member',['members'=>$members]);
     }
     public function member_search()
     {
     }
}
