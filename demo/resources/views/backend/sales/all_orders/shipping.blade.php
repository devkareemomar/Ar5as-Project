 @extends('backend.layouts.app')

@section('content')
@php
    $refund_request_addon = \App\Addon::where('unique_identifier', 'refund_request')->first();
@endphp
<div class="card">
      <form class="" action="" method="GET">
        <div class="card-header row gutters-5">
          <div class="col text-center text-md-left">
            <h5 class="mb-md-0 h6">{{ translate('All Orders Shipping') }}</h5>
          </div>
          <div class="col-lg-2">
              <div class="form-group mb-0">
                  <input type="text" class="aiz-date-range form-control" value="{{ $date }}" name="date" placeholder="{{ translate('Filter by date') }}" data-format="DD-MM-Y" data-separator=" to " data-advanced-range="true" autocomplete="off">
              </div>
          </div>
          <div class="col-lg-2">
            <div class="form-group mb-0">
              <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="{{ translate('Type Order code & hit Enter') }}">
            </div>
          </div>
          <div class="col-auto">
            <div class="form-group mb-0">
              <button type="submit" class="btn btn-primary">{{ translate('Filter') }}</button>
            </div>
          </div>
        </div>
    </form>
    <div class="card-body">
         {{-- aiz-table --}}
        <table class="table  mb-0" id="sampleTable">
            <thead>
                <tr>
                    <th>#</th>
                    <th>{{ translate('Order Code') }}</th>
                    <th>{{ translate('Order Date') }}</th>
                    <th data-breakpoints="md">{{ translate('Total Items') }}</th>
                    <th data-breakpoints="md">{{ translate('Order Status') }}</th>
                    <th data-breakpoints="md">{{ translate('Customer') }}</th>
                    <th data-breakpoints="md">{{ translate('Amount') }}</th>
                    
                    <th data-breakpoints="md">{{ translate('Payment Status') }}</th>
                    @if ($refund_request_addon != null && $refund_request_addon->activated == 1)
                        <th>{{ translate('Refund') }}</th>
                    @endif
                    <th class="text-right" width="15%">{{translate('options')}}</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($orders as $key => $order)
                    <tr>
                        <td>
                            {{ ($key+1) + ($orders->currentPage() - 1)*$orders->perPage() }}
                        </td>
                        <td>
                            {{ $order->code }}
                        </td>
                        <td>
                            {{ $order->created_at }}
                        </td>
                        <td>
                            {{ count($order->orderDetails) }}
                        </td>
                         <td>
                                                          
                            @php
                                $status = $order->order_status;
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
                            @if ($order->user != null)
                                {{ $order->user->name }}
                            @else
                                Guest ({{ $order->guest_id }})
                            @endif
                        </td>
                        <td>
                            {{ single_price($order->grand_total) }}
                        </td>
                        
                       
                             
                        
                        <td>
                            @if ($order->payment_status == 'paid')
                                <span class="badge badge-inline badge-success">{{translate('Paid')}}</span>
                            @else
                                <span class="badge badge-inline badge-danger">{{translate('Unpaid')}}</span>
                            @endif
                        </td>
                        @if ($refund_request_addon != null && $refund_request_addon->activated == 1)
                            <td>
                                @if (count($order->refund_requests) > 0)
                                    {{ count($order->refund_requests) }} {{ translate('Refund') }}
                                @else
                                    {{ translate('No Refund') }}
                                @endif
                            </td>
                        @endif
                        <td class="text-right">
                        @if($status != 'cancelled')
                            <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('shipping.all_orders.show', encrypt($order->id))}}" title="{{ translate('View') }}">
                                <i class="las la-eye"></i>
                            </a>
                        @endif
                            <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{ route('customer.invoice.download', $order->id) }}" title="{{ translate('Download Invoice') }}">
                                <i class="las la-download"></i>
                            </a>
                            {{--  <a href="#" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" data-href="{{route('orders.destroy', $order->id)}}" title="{{ translate('Delete') }}">
                                <i class="las la-trash"></i>
                            </a>  --}}
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="aiz-pagination">
            {{ $orders->appends(request()->input())->links() }}
        </div>
    </div>
</div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">

    </script>
@endsection
