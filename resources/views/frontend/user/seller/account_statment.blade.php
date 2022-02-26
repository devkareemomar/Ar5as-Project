@extends('frontend.layouts.app')
@section('content')
<section class="py-5">
    <div class="container-fluid">
        <div class="d-flex align-items-start">
            @include('frontend.inc.user_side_nav')

            <div class="aiz-user-panel">
                {{-- <div class="aiz-titlebar mt-2 mb-4">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <h1 class="h3">{{ translate('Account Statment') }}</h1>
                        </div>
                    </div>
                </div> --}}

                <div class="card">
                    <div class="row">
                        <div class="card-header ">
                            <h5 class="mb-0 h6">{{ translate('Account Statment') }}</h5>
                        </div>

                    </div>


                    <div class="card-body">
                        <form action="{{ route('seller.account.statment') }}" method="GET">
                            <div class="row">
                                <label class="col-md-2 col-from-label">{{translate('Select Date')}} <span
                                        class="text-danger">*</span></label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control aiz-date-range" name="date_range"
                                        placeholder="{{translate('Select Date')}}" data-time-picker="true"
                                        data-format="Y-MM-DD  HH:mm:ss" data-separator=" to " autocomplete="off">
                                    <input type="hidden" value="{{ Auth::user()->id }}" name="seller_id">
                                </div>
                                <button type="submit" class="col-md-2 btn btn-primary">{{translate('view
                                    Report')}}</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-4 mb-3 ml-auto" >
                        <div class="bg-grad-1 text-white rounded-lg overflow-hidden">
                          <span class="size-30px rounded-circle mx-auto bg-soft-primary d-flex align-items-center justify-content-center mt-3">
                              <i class="las la-dollar-sign la-2x text-white"></i>
                          </span>
                          <div class="px-3 pt-3 pb-3">

                              <div class="h4 fw-700 text-center">{{ single_price(Auth::user()->seller->admin_to_pay	) }}</div>
                              <div class="opacity-50 text-center">{{ translate('Balance in progress') }}</div>
                          </div>
                        </div>
                    </div>

                    @php
                        $date =  \Carbon\Carbon::parse(Auth::user()->seller->created_at);
                        $now  =  \Carbon\Carbon::now();
                        $diff = $date->diffInMonths($now);
                    @endphp

                    @if ($diff >= 1)
                        <div class="col-md-4 mb-3 ml-auto" >
                            <div class="bg-grad-3 text-white rounded-lg overflow-hidden">
                            <span class="size-30px rounded-circle mx-auto bg-soft-primary d-flex align-items-center justify-content-center mt-3">
                                <i class="las la-dollar-sign la-2x text-white"></i>
                            </span>
                            <div class="px-3 pt-3 pb-3">

                                <div class="h4 fw-700 text-center">{{ single_price(Auth::user()->seller->available_balance	) }}</div>
                                <div class="opacity-50 text-center"> {{ translate('Available Balance') }}</div>
                            </div>
                            </div>
                        </div>
                    @endif

                </div>
                @if($orders)
                <div class="card">

                    <div class="card-header ">
                        @php
                        $logo = get_setting('header_logo');
                        @endphp

                        <div class="row">

                            <div class="float-md-right">
                                @if($logo != null)
                                <img src="{{ uploaded_asset($logo) }}" height="60" style="">
                                @else
                                <img src="{{ static_asset('assets/img/logo.png') }}" height="30" style="">
                                @endif
                            </div>

                            <div class="float-md-right">
                                <h5 class="h6 right">{{ translate('Account Statment') }}</h5>
                            </div>


                        </div>

                    </div>

                    <div class="card-body">


                        {{-- <h2> {{translate('Orders')}} </h2> <br>
                        <div class="row">
                            <label class="col-md-4 col-from-label">{{translate('All order')}} </label>
                            <div class="col-md-8">
                                {{ $orders['all_orders']}}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Pending Orders')}} </label>
                            <div class="col-md-8">
                                {{ $orders['pending_orders']}}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Cancelled Orders')}} </label>
                            <div class="col-md-8">
                                {{ $orders['cancelled_orders']}}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Successful Orders')}} </label>
                            <div class="col-md-8">
                                {{ $orders['successful_orders']}}
                            </div>

                            <label class="col-md-4 col-from-label">{{translate('Total Amount')}} </label>
                            <div class="col-md-8">
                                {{ single_price ( $orders['amount_orders'])}}
                            </div>

                        </div>

                        <h2> {{translate('Refund')}} </h2> <br>
                        <div class="row">
                            <label class="col-md-4 col-from-label">{{translate('All Refund')}} </label>
                            <div class="col-md-8">
                                {{ $refund['all_refund'] }}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Pending Refund')}} </label>
                            <div class="col-md-8">
                                {{ $refund['pending_refund'] }}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Check Refund')}} </label>
                            <div class="col-md-8">
                                {{ $refund['check_refund'] }}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('At Stock Refund')}} </label>
                            <div class="col-md-8">
                                {{ $refund['atstock_refund'] }}
                            </div>

                            <label class="col-md-4 col-from-label">{{translate('Aproved Refund')}} </label>
                            <div class="col-md-8">
                                {{$refund['aproved_refund'] }}
                            </div>
                            <label class="col-md-4 col-from-label">{{translate('Total Amount')}} </label>
                            <div class="col-md-8">
                                {{ single_price ( $refund['amount_refund'] )}}
                            </div>

                        </div>

                        <h2> {{translate('Profits')}} </h2> <br>
                        <div class="row">
                            <label class="col-md-4 col-from-label">{{translate('Net Profits')}} </label>
                            <div class="col-md-8">
                                {{ single_price ( $profits['netProfit'] ) }}
                            </div>
                        </div> --}}


        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">كودالطلب</th>
                    <th scope="col">التاريخ</th>
                    <th scope="col">حالة الطلب</th>
                    <th scope="col">قيمة المنتج</th>
                    <th scope="col">عمولة أرخص(14%)</th>
                    <th scope="col">رسوم الشحن (5 جنيه)</th>
                    <th scope="col">رسوم منتجات اقل من 150 جنيه
                        (10جنيه)</th>
                    <th scope="col">دائن له</th>
                    <th scope="col">مدين عليه</th>
                    <th scope="col">الرصيد</th>

                </tr>
            </thead>
            <tbody>


                <tr>
                    <th scope="row">1</th>
                    <td>Hyper link (order details)</td>
                    <td>تاريخ تسليم الطلب او قبول المرتجع</td>
                    <td>مؤكد/مرتجع</td>
                    <td>تضاف القيمة الى الرصيد في حالة الطلب المؤكد وتخصم في حالة المرتجع</td>
                    <td>تخصم القيمة من الرصيد في حالة الطلب المؤكد وتضاف الى الرصيد في حالة المرتجع</td>
                    <td>تخصم القيمة من الرصيد في حالة الطلب المؤكد ولا تضاف الى الرصيد في حالة المرتجع</td>
                    <td>تخصم القيمة من الرصيد في حالة الطلب المؤكد وتضاف الى الرصيد في حالة المرتجع</td>
                    <td>في حالة الطلبات المؤكدة =قيمة المنتج وفي حالة المرتجعات = عمولة ارخص+ رسوم منتجات اقل من 150
                    </td>
                    <td>في حالة الطلبات المؤكدة =( مجموع عمولة ارخص+رسوم الشحن+رسوم منتجات اقل من 150 )وفي حالة
                        المرتجعات = قيمة المنتج </td>
                    <td>الرصيد السابق+(الدائن-المدين)</td>
                </tr>
                {{-- {{ dd($orders['all_orders']) }} --}}
                @foreach ( $orders['all_orders'] as $key => $order )

                @php
                $product_price =$order->price + $order->tax;
                $commission = 14/100 ;
                $shipping = 5;
                $products_less = 10;

                @endphp
                <tr>
                    <th scope="row">{{ $key+1 }}</th>
                    <td><a href="{{route('orders.seller.detail', encrypt($order->order->id))}}">{{
                            $order->order->code }}</a></td>
                    <td>{{ $order->created_at }}</td>
                    <td>{{ ($order->is_refunded == 1)? translate('refunded') : translate('confirmed') }}</td>
                    <td>{{ $product_price }}</td>
                    <td>{{ $product_price * $commission }}</td>
                    <td>
                        @php
                        if( $order->is_refunded == 1){
                        echo 0 ;

                        }elseif( $order->delivery_status == 'delivered'){
                        echo $shipping;

                        }
                        @endphp

                    </td>
                    <td>{{ ($product_price < 150 )? $products_less : 0 }}</td>
                    <td>
                        @php
                        if( $order->is_refunded == 1){
                        echo $credit = ($product_price < 150 )? ($product_price * $commission ) + $products_less :
                            $product_price * $commission; }elseif( $order->delivery_status == 'delivered'){
                            echo $credit = $product_price ;

                            }
                            @endphp

                    </td>
                    <td>

                        @php
                        if( $order->is_refunded == 1){
                        echo $debit = $product_price;

                        }elseif($order->delivery_status == 'delivered'){
                        echo $debit = ($product_price < 150 )? ($product_price * $commission) + $products_less +
                            $shipping : ($product_price * $commission )+ $shipping ; } @endphp </td>
                    <td>{{ $credit - $debit }}</td>
                </tr>
                @endforeach


            </tbody>
        </table>
                    </div>

                </div>
                @endif
            </div>
        </div>
    </div>

</section>

@endsection
