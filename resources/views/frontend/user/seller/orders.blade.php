@extends('frontend.layouts.app')

@section('content')

    <section class="py-5">
        <div class="container-fluid">
            <div class="d-flex align-items-start">
                @include('frontend.inc.user_side_nav')
                <div class="aiz-user-panel">

                    <div class="card">
                        <form id="sort_orders" action="" method="GET">
                          <div class="card-header row gutters-5">
                            <div class="col text-center text-md-left">
                              <h5 class="mb-md-0 h6">{{ translate('Orders') }}</h5>
                            </div>
                              <div class="col-md-3 ml-auto">
                                  <select class="form-control aiz-selectpicker" data-placeholder="{{ translate('Filter by Payment Status')}}" name="payment_status" onchange="sort_orders()">
                                      <option value="">{{ translate('Filter by Payment Status')}}</option>
                                      <option value="paid" @isset($payment_status) @if($payment_status == 'paid') selected @endif @endisset>{{ translate('Paid')}}</option>
                                      <option value="unpaid" @isset($payment_status) @if($payment_status == 'unpaid') selected @endif @endisset>{{ translate('Un-Paid')}}</option>
                                  </select>
                              </div>

                              <div class="col-md-3 ml-auto">
                                <select class="form-control aiz-selectpicker" data-placeholder="{{ translate('Filter by Payment Status')}}" name="delivery_status" onchange="sort_orders()">
                                    <option value="">{{ translate('Filter by Deliver Status')}}</option>
                                    <option value="pending" @isset($delivery_status) @if($delivery_status == 'pending') selected @endif @endisset>{{ translate('Pending')}}</option>
                                     <option value="picked" @isset($delivery_status) @if($delivery_status == 'picked') selected @endif @endisset>{{ translate('Picked')}}</option>
                                    <option value="customer_not_found" @isset($delivery_status) @if($delivery_status == 'customer_not_found') selected @endif @endisset>{{ translate('Customer Not Found')}}</option>
                                    <option value="on_delivery" @isset($delivery_status) @if($delivery_status == 'on_delivery') selected @endif @endisset>{{ translate('On delivery')}}</option>
                                    <option value="delivered" @isset($delivery_status) @if($delivery_status == 'delivered') selected @endif @endisset>{{ translate('Delivered')}}</option>
                                </select>
                              </div>
                              <div class="col-md-3">
                                <div class="from-group mb-0">
                                    <input type="text" class="form-control" id="search" name="search" @isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type Order code & hit Enter') }}">
                                </div>
                              </div>
                          </div>
                        </form>


                            <div class="card-body p-3">
                                <table class="table aiz-table mb-0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>{{ translate('Order Code')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Date')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Total Items')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Order Status')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Action')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Customer')}}</th>
                                            <th data-breakpoints="md">{{ translate('Amount')}}</th>

                                            <th>{{ translate('Payment Status')}}</th>
                                            <th class="text-right">{{ translate('Options')}}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($orders as $key => $order_id)
                                            @php
                                                $order = \App\Order::find($order_id->id);
                                            @endphp
                                            @if($order != null)
                                                <tr>
                                                    <td>
                                                        {{ $key+1 }}
                                                    </td>
                                                    <td>
                                                        {{-- <a href="#{{ $order->code }}" onclick="show_order_details({{ $order->id }})">{{ $order->code }}</a> --}}
                                                        <a href="{{route('orders.seller.detail', encrypt($order->id))}}">{{ $order->code }}</a>
                                                    </td>
                                                    <td>
                                                        {{ $order->created_at }}
                                                    </td>
                                                    <td>
                                                        {{ count($order->orderDetails->where('seller_id', Auth::user()->id)) }}
                                                    </td>
                                                     <td>

                                                        @php
                                                            $status = $order->orderDetails->first()->delivery_status;
                                                        @endphp
                                                        @if($status == 'delivered')
                                                        <span class="badge badge-inline badge-success">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>
                                                        @elseif($status == 'on_delivery')
                                                        <span class="badge badge-inline badge-primary">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>
                                                        @elseif($status == 'pending')
                                                        <span class="badge badge-inline badge-secondary">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>
                                                        @elseif($status == 'picked')
                                                        <span class="badge badge-inline badge-info">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>
                                                        @elseif($status == 'customer_not_found')
                                                        <span class="badge badge-inline badge-danger">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>


                                                        @elseif($status == 'cancelled')
                                                        <span class="badge badge-inline badge-danger">
                                                             {{ translate(ucfirst(str_replace('_', ' ', $status))) }}
                                                        </span>
                                                        @else

                                                        {{ translate('No Status') }}
                                                        @endif


                                                    </td>
                                                    <td>

                                                        {{-- confirmed --}}
                                                         @php
                                                            $itemStatus = $order->orderDetails->where('seller_id', Auth::user()->id);
                                                            $itemStatus = $itemStatus->toArray();



                                                           $itemStatus2 = array_values($itemStatus);
                                                        @endphp

                                                       {{ $itemStatus2[0]['item_status'] }}



                                                    </td>
                                                    <td>
                                                        @if ($order->user_id != null)
                                                            {{ $order->user->name }}
                                                        @else
                                                            Guest ({{ $order->guest_id }})
                                                        @endif
                                                    </td>
                                                    <td>
                                                        {{ $order->orderDetails->where('order_id',$order->id)->where('is_refunded',0)->where('seller_id', Auth::user()->id)->sum('price') + $order->orderDetails->where('order_id',$order->id)->where('is_refunded',0)->where('seller_id', Auth::user()->id)->sum('tax')}}
                                                    </td>

                                                    <td>
                                                        @if ($order->orderDetails->where('seller_id', Auth::user()->id)->first()->payment_status == 'paid')
                                                            <span class="badge badge-inline badge-success">{{ translate('Paid')}}</span>
                                                        @else
                                                            <span class="badge badge-inline badge-danger">{{ translate('Unpaid')}}</span>
                                                        @endif
                                                    </td>
                                                    <td class="text-right">
                                                     @if($status != 'cancelled')
                                                        <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('orders.seller.detail', encrypt($order->id))}}" title="{{ translate('View') }}">
                                                            <i class="las la-eye"></i>
                                                        </a>
                                                        @endif
                                                        {{-- <a href="javascript:void(0)" class="btn btn-soft-info btn-icon btn-circle btn-sm" onclick="show_order_details({{ $order->id }})" title="{{ translate('Order Details') }}">
                                                            <i class="las la-eye"></i>
                                                        </a> --}}
                                                        @php
                                                            $seller = Auth::user()->id;
                                                        @endphp
                                                        <a href="{{ route('seller.invoice.download', $order->id .'/'. $seller) }}" class="btn btn-soft-warning btn-icon btn-circle btn-sm" title="{{ translate('Download Invoice') }}">
                                                            <i class="las la-download"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            @endif
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="aiz-pagination">
                                	{{ $orders->links() }}
                              	</div>
                            </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('modal')
    <div class="modal fade" id="order_details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">
                <div id="order-details-modal-body">

                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        function sort_orders(el){
            $('#sort_orders').submit();
        }
    </script>
@endsection
