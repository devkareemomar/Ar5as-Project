@extends('frontend.layouts.app')

@section('content')

<section class="py-5">
    <div class="container-fluid">
        <div class="d-flex align-items-start">
            @include('frontend.inc.user_side_nav')
            <div class="aiz-user-panel">
                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0 h6">{{ translate('Purchase History') }}</h5>
                    </div>
                    @if (count($orders) > 0)
                        <div class="card-body">
                            <table class="table aiz-table mb-0">
                                <thead> 
                                    <tr>
                                        <th>{{ translate('Code')}}</th>
                                        <th data-breakpoints="md">{{ translate('Date')}}</th>
                                        <th>{{ translate('Amount')}}</th>
                                        <th data-breakpoints="md">{{ translate('Delivery Status')}}</th>
                                        <th data-breakpoints="md">{{ translate('Payment Status')}}</th>
                                        <th class="text-right">{{ translate('Options')}}</th>
                                    </tr>
                                </thead> 
                                <tbody>
                                    @foreach ($orders as $key => $order)
                                        @if (count($order->orderDetails) > 0)
                                            <tr>
                                                <td>
                                                    <a href="#{{ $order->code }}" onclick="show_purchase_history_details({{ $order->id }})">{{ $order->code }}</a>
                                                </td>
                                                <td>{{ date('d-m-Y', $order->date) }}</td>
                                                <td>
                                                    @php
                                                        $grand =  $order->grand_total - ($order->orderDetails->where('is_deleted' , '=' , 1)->sum('tax') + $order->orderDetails->where('is_deleted' , '=' , 1)->sum('price')) ;
                                                    @endphp
                                                        {{ single_price($grand) }}
                                                   
                                                </td>
                                                <td>
                                                    @if ($order->order_status == 'cancelled')
                                                    <span class="badge badge-inline badge-danger">{{translate('Cancelled')}}</span>
                                                    @else
                                                        {{ $order->order_status }}
                                                        {{--  {{ translate(ucfirst(str_replace('_', ' ', $order->orderDetails->first()->delivery_status))) }}  --}}
                                                        @if($order->delivery_viewed == 0)
                                                            <span class="ml-2" style="color:green"><strong>*</strong></span>
                                                        @endif
                                                    @endif
                                                   
                                                </td>
                                                <td>
                                                    @if ($order->payment_status == 'paid')
                                                        <span class="badge badge-inline badge-success">{{translate('Paid')}}</span>
                                                    @else
                                                        <span class="badge badge-inline badge-danger">{{translate('Unpaid')}}</span>
                                                    @endif
                                                    @if($order->payment_status_viewed == 0)
                                                        <span class="ml-2" style="color:green"><strong>*</strong></span>
                                                    @endif
                                                </td>
                                                <td class="text-right"> 
                                                    @if ($order->order_status == 'pending' && $order->payment_status == 'unpaid')
                                                        <a href="javascript:void(0)" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('orders.cancell', $order->id)}}" title="{{ translate('Cancel') }}">
                                                           <i class="las la-trash"></i>
                                                       </a>
                                                    @endif
                                                    <a href="javascript:void(0)" class="btn btn-soft-info btn-icon btn-circle btn-sm" onclick="show_purchase_history_details({{ $order->id }})" title="{{ translate('Order Details') }}">
                                                        <i class="las la-eye"></i>
                                                    </a>
                                                    <a class="btn btn-soft-warning btn-icon btn-circle btn-sm" href="{{ route('customer.invoice.download', $order->id) }}" title="{{ translate('Download Invoice') }}">
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
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('modal')
    @include('modals.delete_modal')

    <div class="modal fade" id="order_details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
        <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
            <div class="modal-content">
                <div id="order-details-modal-body">

                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="payment_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div id="payment_modal_body">

                </div>
            </div>
        </div>
    </div>
 
@endsection

@section('script')
    <script type="text/javascript">
        $('#order_details').on('hidden.bs.modal', function () {
            location.reload();
        })
    </script>

@endsection
