<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Shop;
use App\User;
use App\Seller;
use App\BusinessSetting;
use Auth;
use Hash;
use Illuminate\Support\Str;
use App\Notifications\EmailVerificationNotification;

class ShopController extends Controller
{

    public function __construct()
    {
        $this->middleware('user', ['only' => ['index']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shop = Auth::user()->shop;
        return view('frontend.user.seller.shop', compact('shop'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(Auth::check() && Auth::user()->user_type == 'admin'){
            flash(translate('Admin can not be a seller'))->error();
            return back();
        }
        else{
            return view('frontend.seller_form');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
   public function store(Request $request)
    {

           if($request->seller_type == 1){
            $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'email' => 'required|unique:users',
            'password'  =>'required|confirmed',
            'shopname' => 'required',
            'address' => 'required',
            'seller_type' => 'required',
            'cotract_agrrement' => 'required',
            'national_id_photo' => 'required',
            'bank_name' => 'required',
            'bank_acc_name' => 'required',
            'bank_acc_no' => 'required|digits:14',

                ]);
        }

        if($request->seller_type == 2){
            $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'email' => 'required|unique:users',
            'password'  =>'required|confirmed',
            'shopname' => 'required',
            'address' => 'required',
            'seller_type' => 'required',
            'cotract_agrrement' => 'required',
            'national_id_photo' => 'required',
            'tax_photo' => 'required',
            'commercial_register_photo' => 'required',
            'bank_name' => 'required',
            'bank_acc_name' => 'required',
            'bank_acc_no' => 'required|digits:14',
            'company_name' => 'required',
                ]);
        }




        $user = null;
        if(!Auth::check()){
            if(User::where('email', $request->email)->first() != null){
                flash(translate('Email already exists!'))->error();
                return back();
            }
            if($request->password == $request->password_confirmation){
                $user = new User;
                $user->name = $request->name;
                $user->email = $request->email;
                $user->phone = $request->phone;
                $user->user_type = "seller";
                $user->password = Hash::make($request->password);
                $user->save();
            }
            else{
                flash(translate('Sorry! Password did not match.'))->error();
                return back();
            }
        }
        else{
            $user = Auth::user();
            if($user->customer != null){
                $user->customer->delete();
            }
            $user->user_type = "seller";
            $user->save();
        }

        $seller = new Seller;
        $seller->user_id = $user->id;
        $seller->seller_type = $request->seller_type;
        $seller->company_name = $request->company_name;

        $seller->bank_name       = $request->bank_name;
        $seller->bank_acc_name   = $request->bank_acc_name;
        $seller->bank_acc_no     = $request->bank_acc_no;
        $seller->bank_routing_no = $request->bank_routing_no;
        $seller->ipan            = $request->ipan;

        if ($request->hasFile('national_id_photo')) {
        $national_id_photo = time().Str::random(12).'.'.$request->national_id_photo->extension();
        $request->national_id_photo->move(public_path('uploads/seller/'.$user->id. '/data'), $national_id_photo);
        $seller->national_id_photo = $national_id_photo;
           }

        if ($request->hasFile('tax_photo')) {
        $tax_photo = time().Str::random(12).'.'.$request->tax_photo->extension();
        $request->tax_photo->move(public_path('uploads/seller/'.$user->id. '/data'), $tax_photo);
        $seller->tax_photo = $tax_photo;
           }

           if ($request->hasFile('commercial_register_photo')) {
        $commercial_register_photo = time().Str::random(12).'.'.$request->commercial_register_photo->extension();
        $request->commercial_register_photo->move(public_path('uploads/seller/'.$user->id. '/data'), $commercial_register_photo);
        $seller->commercial_register_photo = $commercial_register_photo;
           }


        $seller->save();

        if(Shop::where('user_id', $user->id)->first() == null){
            $shop = new Shop;
            $shop->user_id = $user->id;
            $shop->name = $request->shopname;
            $shop->address = $request->address;
            $shop->slug = preg_replace('/\s+/', '-', $request->shopname).'-'.$shop->id;

            if($shop->save()){

                // return redirect()->route('dashboard');


                flash(translate('Your Shop has been created successfully!'))->success();
                return redirect()->route('dashboard');
            }
            else{
                $seller->delete();
                $user->user_type == 'customer';
                $user->save();
            }
        }

        flash(translate('Sorry! Something went wrong.'))->error();
        return back();
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
    public function edit($id)
    {
        //
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
        //dd('iam here');
        $shop = Shop::find($id);

        if($request->has('name') && $request->has('address')){
            $shop->name = $request->name;
            if ($request->has('shipping_cost')) {
                $shop->shipping_cost = $request->shipping_cost;
            }
            $shop->address = $request->address;
            $shop->slug = preg_replace('/\s+/', '-', $request->name).'-'.$shop->id;

            $shop->meta_title = $request->meta_title;
            $shop->meta_description = $request->meta_description;
            $shop->logo = $request->logo;

            if ($request->has('pick_up_point_id')) {
                $shop->pick_up_point_id = json_encode($request->pick_up_point_id);
            }
            else {
                $shop->pick_up_point_id = json_encode(array());
            }
        }

        elseif($request->has('facebook') || $request->has('google') || $request->has('twitter') || $request->has('youtube') || $request->has('instagram')){
            $shop->facebook = $request->facebook;
            $shop->google = $request->google;
            $shop->twitter = $request->twitter;
            $shop->youtube = $request->youtube;
        }

        else{
            $shop->sliders = $request->sliders;
        }

        if($shop->save()){
            flash(translate('Your Shop has been updated successfully!'))->success();
            return back();
        }

        flash(translate('Sorry! Something went wrong.'))->error();
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
        //
    }

    public function verify_form(Request $request)
    {
        if(Auth::user()->seller->verification_info == null){
            $shop = Auth::user()->shop;
            return view('frontend.user.seller.verify_form', compact('shop'));
        }
        else {
            flash(translate('Sorry! You have sent verification request already.'))->error();
            return back();
        }
    }

    public function verify_form_store(Request $request)
    {
        $data = array();
        $i = 0;
        foreach (json_decode(BusinessSetting::where('type', 'verification_form')->first()->value) as $key => $element) {
            $item = array();
            if ($element->type == 'text') {
                $item['type'] = 'text';
                $item['label'] = $element->label;
                $item['value'] = $request['element_'.$i];
            }
            elseif ($element->type == 'select' || $element->type == 'radio') {
                $item['type'] = 'select';
                $item['label'] = $element->label;
                $item['value'] = $request['element_'.$i];
            }
            elseif ($element->type == 'multi_select') {
                $item['type'] = 'multi_select';
                $item['label'] = $element->label;
                $item['value'] = json_encode($request['element_'.$i]);
            }
            elseif ($element->type == 'file') {
                $item['type'] = 'file';
                $item['label'] = $element->label;
                $item['value'] = $request['element_'.$i]->store('uploads/verification_form');
            }
            array_push($data, $item);
            $i++;
        }
        $seller = Auth::user()->seller;
        $seller->verification_info = json_encode($data);
        if($seller->save()){
            flash(translate('Your shop verification request has been submitted successfully!'))->success();
            return redirect()->route('dashboard');
        }

        flash(translate('Sorry! Something went wrong.'))->error();
        return back();
    }
}
