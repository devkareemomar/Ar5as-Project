<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Seller;
use App\RefundRequest;
use App\User;
use App\Shop;
use App\Product;
use App\Order;
use App\OrderDetail;
use DB;
use Illuminate\Support\Facades\Hash;

class SellerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search = null;
        $approved = null;
        $sellers = Seller::orderBy('created_at', 'desc');
       // dd($sellers);
        if ($request->has('search')){
            $sort_search = $request->search;
            $user_ids = User::where('user_type', 'seller')->where(function($user) use ($sort_search){
                $user->where('name', 'like', '%'.$sort_search.'%')->orWhere('email', 'like', '%'.$sort_search.'%');
            })->pluck('id')->toArray();
            $sellers = $sellers->where(function($seller) use ($user_ids){
                $seller->whereIn('user_id', $user_ids);
            });
        }
        if ($request->approved_status != null) {
            $approved = $request->approved_status;
            $sellers = $sellers->where('verification_status', $approved);
        }
        $sellers = $sellers->paginate(15);
        return view('backend.sellers.index', compact('sellers', 'sort_search', 'approved'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.sellers.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(User::where('email', $request->email)->first() != null){
            flash(translate('Email already exists!'))->error();
            return back();
        }
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->user_type = "seller";
        $user->password = Hash::make($request->password);
        if($user->save()){
            $seller = new Seller;
            $seller->user_id = $user->id;
            if($seller->save()){
                $shop = new Shop;
                $shop->user_id = $user->id;
                $shop->slug = 'demo-shop-'.$user->id;
                $shop->save();
                flash(translate('Seller has been inserted successfully'))->success();
                return redirect()->route('sellers.index');
            }
        }
        flash(translate('Something went wrong'))->error();
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
        $seller = Seller::findOrFail(decrypt($id));
        return view('backend.sellers.edit', compact('seller'));
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
        $seller = Seller::findOrFail($id);
        $user = $seller->user;
        $user->name = $request->name;
        $user->email = $request->email;
        if(strlen($request->password) > 0){
            $user->password = Hash::make($request->password);
        }
        if($user->save()){
            if($seller->save()){
                flash(translate('Seller has been updated successfully'))->success();
                return redirect()->route('sellers.index');
            }
        }

        flash(translate('Something went wrong'))->error();
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
        $seller = Seller::findOrFail($id);
        Shop::where('user_id', $seller->user_id)->delete();
        Product::where('user_id', $seller->user_id)->delete();
        Order::where('user_id', $seller->user_id)->delete();
        OrderDetail::where('seller_id', $seller->user_id)->delete();
        User::destroy($seller->user->id);
        if(Seller::destroy($id)){
            flash(translate('Seller has been deleted successfully'))->success();
            return redirect()->route('sellers.index');
        }
        else {
            flash(translate('Something went wrong'))->error();
            return back();
        }
    }

    public function show_verification_request($id)
    {
        $seller = Seller::findOrFail($id);
        //dd($seller->bank_name);
        $bank = DB::table('banks')->where('id', $seller->bank_name)->first();

         //dd($bank->name);
        return view('backend.sellers.verification', compact('seller','bank'));
    }

    public function approve_seller($id)
    {
        $seller = Seller::findOrFail($id);
        $seller->verification_status = 1;
        if($seller->save()){
            flash(translate('Seller has been approved successfully'))->success();
            return redirect()->route('sellers.index');
        }
        flash(translate('Something went wrong'))->error();
        return back();
    }

    public function reject_seller($id)
    {
        $seller = Seller::findOrFail($id);
        $seller->verification_status = 0;
        $seller->verification_info = null;
        if($seller->save()){
            flash(translate('Seller verification request has been rejected successfully'))->success();
            return redirect()->route('sellers.index');
        }
        flash(translate('Something went wrong'))->error();
        return back();
    }


    public function payment_modal(Request $request)
    {
        $seller = Seller::findOrFail($request->id);
        return view('backend.sellers.payment_modal', compact('seller'));
    }

    public function profile_modal(Request $request)
    {
        $seller = Seller::findOrFail($request->id);
        return view('backend.sellers.profile_modal', compact('seller'));
    }

    public function updateApproved(Request $request)
    {
        $seller = Seller::findOrFail($request->id);
        $seller->verification_status = $request->status;
        if($seller->save()){
            return 1;
        }
        return 0;
    }

    public function login($id)
    {
        $seller = Seller::findOrFail(decrypt($id));

        $user  = $seller->user;

        auth()->login($user, true);

        return redirect()->route('dashboard');
    }

    public function ban($id) {
        $seller = Seller::findOrFail($id);

        if($seller->user->banned == 1) {
            $seller->user->banned = 0;
            flash(translate('Seller has been unbanned successfully'))->success();
        } else {
            $seller->user->banned = 1;
            flash(translate('Seller has been banned successfully'))->success();
        }

        $seller->user->save();
        return back();
    }

      public function AdminSellerAccountStatment(Request $request){

      //  dd('welcome');
        $orders = [];
        $refund =  [];
        $profits =  [];
        $seller_name = [];
        $seller_Request  =[];

        $sellers = User::where('user_type', '=', 'seller')->get();
        if($request->date_range != null){

            $date_var               = explode(" to ", $request->date_range);
            $from = $date_var[0] ;
            $to   =  $date_var[1] ;
            $seller = $request->seller_id ;
            $seller_name = User::findOrFail($request->seller_id )->name;
            $seller_Request = Seller::where('user_id',$request->seller_id )->first();

            // handel orders
            // $orders['all_orders']        = count(\App\OrderDetail::where('seller_id', $seller)->whereBetween('created_at', [$from, $to])->get()) ;
            $orders['all_orders']        = \App\OrderDetail::where('seller_id', $seller)->where(function ($query) {
                $query->where('delivery_status', '=', 'delivered')
                      ->orWhere('is_refunded', '=', 1);
            })->whereBetween('created_at', [$from, $to])->with('order')->get() ;

            // $orders['pending_orders']    = count(\App\OrderDetail::where('seller_id', $seller)->where('delivery_status', 'pending')->whereBetween('created_at', [$from, $to])->get());
            // $orders['cancelled_orders']  = count(\App\OrderDetail::where('seller_id', $seller)->where('delivery_status', 'cancelled')->whereBetween('created_at', [$from, $to])->get()) ;
            // $orders['successful_orders'] = count(\App\OrderDetail::where('seller_id', $seller)->where('delivery_status', 'delivered')->whereBetween('created_at', [$from, $to])->get());

            // $orderDetails = \App\OrderDetail::where('seller_id', $seller)->whereBetween('created_at', [$from, $to])->get();
            //     $total = 0;
            //     foreach ($orderDetails as $key => $orderDetail) {
            //         if($orderDetail->order != null && $orderDetail->order->payment_status == 'paid'){
            //             $total += $orderDetail->price;
            //         }
            //     }
            // $orders['amount_orders']     = $total ;
           // dd($orders);

            // handel refund

            // $refund['all_refund']      = count(RefundRequest::where('seller_id', $seller)->whereBetween('created_at', [$from, $to])->get());
            // $refund['pending_refund']  = count(RefundRequest::where('seller_id', $seller)->where('refund_status', 0)->whereBetween('created_at', [$from, $to])->get());
            // $refund['aproved_refund']  = count(RefundRequest::where('seller_id', $seller)->where('refund_status', 1)->whereBetween('created_at', [$from, $to])->get());
            // $refund['atstock_refund']  = count(RefundRequest::where('seller_id', $seller)->where('refund_status', 2)->whereBetween('created_at', [$from, $to])->get());
            // $refund['check_refund']  = count(RefundRequest::where('seller_id', $seller)->where('refund_status', 3)->whereBetween('created_at', [$from, $to])->get());

            // $refundsAmount = RefundRequest::where('seller_id', $seller)->whereBetween('created_at', [$from, $to])->get();
            //     $refund_total = 0 ;
            //     foreach ($refundsAmount as $key => $refundAmount) {
            //         if($refundAmount->refund_status == 1){
            //             $refund_total += $refundAmount->refund_amount ;
            //         }
            //     }
            // $refund['amount_refund']  = $refund_total ;

            // dd($refund);
            // $profits['total'] =  $total ;
            // $refund['refund']  = $refund_total;
            //  $profits['netProfit'] =   $total - $refund_total ;
                //dd($profits);
                 return view('backend.sellers.seller_account_statment' , compact('orders','refund','refund','profits','sellers','seller_Request','seller_name'));
        }else{
            return view('backend.sellers.seller_account_statment' , compact('orders','refund','refund','profits','sellers' ,'seller_Request','seller_name'));
        }





    }// end of seller Account Statment
}
