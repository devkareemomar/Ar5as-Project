@extends('frontend.layouts.app')
@section('content')
<section class="py-5">
    <div class="container-fluid">
        <div class="d-flex align-items-start">
            @include('frontend.inc.user_side_nav')

            <div class="aiz-user-panel">
                {{--  <div class="aiz-titlebar mt-2 mb-4">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <h1 class="h3">{{ translate('Account Statment') }}</h1>
                        </div>
                    </div>
                </div>  --}}

                <div class="card">
                    <div class="row">
                        <div class="card-header ">
                            <h5 class="mb-0 h6">{{ translate('Account Statment') }}</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('seller.account.statment') }}" method="GET" >
                            <div class="row">
                                <label class="col-md-2 col-from-label">{{translate('Select Date')}} <span class="text-danger">*</span></label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control aiz-date-range" name="date_range" placeholder="{{translate('Select Date')}}" data-time-picker="true" data-format="Y-MM-DD  HH:mm:ss" data-separator=" to " autocomplete="off">
                                    <input type="hidden" value="{{ Auth::user()->id }}" name="seller_id">
                                </div>
                                <button type="submit" class="col-md-2 btn btn-primary">{{translate('view Report')}}</button>
                            </div>
                        </form>
                    </div>
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
                        <h2> {{translate('Orders')}} </h2> <br>
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
                                   {{  $refund['all_refund'] }}
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
                                    {{  $refund['atstock_refund'] }}
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
                                    {{   single_price ( $profits['netProfit'] ) }}
                                </div>
                            </div>
                    </div>
                       
                </div>
                @endif
            </div>
        </div>
    </div>
  
</section>

@endsection