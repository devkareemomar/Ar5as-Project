<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
use App\SubCategory;
use App\SubSubCategory;
use App\Brand;
use App\User;
use Auth;
use App\ProductsImport;
use App\ProductsExport;
use PDF;
use Excel;
use App\Exports\CategoryExport;
use App\Exports\BrandExport;
use DB;
use Illuminate\Support\Str;
 
class ProductBulkUploadController extends Controller
{
    public function index() 
    {
        if (Auth::user()->user_type == 'seller') {
            return view('frontend.user.seller.product_bulk_upload.index');
        }
        elseif (Auth::user()->user_type == 'admin' || Auth::user()->user_type == 'staff') {
            return view('backend.product.bulk_upload.index');
        }
    }

    public function export(){
        return Excel::download(new ProductsExport, 'products.xlsx');
    }

    public function pdf_download_category()
    {

         return Excel::download(new CategoryExport, 'Category.xlsx');
        //SELECT C.id , C.name, S.id AS SubCateID , S.name AS SubCatName FROM categories C left join categories S on C.id = S.parent_id

        // $categories = DB::table('categories AS C')
        //     ->leftJoin('categories AS S', 'C.id', '=', 'S.parent_id')
        //     ->select('C.id' ,'C.name', 'S.id AS SubCateID' , 'S.name AS SubCatName')
        //     ->get();
         
        // $pdf = PDF::setOptions([
        //                 'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
        //                 'logOutputFile' => storage_path('logs/log.htm'),
        //                 'tempDir' => storage_path('logs/')
        //             ])->loadView('backend.downloads.category', compact('categories'));

        // return $pdf->download('category.pdf');
    }

    public function pdf_download_sub_category()
    {
        $sub_categories = Subcategory::all();
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('backend.downloads.sub_category', compact('sub_categories'));

        return $pdf->download('sub_category.pdf');
    }

    public function pdf_download_sub_sub_category()
    {
        $sub_sub_categories = SubSubCategory::all();
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('backend.downloads.sub_sub_category', compact('sub_sub_categories'));

        return $pdf->download('sub_sub_category.pdf');
    }

    public function pdf_download_brand()
    {
         return Excel::download(new BrandExport, 'Brand.xlsx');
        // $brands = Brand::all();
        // $pdf = PDF::setOptions([
        //                 'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
        //                 'logOutputFile' => storage_path('logs/log.htm'),
        //                 'tempDir' => storage_path('logs/')
        //             ])->loadView('backend.downloads.brand', compact('brands'));
        // return $pdf->download('brands.pdf');
    }

    public function pdf_download_seller()
    {
        $users = User::where('user_type','seller')->get();
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('backend.downloads.user', compact('users'));

        return $pdf->download('user.pdf');

    } 

    public function bulk_upload(Request $request)
    {
        if($request->hasFile('bulk_file')){
            Excel::import(new ProductsImport, request()->file('bulk_file'));
        }
        flash(translate('Products imported successfully'))->success();
        return back();
    }

}
