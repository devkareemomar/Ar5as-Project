<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BusinessSetting;
use App\Models\OrderDetail as ModelsOrderDetail;
use App\RefundRequest;
use App\OrderDetail;
use App\Seller;
use App\Wallet;
use App\User;
use Auth;

class RefundRequestController extends Controller
{
    /**
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    //Store Customer Refund Request
    public function request_store(Request $request, $id)
    {
        $order_detail = OrderDetail::where('id', $id)->first();
        $refund = new RefundRequest;
        $refund->user_id = Auth::user()->id;
        $refund->order_id = $order_detail->order_id;
        $refund->order_detail_id = $order_detail->id;
        $refund->seller_id = $order_detail->seller_id;
        $refund->seller_approval = 0;
        $refund->reason = $request->reason;
        $refund->admin_approval = 0;
        $refund->admin_seen = 0;
        $refund->refund_amount = $order_detail->price + $order_detail->tax;
        $refund->refund_status = 0;
        $refund->refund_type = $request->refund_type;
        $refund->account_no = $request->account_no;
        $refund->bank_id = $request->bank_id;

        if ($refund->save()) {

            flash( translate("Refund Request has been sent successfully") )->success();
            return redirect()->route('purchase_history.index');
        }
        else {
            flash( translate("Something went wrong") )->error();
            return back();
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function vendor_index()
    {
        $refunds = RefundRequest::where('seller_id', Auth::user()->id)->latest()->paginate(10);
        if (Auth::user()->user_type == 'admin' || Auth::user()->user_type == 'staff') {
            return view('refund_request.frontend.recieved_refund_request.index', compact('refunds'));
        }
        else {
            return view('refund_request.frontend.recieved_refund_request.index', compact('refunds'));
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function customer_index()
    {
        $refunds = RefundRequest::where('user_id', Auth::user()->id)->latest()->paginate(10);
        return view('refund_request.frontend.refund_request.index', compact('refunds'));
    }

    //Set the Refund configuration
    public function refund_config()
    {
        return view('refund_request.config');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function refund_time_update(Request $request)
    {
        $business_settings = BusinessSetting::where('type', $request->type)->first();
        if ($business_settings != null) {
            $business_settings->value = $request->value;
            $business_settings->save();
        }
        else {
            $business_settings = new BusinessSetting;
            $business_settings->type = $request->type;
            $business_settings->value = $request->value;
            $business_settings->save();
        }
        flash( translate("Refund Request sending time has been updated successfully") )->success();
        return back();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function refund_sticker_update(Request $request)
    {
        $business_settings = BusinessSetting::where('type', $request->type)->first();
        if ($business_settings != null) {
            $business_settings->value = $request->logo;
            $business_settings->save();
        }
        else {
            $business_settings = new BusinessSetting;
            $business_settings->type = $request->type;
            $business_settings->value = $request->logo;
            $business_settings->save();
        }
        flash( translate("Refund Sticker has been updated successfully"))->success();
        return back();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function admin_index()
    {
       $refunds = RefundRequest::where('refund_status', '!=' , 1)->latest()->paginate(15);
        return view('refund_request.index', compact('refunds'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function paid_index()
    {
        $refunds = RefundRequest::where('refund_status', 1)->latest()->paginate(15);
        return view('refund_request.paid_refund', compact('refunds'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function request_approval_vendor(Request $request)
    {
        $refund = RefundRequest::findOrFail($request->el);
        if (Auth::user()->user_type == 'admin' || Auth::user()->user_type == 'staff') {
            $refund->seller_approval = 1;
            $refund->admin_approval = 1;
        }
        else {
            $refund->seller_approval = 1;
        }

        if ($refund->save()) {
            return 1;
        }
        else {
            return 0;
        }
    }

    /**
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function refund_pay(Request $request)
    {
        $refund = RefundRequest::findOrFail($request->id);
        //dd($refund->refund_amount);

            $seller = Seller::where('user_id', $refund->seller_id)->first();

            if ($seller != null) {
                //dd($seller->admin_to_pay);
                $sellerAmount = $refund->refund_amount / 1.14 ;
               //dd($sellerAmount);
                $seller->admin_to_pay -= $sellerAmount;
            }
            $seller->save();



        if($request->refund_type == 1){
            $wallet = new Wallet;
            $wallet->user_id = $refund->user_id;
             if($request->refund_with_shipping = 1){
                 $amountRefund = $refund->refund_amount + $request->shipping_cost ;
             }else{
                  $amountRefund = $refund->refund_amount ;
             }
            $wallet->amount = $amountRefund;
            $wallet->payment_method = 'Refund';
            $wallet->payment_details = 'Product Money Refund';
            $wallet->save();
            $user = User::findOrFail($refund->user_id);
            $user->balance += $amountRefund;
            $user->save();
            if (Auth::user()->user_type == 'admin' || Auth::user()->user_type == 'staff') {
                $refund->admin_approval = 1;
                $refund->refund_status = 1;
                $refund->refund_type = 1;
                $refund->refund_tax = $request->refund_tax;
                if($request->refund_with_shipping = 1){
                    $refund->refund_with_shipping = 1;
                    $refund->shipping_cost = $request->shipping_cost;
                }
            }
            $refund->save();

        }
        elseif($request->refund_type == 2)
        {

            $refund->txn_code = $request->txn_code;
            $refund->refund_tax = $request->refund_tax;
            $refund->refund_type = 2;
            $refund->refund_status = 1;
            $refund->admin_approval = 1;
            if($request->refund_with_shipping = 0){
                $refund->refund_with_shipping = 0;
            }
            if($request->refund_with_shipping = 1){
                $refund->refund_with_shipping = 1;
                $refund->shipping_cost = $request->shipping_cost;
            }
            $refund->save();
        }

        $OrderDetail = ModelsOrderDetail::where('order_id', $refund->order_id)->where('seller_id', $refund->seller_id)->first();
        $OrderDetail->is_refunded	= 1;
        $OrderDetail->refund_type	= $request->refund_type;
        $OrderDetail->save();
         return redirect()->route('paid_refund');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function refund_request_send_page($id)
    {
        $order_detail = OrderDetail::findOrFail($id);
        if ($order_detail->product != null && $order_detail->product->refundable == 1) {
            return view('refund_request.frontend.refund_request.create', compact('order_detail'));
        }
        else {
            return back();
        }
    }

    /**
     * Show the form for view the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //Shows the refund reason
    public function reason_view($id)
    {
        $refund = RefundRequest::findOrFail($id);
        if (Auth::user()->user_type == 'admin' || Auth::user()->user_type == 'staff') {
            if ($refund->orderDetail != null) {
                $refund->admin_seen = 1;
                $refund->save();
                return view('refund_request.reason', compact('refund'));
            }
        }
        else {
            return view('refund_request.frontend.refund_request.reason', compact('refund'));
        }
    }
}
