<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\OTPVerificationController;
use App\Http\Controllers\ClubPointController;
use App\Http\Controllers\AffiliateController;
use App\Order;
use App\Product;
use App\Wallet;
use App\RefundRequest;
use App\ProductStock;
use App\Color;
use App\OrderDetail;
use App\CouponUsage;
use App\OtpConfiguration;
use App\User;
use App\BusinessSetting;
use Auth;
use Session;
use DB;
use PDF;
use Mail;
use App\Mail\InvoiceEmailManager;
use CoreComponentRepository;
use Illuminate\Support\Arr;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource to seller.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $payment_status = null;
        $delivery_status = null;
        $sort_search = null;
        $orders = DB::table('orders')
                    ->orderBy('code', 'desc')
                    ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                    ->where('order_details.seller_id', Auth::user()->id)
                    ->select('orders.id')
                    ->distinct();

        if ($request->payment_status != null){
            $orders = $orders->where('order_details.payment_status', $request->payment_status);
            $payment_status = $request->payment_status;
        }
        if ($request->delivery_status != null) {
            $orders = $orders->where('order_details.delivery_status', $request->delivery_status);
            $delivery_status = $request->delivery_status;
        }
        if ($request->has('search')){
            $sort_search = $request->search;
            $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
        }

        $orders = $orders->paginate(15);

        foreach ($orders as $key => $value) {
            $order = \App\Order::find($value->id);
            $order->viewed = 1;
            $order->save();
        }




        return view('frontend.user.seller.orders', compact('orders','payment_status','delivery_status', 'sort_search'));
    }

    public function seller_order_details($id){

        $order = Order::findOrFail(decrypt($id));
         return view('frontend.user.seller.order_details_seller', compact('order'));

    }// end of seller_order_details

    // All Orders shipping.all_orders.index
    public function all_orders(Request $request)
    {
         CoreComponentRepository::instantiateShopRepository();

         $date = $request->date;
         $sort_search = null;
         $orders = Order::orderBy('code', 'desc');
         if ($request->has('search')){
             $sort_search = $request->search;
             $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
         }
         if ($date != null) {
             $orders = $orders->where('created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
         }
         $orders = $orders->paginate(1000);
         return view('backend.sales.all_orders.index', compact('orders', 'sort_search', 'date'));
    }

    public function all_orders_show($id)
    {
         $order = Order::findOrFail(decrypt($id));
         return view('backend.sales.all_orders.show', compact('order'));
    }

    // tracking order

    public function tracking_all_orders(Request $request){
         CoreComponentRepository::instantiateShopRepository();

         $date = $request->date;
         $sort_search = null;
        // $orderStats = ['pending','confirmed'];
         $orders = Order::orderBy('code', 'desc');

         //dd($orders);
         if ($request->has('search')){
             $sort_search = $request->search;
             $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
         }
         if ($date != null) {
             $orders = $orders->where('created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
         }
         $orders = $orders->paginate(500);
         return view('backend.sales.all_orders.tracking', compact('orders', 'sort_search', 'date'));
    }// end of  tracking order

     public function tracking_all_orders_show($id){

        $order = Order::findOrFail(decrypt($id));
         return view('backend.sales.all_orders.track_show', compact('order'));

    }// end of  tracking order

    // shipping order

     public function shipping_all_orders(Request $request){
        CoreComponentRepository::instantiateShopRepository();

         $date = $request->date;
         $sort_search = null;
         //$orderStats = ['picked','on_delivery'];
         $orders = Order::orderBy('code', 'desc');

         //dd($orders);
         if ($request->has('search')){
             $sort_search = $request->search;
             $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
         }
         if ($date != null) {
             $orders = $orders->where('created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
         }
         $orders = $orders->paginate(500);
         return view('backend.sales.all_orders.shipping', compact('orders', 'sort_search', 'date'));
    }// end of  shipping order

     public function shipping_all_orders_show($id){

         $order = Order::findOrFail(decrypt($id));
         return view('backend.sales.all_orders.shipping_show', compact('order'));

    }// end of  shipping order


    public function updateItemstatus(Request $request)
    {
        $order = OrderDetail::findOrFail($request->id);
        $order->at_stock = $request->status;
        if($order->save()){
            return 1;
        }
        return 0;
    }

    public function complete_all_orders(Request $request){
        CoreComponentRepository::instantiateShopRepository();

         $date = $request->date;
         $sort_search = null;
         $orderStats = ['delivered'];
         $orders = Order::whereIn('order_status', $orderStats)->orderBy('code', 'desc');

         //dd($orders);
         if ($request->has('search')){
             $sort_search = $request->search;
             $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
         }
         if ($date != null) {
             $orders = $orders->where('created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
         }
         $orders = $orders->paginate(1000);
         return view('backend.sales.all_orders.complete', compact('orders', 'sort_search', 'date'));
    }//endof complete order

    // Inhouse Orders
    public function admin_orders(Request $request)
    {
        CoreComponentRepository::instantiateShopRepository();

        $date = $request->date;
        $payment_status = null;
        $delivery_status = null;
        $sort_search = null;
        $admin_user_id = User::where('user_type', 'admin')->first()->id;
        $orders = DB::table('orders')
                    ->orderBy('code', 'desc')
                    ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                    ->where('order_details.seller_id', $admin_user_id)
                    ->select('orders.id')
                    ->distinct();

        if ($request->payment_type != null){
            $orders = $orders->where('order_details.payment_status', $request->payment_type);
            $payment_status = $request->payment_type;
        }
        if ($request->delivery_status != null) {
            $orders = $orders->where('order_details.delivery_status', $request->delivery_status);
            $delivery_status = $request->delivery_status;
        }
        if ($request->has('search')){
            $sort_search = $request->search;
            $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
        }
        if ($date != null) {
            $orders = $orders->where('orders.created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('orders.created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
        }

        $orders = $orders->paginate(15);
        return view('backend.sales.inhouse_orders.index', compact('orders','payment_status','delivery_status', 'sort_search', 'admin_user_id', 'date'));
    }

    public function show($id)
    {
        $order = Order::findOrFail(decrypt($id));
        $order->viewed = 1;
        $order->save();
        return view('backend.sales.inhouse_orders.show', compact('order'));
    }

    // Seller Orders
    public function seller_orders(Request $request)
    {
        CoreComponentRepository::instantiateShopRepository();

        $date = $request->date;
        $payment_status = null;
        $delivery_status = null;
        $sort_search = null;
        $admin_user_id = User::where('user_type', 'admin')->first()->id;
        $orders = DB::table('orders')
                    ->orderBy('code', 'desc')
                    ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                    ->where('order_details.seller_id', '!=' ,$admin_user_id)
                    ->select('orders.id')
                    ->distinct();

        if ($request->payment_type != null){
            $orders = $orders->where('order_details.payment_status', $request->payment_type);
            $payment_status = $request->payment_type;
        }
        if ($request->delivery_status != null) {
            $orders = $orders->where('order_details.delivery_status', $request->delivery_status);
            $delivery_status = $request->delivery_status;
        }
        if ($request->has('search')){
            $sort_search = $request->search;
            $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
        }
        if ($date != null) {
            $orders = $orders->where('orders.created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('orders.created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
        }

        $orders = $orders->paginate(15);
        return view('backend.sales.seller_orders.index', compact('orders','payment_status','delivery_status', 'sort_search', 'admin_user_id', 'date'));
    }

    public function seller_orders_show($id)
    {
        $order = Order::findOrFail(decrypt($id));
        $order->viewed = 1;
        $order->save();
        return view('backend.sales.seller_orders.show', compact('order'));
    }


    // Pickup point orders
    public function pickup_point_order_index(Request $request)
    {
        $date = $request->date;
        $sort_search = null;

        if (Auth::user()->user_type == 'staff' && Auth::user()->staff->pick_up_point != null) {
            //$orders = Order::where('pickup_point_id', Auth::user()->staff->pick_up_point->id)->get();
            $orders = DB::table('orders')
                        ->orderBy('code', 'desc')
                        ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                        ->where('order_details.pickup_point_id', Auth::user()->staff->pick_up_point->id)
                        ->select('orders.id')
                        ->distinct();

            if ($request->has('search')){
                $sort_search = $request->search;
                $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
            }
            if ($date != null) {
                $orders = $orders->where('orders.created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('orders.created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
            }

            $orders = $orders->paginate(15);

            return view('backend.sales.pickup_point_orders.index', compact('orders'));
        }
        else{
            //$orders = Order::where('shipping_type', 'Pick-up Point')->get();
            $orders = DB::table('orders')
                        ->orderBy('code', 'desc')
                        ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                        ->where('order_details.shipping_type', 'pickup_point')
                        ->select('orders.id')
                        ->distinct();

            if ($request->has('search')){
                $sort_search = $request->search;
                $orders = $orders->where('code', 'like', '%'.$sort_search.'%');
            }
            if ($date != null) {
                $orders = $orders->where('orders.created_at', '>=', date('Y-m-d', strtotime(explode(" to ", $date)[0])))->where('orders.created_at', '<=', date('Y-m-d', strtotime(explode(" to ", $date)[1])));
            }

            $orders = $orders->paginate(15);

            return view('backend.sales.pickup_point_orders.index', compact('orders', 'sort_search', 'date'));
        }
    }

    public function pickup_point_order_sales_show($id)
    {
        if (Auth::user()->user_type == 'staff') {
            $order = Order::findOrFail(decrypt($id));
            return view('backend.sales.pickup_point_orders.show', compact('order'));
        }
        else{
            $order = Order::findOrFail(decrypt($id));
            return view('backend.sales.pickup_point_orders.show', compact('order'));
        }
    }


    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //dd(Session::get('cart'));
       // dd($request->session()->get('shipping_info'));
       $shipping_info =Session::get('shipping_info');
      // dd($shipping_info);

        $shipping_cost =  shippingCostByCityId($shipping_info['city']);
        //dd($shipping_cost);
        $order = new Order;
        if(Auth::check()){
            $order->user_id = Auth::user()->id;
        }
        else{
            $order->guest_id = mt_rand(100000, 999999);
        }

        $order->shipping_address = json_encode($request->session()->get('shipping_info'));



        $order->payment_type = $request->payment_option;
        $order->delivery_viewed = '0';
        $order->shipping_type = 'home_delivery';
        $order->shipping_cost =  $shipping_cost;
        $order->payment_status_viewed = '0';
        $order->code = date('Ymd-His').rand(10,99);
        $order->date = strtotime('now');

        if($order->save()){
        //   dd($order);
            $subtotal = 0;
            $tax = 0;
            $shipping = 0;

            //calculate shipping is to get shipping costs of different types
            $admin_products = array();
            $seller_products = array();

            //Order Details Storing
            //foreach (Session::get('cart')->where('owner_id', Session::get('owner_id')) as $key => $cartItem){
                foreach (Session::get('cart')as $key => $cartItem){
                $product = Product::find($cartItem['id']);
              // dd($cartItem['shipping_type']);
                if($product->added_by == 'admin'){
                    array_push($admin_products, $cartItem['id']);
                }
                else{
                    $product_ids = array();
                    if(array_key_exists($product->user_id, $seller_products)){
                        $product_ids = $seller_products[$product->user_id];
                    }
                    array_push($product_ids, $cartItem['id']);
                    $seller_products[$product->user_id] = $product_ids;
                }

                $subtotal += $cartItem['price']*$cartItem['quantity'];
                $tax += $cartItem['tax']*$cartItem['quantity'];

                $product_variation = $cartItem['variant'];

                if($product_variation != null){
                    $product_stock = $product->stocks->where('variant', $product_variation)->first();
                    if($product->digital != 1 &&  $cartItem['quantity'] > $product_stock->qty){
                        flash(translate('The requested quantity is not available for ').$product->getTranslation('name'))->warning();
                        $order->delete();
                        return redirect()->route('cart')->send();
                    }
                    else {
                        $product_stock->qty -= $cartItem['quantity'];
                        $product_stock->save();
                    }
                }
                else {
                // dd($product->current_stock);

                    if ($product->digital != 1 && $cartItem['quantity'] > $product->current_stock) {
                        flash(translate('The requested quantity is not available for ').$product->getTranslation('name'))->warning();
                        $order->delete();
                        return redirect()->route('cart')->send();
                    }
                    else {
                        $product->current_stock -= $cartItem['quantity'];
                        $product->save();
                    }
                }

                $order_detail = new OrderDetail;
                $order_detail->order_id  =$order->id;
                $order_detail->seller_id = $product->user_id;
                $order_detail->product_id = $product->id;
                $order_detail->variation = $product_variation;
                $order_detail->price = $cartItem['price'] * $cartItem['quantity'];
                $order_detail->tax = $cartItem['tax'] * $cartItem['quantity'];
                //$order_detail->shipping_type = $cartItem['shipping_type'];
               // $order_detail->shipping_type = 'home_delivery';
                $order_detail->product_referral_code = $cartItem['product_referral_code'];

                //Dividing Shipping Costs
                // if ($cartItem['shipping_type'] == 'home_delivery') {
                //     $order_detail->shipping_cost = getShippingCost($key);
                // }
                // else {
                //     $order_detail->shipping_cost = 0;
                // }

                // $shipping += $order_detail->shipping_cost;

                // if ($cartItem['shipping_type'] == 'pickup_point') {
                //     $order_detail->pickup_point_id = $cartItem['pickup_point'];
                // }
                //End of storing shipping cost

                $order_detail->quantity = $cartItem['quantity'];
                $order_detail->save();

                $product->num_of_sale++;
                $product->save();
            }
            $shipping = $shipping_cost;
            $order->grand_total = $subtotal + $tax + $shipping;

            if(Session::has('coupon_discount')){
                $order->grand_total -= Session::get('coupon_discount');
                $order->coupon_discount = Session::get('coupon_discount');

                $coupon_usage = new CouponUsage;
                $coupon_usage->user_id = Auth::user()->id;
                $coupon_usage->coupon_id = Session::get('coupon_id');
                $coupon_usage->save();
            }

            $order->save();

            $array['view'] = 'emails.invoice';
            $array['subject'] = translate('Your order has been placed').' - '.$order->code;
            $array['from'] = env('MAIL_USERNAME');
            $array['order'] = $order;

            foreach($seller_products as $key => $seller_product){
                try {
                    Mail::to(\App\User::find($key)->email)->queue(new InvoiceEmailManager($array));
                } catch (\Exception $e) {

                }
            }

            if (\App\Addon::where('unique_identifier', 'otp_system')->first() != null && \App\Addon::where('unique_identifier', 'otp_system')->first()->activated && \App\OtpConfiguration::where('type', 'otp_for_order')->first()->value){
                try {
                    $otpController = new OTPVerificationController;
                    $otpController->send_order_code($order);
                } catch (\Exception $e) {

                }
            }

            //sends email to customer with the invoice pdf attached
            if(env('MAIL_USERNAME') != null){
                try {
                    Mail::to($request->session()->get('shipping_info')['email'])->queue(new InvoiceEmailManager($array));
                    Mail::to(User::where('user_type', 'admin')->first()->email)->queue(new InvoiceEmailManager($array));
                } catch (\Exception $e) {

                }
            }

            $request->session()->put('order_id', $order->id);

        }


    }


    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        $order = Order::findOrFail($id);
        if($order != null){
            foreach($order->orderDetails as $key => $orderDetail){
                try {
                    if ($orderDetail->variantion != null) {
                        $product_stock = ProductStock::where('product_id', $orderDetail->product_id)->where('variant', $orderDetail->variantion)->first();
                        if($product_stock != null){
                            $product_stock->qty += $orderDetail->quantity;
                            $product_stock->save();
                        }
                    }
                    else {
                        $product = $orderDetail->product;
                        $product->current_stock += $orderDetail->quantity;
                        $product->save();
                    }
                } catch (\Exception $e) {

                }

                $orderDetail->delete();
            }
            $order->delete();
            flash(translate('Order has been deleted successfully'))->success();
        }
        else{
            flash(translate('Something went wrong'))->error();
        }
        return back();
    }

    public function cancell_order($id){
      //  dd('welcom');
       $order = Order::findOrFail($id);

       if($order != null){
            foreach($order->orderDetails as $key => $orderDetail){


                $orderDetail->delivery_status = 'cancelled';
                $orderDetail->save();
            }
        $order->order_status = 'cancelled';
        $order->save();
            flash(translate('Order has been deleted successfully'))->success();
        }
        else{
            flash(translate('Something went wrong'))->error();
        }
        return back();

    }

    public function order_details(Request $request)
    {
        $order = Order::findOrFail($request->order_id);
        $order->save();
        return view('frontend.user.seller.order_details_seller', compact('order'));
    }

    public function update_delivery_status(Request $request)
    {
        $order = Order::findOrFail($request->order_id);
        $order->delivery_viewed = '0';
        $order->order_status = $request->status;
        $order->save();
        if(Auth::user()->user_type == 'seller'){
            foreach($order->orderDetails->where('seller_id', Auth::user()->id) as $key => $orderDetail){
                $orderDetail->delivery_status = $request->status;
                $orderDetail->save();
            }
        }
        else{
            foreach($order->orderDetails as $key => $orderDetail){
                $orderDetail->delivery_status = $request->status;
                $orderDetail->save();
            }
        }

        if (\App\Addon::where('unique_identifier', 'otp_system')->first() != null && \App\Addon::where('unique_identifier', 'otp_system')->first()->activated && \App\OtpConfiguration::where('type', 'otp_for_delivery_status')->first()->value){
            try {
                $otpController = new OTPVerificationController;
                $otpController->send_delivery_status($order);
            } catch (\Exception $e) {
            }
        }

        return 1;
    }// end of function

    public function update_shipping_status(Request $request)
    {
        $order = Order::findOrFail($request->order_id);

        $order->shipping_by = $request->status;
        $order->save();

        return 1;
    }// end of function

    public function update_refund_status(Request $request)
    {
        $refund = RefundRequest::findOrFail($request->refund_id);
        $refund->refund_status = $request->status;
        $refund->save();

        return 1;
    }

    public function recalculate_order(Request $request)
    {
        $order = OrderDetail::findOrFail($request->order_id);

        $order->is_deleted = 1;

        $order->save();

        return 1;
    }

    public function available_yes(Request $request)
    {
       // dd($request->all());
        $order = Order::findOrFail($request->order_id);
        $status = $request->status;
        $id = $request->id;
         DB::table('order_details')
              ->where('id', $id)
              ->update(['item_status' => $status ]);

        return 1;
    }// end of available_yes

    public function update_payment_status(Request $request)
    {
        $order = Order::findOrFail($request->order_id);
        $order->payment_status_viewed = '0';
        $order->save();

        if(Auth::user()->user_type == 'seller'){
            foreach($order->orderDetails->where('seller_id', Auth::user()->id) as $key => $orderDetail){
                $orderDetail->payment_status = $request->status;
                $orderDetail->save();
            }
        }
        else{
            foreach($order->orderDetails as $key => $orderDetail){
                $orderDetail->payment_status = $request->status;
                $orderDetail->save();
            }
        }

        $status = 'paid';
        foreach($order->orderDetails as $key => $orderDetail){
            if($orderDetail->payment_status != 'paid'){
                $status = 'unpaid';
            }
        }
        $order->payment_status = $status;
        $order->save();


        if($order->payment_status == 'paid' && $order->commission_calculated == 0){
            if(\App\Addon::where('unique_identifier', 'seller_subscription')->first() == null || !\App\Addon::where('unique_identifier', 'seller_subscription')->first()->activated){
                if ($order->payment_type == 'cash_on_delivery') {
                    if (BusinessSetting::where('type', 'category_wise_commission')->first()->value != 1) {
                        $commission_percentage = BusinessSetting::where('type', 'vendor_commission')->first()->value;
                        foreach ($order->orderDetails as $key => $orderDetail) {
                            $orderDetail->payment_status = 'paid';
                            $orderDetail->save();
                            if($orderDetail->product->user->user_type == 'seller'){
                                $seller = $orderDetail->product->user->seller;
                                 $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100 + $orderDetail->tax + $orderDetail->shipping_cost;
                                //$seller->admin_to_pay = $seller->admin_to_pay - ($orderDetail->price*$commission_percentage)/100;
                                $seller->save();
                            }
                        }
                    }
                    else{
                        foreach ($order->orderDetails as $key => $orderDetail) {
                            $orderDetail->payment_status = 'paid';
                            $orderDetail->save();
                            if($orderDetail->product->user->user_type == 'seller'){
                                $commission_percentage = $orderDetail->product->category->commision_rate;
                                $seller = $orderDetail->product->user->seller;
                                 $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100 + $orderDetail->tax + $orderDetail->shipping_cost;
                               // $seller->admin_to_pay = $seller->admin_to_pay - ($orderDetail->price*$commission_percentage)/100;
                                $seller->save();
                            }
                        }
                    }
                }
                elseif($order->manual_payment) {
                    if (BusinessSetting::where('type', 'category_wise_commission')->first()->value != 1) {
                        $commission_percentage = BusinessSetting::where('type', 'vendor_commission')->first()->value;
                        foreach ($order->orderDetails as $key => $orderDetail) {
                            $orderDetail->payment_status = 'paid';
                            $orderDetail->save();
                            if($orderDetail->product->user->user_type == 'seller'){
                                $seller = $orderDetail->product->user->seller;
                                $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100 + $orderDetail->tax + $orderDetail->shipping_cost;
                                $seller->save();
                            }
                        }
                    }
                    else{
                        foreach ($order->orderDetails as $key => $orderDetail) {
                            $orderDetail->payment_status = 'paid';
                            $orderDetail->save();
                            if($orderDetail->product->user->user_type == 'seller'){
                                $commission_percentage = $orderDetail->product->category->commision_rate;
                                $seller = $orderDetail->product->user->seller;
                                $seller->admin_to_pay = $seller->admin_to_pay + ($orderDetail->price*(100-$commission_percentage))/100 + $orderDetail->tax + $orderDetail->shipping_cost;
                                $seller->save();
                            }
                        }
                    }
                }
            }

            if (\App\Addon::where('unique_identifier', 'affiliate_system')->first() != null && \App\Addon::where('unique_identifier', 'affiliate_system')->first()->activated) {
                $affiliateController = new AffiliateController;
                $affiliateController->processAffiliatePoints($order);
            }

            if (\App\Addon::where('unique_identifier', 'club_point')->first() != null && \App\Addon::where('unique_identifier', 'club_point')->first()->activated) {
                if ($order->user != null) {
                    $clubpointController = new ClubPointController;
                    $clubpointController->processClubPoints($order);
                }
            }

            $order->commission_calculated = 1;
            $order->save();
        }

        if (\App\Addon::where('unique_identifier', 'otp_system')->first() != null && \App\Addon::where('unique_identifier', 'otp_system')->first()->activated && \App\OtpConfiguration::where('type', 'otp_for_paid_status')->first()->value){
            try {
                $otpController = new OTPVerificationController;
                $otpController->send_payment_status($order);
            } catch (\Exception $e) {
            }
        }
        return 1;
    }// end of update_payment_status

    public function refundOrderItem(Request $request){

       // dd($request->all());
        $order = OrderDetail::findOrFail($request->order_detail_id);

        $order->is_deleted = 1;
        $order->is_refunded = 1;
        $order->bank_acc = $request->bank_acc;
        $order->bank_id = $request->bank_id ;
        $order->refund_type = $request->refund_type;
        $order->save();

        if($request->refund_type == "welt"){
            $welt = new Wallet();
            $welt->user_id =$request->user ;
            $welt->amount = $request->amount ;
            $welt->payment_method = "Refund";
            $welt->payment_details = "Product Money Refund Becouse Product not found in seller";
            //dd($welt);
            $welt->save();
        }

        flash(translate('Refund has been added successfully'))->success();

        return back();

    }// end of refund order item


}
