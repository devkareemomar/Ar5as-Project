<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\HomeCategory; 
use App\Product;
use App\Language;
use App\CategoryTranslation;
use App\Utility\CategoryUtility;
use DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */ 
    public function index(Request $request)
    {
        $sort_search =null;
        $categories = Category::where('parent_id', 0)->orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $categories = $categories->where('name', 'like', '%'.$sort_search.'%');
        }
        $categories = $categories->paginate(15);
        return view('backend.product.categories.index', compact('categories', 'sort_search'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::where('parent_id', 0)
            ->with('childrenCategories')
            ->get();

        return view('backend.product.categories.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $category = new Category;
        $category->name = $request->name;
        $category->digital = 0;
        $category->parent_id = 0;
        $category->level = 0;
        $category->banner = $request->banner;
        $category->icon = $request->icon;
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;

       
            if ($request->refundable != null) {
                $category->refundable = 1; 
            }
            else {
                $category->refundable = 0;
            } 
      

        // if ($request->parent_id != "0") {
        //     $category->parent_id = $request->parent_id;

        //     $parent = Category::find($request->parent_id);
        //     $category->level = $parent->level + 1 ;
        // }

        if ($request->slug != null) {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
        }
        else {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name)).'-'.Str::random(5);
        }
        if ($request->commision_rate != null) {
            $category->commision_rate = $request->commision_rate;
        }

        $category->save();

        $category_translation = CategoryTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been inserted successfully'))->success();
        return redirect()->route('categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $lang = $request->lang;
        $category = Category::findOrFail($id);
        $categories = Category::where('parent_id', 0)
            ->with('childrenCategories')
            ->whereNotIn('id', CategoryUtility::children_ids($category->id, true))->where('id', '!=' , $category->id)
            ->orderBy('name','asc')
            ->get();

        return view('backend.product.categories.edit', compact('category', 'categories', 'lang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $category = Category::findOrFail($id);
        if($request->lang == env("DEFAULT_LANGUAGE")){
            $category->name = $request->name;
        }
        // $category->digital = $request->digital;
        $category->banner = $request->banner;
        $category->icon = $request->icon;
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;

        // $previous_level = $category->level;

        // if ($request->parent_id != "0") {
        //     $category->parent_id = $request->parent_id;

        //     $parent = Category::find($request->parent_id);
        //     $category->level = $parent->level + 1 ;
        // }
        // else{
        //     $category->parent_id = 0;
        //     $category->level = 0;
        // }

        // if($category->level > $previous_level){
        //     CategoryUtility::move_level_down($category->id);
        // }
        // elseif ($category->level < $previous_level) {
        //     CategoryUtility::move_level_up($category->id);
        // }

        // if ($request->slug != null) {
        //     $category->slug = strtolower($request->slug);
        // }
        // else {
        //     $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name)).'-'.Str::random(5);
        // }


        // if ($request->commision_rate != null) {
        //     $category->commision_rate = $request->commision_rate;
        // }

        //   if ($request->refundable != null) {
        //         $category->refundable = 1; 

        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 1]);
              
              
        //        // DB::table('')->update(['refundable' => 1])-where('category_id' , '=' , );
        //     }
        //     else {
        //         $category->refundable = 0;
        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 0]);
        //     } 
      

        $category->save();

        $category_translation = CategoryTranslation::firstOrNew(['lang' => $request->lang, 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been updated successfully'))->success();
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::findOrFail($id);

        // Category Translations Delete
        foreach ($category->category_translations as $key => $category_translation) {
            $category_translation->delete();
        }

        foreach (Product::where('category_id', $category->id)->get() as $product) {
            $product->category_id = null;
            $product->save();
        }

        CategoryUtility::delete_category($id);

        flash(translate('Category has been deleted successfully'))->success();
        return redirect()->back();
    }

    public function updateFeatured(Request $request)
    {
        $category = Category::findOrFail($request->id);
        $category->featured = $request->status;
        if($category->save()){
            return 1;
        }
        return 0;
    }//end of 

    public function updateRefund(Request $request)
    {
        $category = Category::findOrFail($request->id);
        $category->refundable = $request->status;
        if($category->save()){
               DB::table('products')->where('category_id', $request->id)->update(['refundable' => $request->status]);
            return 1;
        }
        return 0;
    }

    public function updatePublished(Request $request){
         $category = Category::findOrFail($request->id);
        $category->published = $request->status;
        if($category->save()){
            return 1;
        }
        return 0;
    }// end of updatePublished 

    /*
    
    
        Start Sub Category Methods 
    
    
    */

    public function allSubCategories(Request $request)
    {
        $sort_search =null;
        $categories = Category::where('level', 1)->orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $categories = $categories->where('name', 'like', '%'.$sort_search.'%');
        }
        $categories = $categories->paginate(15);
        return view('backend.product.subcategories.index', compact('categories', 'sort_search'));
    
    }// end of allSubCategories 

    public function createSubCategory(){
        $categories = Category::where('parent_id', 0)->get();
        return view('backend.product.subcategories.create', compact('categories'));
    
    }// end of allSubCategories

    public function storeSubCategory(Request $request){
        //dd($request->all());
        $request->validate([
            'name'      => 'string|required|unique:categories|min:3',
            'category_id' => 'required',
        ]);  

      // dd($request->all());
       // $cat = Category::where('id', $request->category_id)->first();
       // dd($cat->id);
        $category = new Category;
        $category->name           = $request->name;
        $category->level          = 1;
        $category->digital        = 0;
        $category->parent_id      = $request->category_id;
        //$category->commision_rate = $cat->commision_rate;
       // $category->refundable     = $request->refundable;
      //  $category->published      = $cat->published;

        

        if ($request->slug != null) {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
        }
        else {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name)).'-'.Str::random(5);
        }
      

        $category->save();

        // if ($request->refundable != null) {
        //         $category->refundable = 1; 

        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 1]);
              
            
        //     }
        //     else {
        //         $category->refundable = 0;
        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 0]);
        //     } 

        $category_translation = CategoryTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been inserted successfully'))->success();
        return redirect()->route('subcategories.all');
    }// end of storeSubCategory

    public function editSubCategory(Request $request, $id){

        $lang = $request->lang;
        $category = Category::findOrFail($id);
        $categories = Category::where('parent_id', 0)
            ->orderBy('name','asc')
            ->get();

        return view('backend.product.subcategories.edit', compact('category', 'categories', 'lang'));
        
    }// end of editSubCategory

    public function updateSubCategory(Request $request, $id){
       // dd($request->all());
        $category = Category::findOrFail($id);
       // $cat = Category::where('id', $request->category_id)->first();
        //dd($cat);
        if($request->lang == env("DEFAULT_LANGUAGE")){
            $category->name = $request->name;
        }
        $category->level          = 1;
        $category->digital        = 0;
        $category->parent_id      = $request->category_id;
        // $category->commision_rate = $cat->commision_rate;
        // $category->refundable     = $cat->refundable;
        // $category->published      = $cat->published;

        if ($request->slug != null) {
            $category->slug = strtolower($request->slug);
        }
        else {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name)).'-'.Str::random(5);
        }

        $category->save();

        //   if ($request->refundable != null) {
        //         $category->refundable = 1; 

        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 1]);
              
            
        //     }
        //     else {
        //         $category->refundable = 0;
        //         DB::table('products')->where('category_id', $id)->update(['refundable' => 0]);
        //     } 

        $category_translation = CategoryTranslation::firstOrNew(['lang' => $request->lang, 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been updated successfully'))->success();
        return back();
    }// end of updateSubCategory

    public function deleteSubCategory(){

    }// end of delete SubCategory


    /*  
    
        Start Sub Sub Methods 
    
    */

    public function allSubSubCategories(Request $request)
    {
        $sort_search =null;
        $categories = Category::where('level', 2)->orderBy('name', 'asc');
        if ($request->has('search')){
            $sort_search = $request->search;
            $categories = $categories->where('name', 'like', '%'.$sort_search.'%');
        }
        $categories = $categories->paginate(15);
        return view('backend.product.subsubcategories.index', compact('categories', 'sort_search'));
    }// end of allSubCategories 

    public function createSubSubCategory(){
         $categories = Category::where('parent_id', 0)->get();
        return \view('backend.product.subsubcategories.create',compact('categories'));
    }// end of allSubCategories

    public function storeSubSubCategory(Request $request){
          $request->validate([
            'name'      => 'required|unique:categories|min:3',
            'category_id' => 'required',
        ]);  

      // dd($request->all());
        $cat = Category::where('id', $request->category)->first();
       // dd($cat->id);
        $category = new Category;
        $category->name           = $request->name;
        $category->level          = 2;
        $category->digital        = 0;
        $category->parent_id      = $request->category_id;
        $category->commision_rate = $cat->commision_rate;
        $category->refundable     = $cat->refundable;
        $category->published      = $cat->published;

        

        if ($request->slug != null) {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
        }
        else {
            $category->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->name)).'-'.Str::random(5);
        }
      

        $category->save();

        $category_translation = CategoryTranslation::firstOrNew(['lang' => env('DEFAULT_LANGUAGE'), 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been inserted successfully'))->success();
        return redirect()->route('subsubcategories.all');
    }// end of storeSubCategory

    public function editSubSubCategory(Request $request, $id){
        $lang = $request->lang;
        $category = Category::findOrFail($id);
        $categories = Category::where('parent_id', 0)
            ->orderBy('name','asc')
            ->get();

        return \view('backend.product.subsubcategories.edit',compact('category', 'categories', 'lang'));
    }// end of editSubCategory

    public function updateSubSubCategory(Request $request,$id){
      // dd($request->all());

        $category = Category::findOrFail($id);
        //dd($category);
       // $cat = Category::where('id', $request->category_id)->first();
        //dd($cat);
        if($request->lang == env("DEFAULT_LANGUAGE")){
            $category->name = $request->name;
        }
       
        if($request->category_id){
             $category->parent_id      = $request->category_id;
        }else{
             $category->parent_id      = $request->category;
        }

        $category->save();

        $category_translation = CategoryTranslation::firstOrNew(['lang' => $request->lang, 'category_id' => $category->id]);
        $category_translation->name = $request->name;
        $category_translation->save();

        flash(translate('Category has been updated successfully'))->success();
        return redirect()->route('subsubcategories.all');

    }// end of updateSubCategory


    public function deleteSubSubCategory(){

    }// end of delete SubCategory

    public function selectSupcat(Request $request)
    {
        if (!$request->cat_id) {
            $html = '<option value=""> select sup category</option>';
        } else {
            $html = '';
            $sups = Category::where('parent_id', $request->cat_id)->get();
            foreach ($sups as $sup) {
                
                $html .= '<option value="'.$sup->id.'">'.$sup->name.'</option>';
            }
        }

        return response()->json(['html' => $html]);
    }// end of select sup by ajax


}
