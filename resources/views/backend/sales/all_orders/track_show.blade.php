@extends('backend.layouts.app')

@section('content')

    <div class="card">
        <div class="card-header">
          <h1 class="h2">{{ translate('Order Details') }}
            <small> {{ translate('Tracking Screen') }}</small>

          </h1>
        </div>
        <div>
            <div class="py-4">
                <div class="row gutters-5 text-center aiz-steps">
                    <div class="col @if($order->order_status == 'pending') active @else done @endif">
                        <div class="icon">
                            <i class="las la-file-invoice"></i>
                        </div>
                        <div class="title fs-12">{{ translate('Order placed')}}</div>
                    </div>
                    <div class="col @if($order->order_status == 'picked') active @elseif($order->order_status == 'on_delivery' || $order->order_status == 'delivered') done @endif">
                        <div class="icon">
                            <i class="las la-newspaper"></i>
                        </div>
                    <div class="title fs-12">{{ translate('Picked UP')}}</div>
                    </div>




                    <div class="col @if($order->order_status =='on_delivery') active @elseif($order->order_status == 'delivered') done @endif">
                        <div class="icon">
                            <i class="las la-truck"></i>
                        </div>
                        <div class="title fs-12">{{ translate('On delivery')}}</div>
                    </div>
                    <div class="col @if($order->order_status == 'delivered') done @endif">
                        <div class="icon">
                            <i class="las la-clipboard-check"></i>
                        </div>
                        <div class="title fs-12">{{ translate('Delivered')}}</div>
                    </div>

                </div>
            </div>
        </div>
        <div class="card-header row gutters-5">
  			<div class="col text-center text-md-left">
  			</div>
              @php
                  $delivery_status = $order->orderDetails->first()->delivery_status;
                  $payment_status = $order->orderDetails->first()->payment_status;
              @endphp
              {{--  <div class="col-md-3 ml-auto">
                  <label for=update_payment_status"">{{translate('Payment Status')}}</label>
                  <select class="form-control aiz-selectpicker"  data-minimum-results-for-search="Infinity" id="update_payment_status">
                      <option value="paid" @if ($payment_status == 'paid') selected @endif>{{translate('Paid')}}</option>
                      <option value="unpaid" @if ($payment_status == 'unpaid') selected @endif>{{translate('Unpaid')}}</option>
                  </select>
              </div>  --}}
  			<div class="col-md-3 ml-auto">
                  <label for=update_delivery_status"">{{translate('Order Status')}}</label>
                  <select class="form-control aiz-selectpicker"  data-minimum-results-for-search="Infinity" id="update_delivery_status">

                      <option value="pending" @if ($delivery_status == 'pending') selected @endif>{{translate('Pending')}}</option>

                      <option value="picked" @if ($delivery_status == 'picked') selected @endif>{{translate('Picked Up')}}</option>


                  </select>
  			</div>
  		</div>
    	<div class="card-body">
        <div class="card-header row gutters-6">
  			<div class="col text-center text-md-left">
            <address>
                <strong class="text-main">{{ json_decode($order->shipping_address)->name }}</strong><br>
                {{ json_decode($order->shipping_address)->email }}<br>
                {{ json_decode($order->shipping_address)->phone }}<br>
                {{ json_decode($order->shipping_address)->address }}, {{ json_decode($order->shipping_address)->city }}, {{ json_decode($order->shipping_address)->postal_code }}<br>
                {{ json_decode($order->shipping_address)->country }}
            </address>
            @if ($order->manual_payment && is_array(json_decode($order->manual_payment_data, true)))
                <br>
                <strong class="text-main">{{ translate('Payment Information') }}</strong><br>
                {{ translate('Name') }}: {{ json_decode($order->manual_payment_data)->name }}, {{ translate('Amount') }}: {{ single_price(json_decode($order->manual_payment_data)->amount) }}, {{ translate('TRX ID') }}: {{ json_decode($order->manual_payment_data)->trx_id }}
                <br>
                <a href="{{ uploaded_asset(json_decode($order->manual_payment_data)->photo) }}" target="_blank"><img src="{{ uploaded_asset(json_decode($order->manual_payment_data)->photo) }}" alt="" height="100"></a>
            @endif
  				</div>
  				<div class="col-md-4 ml-auto">
            <table>
        				<tbody>
            				<tr>
            					<td class="text-main text-bold">{{translate('Order #')}}</td>
            					<td class="text-right text-info text-bold">	{{ $order->code }}</td>
            				</tr>
            				<tr>
                                <td class="text-main text-bold">{{translate('Order Status')}}</td>
                                    @php
                                      $status = $order->orderDetails->first()->delivery_status;
                                    @endphp
            					<td class="text-right">
                                    @if($status == 'delivered')
                                        <span class="badge badge-inline badge-success">{{ translate(ucfirst(str_replace('_', ' ', $status))) }}</span>
                                    @else
                                        <span class="badge badge-inline badge-info">{{ translate(ucfirst(str_replace('_', ' ', $status))) }}</span>
                                    @endif
      					        </td>
            				</tr>
            				<tr>
            					<td class="text-main text-bold">{{translate('Order Date')}}	</td>
            					<td class="text-right">{{ date('d-m-Y h:i A', $order->date) }}</td>
            				</tr>
                    <!-- <tr>
            					<td class="text-main text-bold">{{translate('Total amount')}}	</td>
            					<td class="text-right">
            						{{ single_price($order->grand_total) }}
            					</td>
            				</tr> -->
                    <tr>
            					<td class="text-main text-bold">{{translate('Payment method')}}</td>
            					<td class="text-right">{{ ucfirst(str_replace('_', ' ', $order->payment_type)) }}</td>
            				</tr>
        				</tbody>
    				</table>
  				</div>
  			</div>
    		<hr class="new-section-sm bord-no">
    		<div class="row">
    			<div class="col-lg-12 table-responsive">
    				<table class="table table-bordered invoice-summary">
        				<thead>
            				<tr class="bg-trans-dark">
                        <th class="min-col">#</th>
                        <th width="10%">{{translate('Photo')}}</th>
                        <th>{{translate('seller ID')}}</th>
        					      <th class="text-uppercase">{{translate('Product Name')}}</th>
                        <th> {{ translate('variation') }} </th>
                        <th> {{ translate('Item Status') }} </th>
                        <th> {{ translate('Seller Available') }} </th>

                          <th> {{ translate('At Stock') }} </th>

                        {{--  <th class="text-uppercase">{{translate('Delivery Type')}}</th>  --}}
              					<th class="min-col text-center text-uppercase">{{translate('Qty')}}</th>
              					<th class="min-col text-center text-uppercase">{{translate('Price')}}</th>
        					       <th class="min-col text-right text-uppercase">{{translate('Total')}}</th>
            				</tr>
        				</thead>
        				<tbody>
                    @foreach ($order->orderDetails as $key => $orderDetail)
                      <tr>
                        <td>{{ $key+1 }}

                           @if($orderDetail->is_deleted == 1)
                            <i class="las la-times-circle" style="color:red ; font-size: 32px"></i>
                           @endif

                        </td>
                        <td>
                          @if ($orderDetail->product != null)
                            <a href="{{ route('product', $orderDetail->product->slug) }}" target="_blank"><img height="50" src="{{ uploaded_asset($orderDetail->product->thumbnail_img) }}"></a>
                          @else
                            <strong>{{ translate('N/A') }}</strong>
                          @endif
                          </td>
                          <td> {{ $orderDetail->seller_id }} </td>
                        <td>
                          @if ($orderDetail->product != null)
                            <strong><a href="{{ route('product', $orderDetail->product->slug) }}" target="_blank" class="text-muted">{{ $orderDetail->product->getTranslation('name') }}</a></strong>
                            {{--  <small>{{ $orderDetail->variation }}</small>  --}}
                          @else
                            <strong>{{ translate('Product Unavailable') }}</strong>
                          @endif
                        </td>
                        <td>{{ $orderDetail->variation }}</td>
                         <td>
                            @if ($orderDetail->item_status == null)
                              {{ translate('Pending') }}
                            @else
                              {{ $orderDetail->item_status }}
                            @endif
                         </td>


                         <td>
                              @if ($orderDetail->item_status == 'available')
                              <i class="las la-check-circle" style="color:green; font-size: 32px"></i>

                              @elseif ($orderDetail->item_status == 'not_available')
                              <i class="las la-times-circle" style="color:red ; font-size: 32px"></i>
                                  @if ($payment_status == 'paid'  && $orderDetail->is_refunded == 0 )
                                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">{{translate('Refund Now')}}</button>
                                  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                         <form action="{{ route('orders.refund_orderitem') }}" method="post">
                                         @csrf
                                          <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel"> {{ translate ('Refund Request')}}</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                          </div>
                                          <div class="modal-body">
                                              <input type="hidden" value="{{$orderDetail->id}}" name="order_detail_id">
                                              <input type="hidden" value="{{$order->user_id}}" name="user">
                                              <div class="form-group">
                                                <label for="recipient-name" class="col-form-label">{{ translate ('Refund Type')}}:</label>
                                                <div class="form-check">
                                                <input class="form-check-input" type="radio" name="refund_type" id="welt_type" value="welt" checked>
                                                <label class="form-check-label" for="welt_type">
                                                  {{ translate ('Wellt')}}
                                                </label>
                                              </div>
                                              <div class="form-check" >
                                                <input class="form-check-input" type="radio" name="refund_type" id="bank_type" value="bank" >
                                                <label class="form-check-label" for="bank_type" >
                                                   {{ translate ('Bank')}}
                                                </label>
                                              </div>
                                              </div>
                                              <div class="form-group bank">
                                                <label for="message-text" class="col-form-label">{{translate('Bank Name')}}:</label>
                                                <select name="bank_id" class="js-example-basic-single form-control">
                                                    @php
                                                    $banks = \App\Bank::get();

                                                    @endphp
                                                    <option class="form-control"  value="" >{{translate('select Bank Name')}} </option>
                                                    @foreach($banks  as $bank)

                                                    <option class="form-control"  value="{{ $bank->id }}" >{{ translate($bank->name)}} </option>

                                                    @endforeach
                                                </select><br>
                                                <input type="text" class="form-control" value="" name="bank_acc" placeholder="{{translate('account number')}}">
                                              </div>

                                              <div class="form-group">
                                               <input type="text" class="form-control" value="{{$orderDetail->price+$orderDetail->tax }}" name="amount" placeholder="{{translate('account number')}}" readonly>
                                              </div>

                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">{{translate('Close')}}</button>
                                            <button type="submit" class="btn btn-primary">{{translate('Refund Now')}} </button>
                                          </div>
                                          </form>
                                        </div>
                                      </div>
                                  </div>
                                  @endif
                                  @if ($payment_status == 'unpaid' && $orderDetail->is_deleted == 0 )
                                  <div class="recalculate_order" data-id="{{ $orderDetail->id }}" style="cursor:pointer; color:blue">{{translate('remove and recalculate order')}}  </div>
                                  @elseif($orderDetail->is_deleted == 1 && $orderDetail->is_refunded == 0)
                                    <span class="badg badg-danger"> {{ translate('Removed From Order')}}</span>
                                  @elseif($orderDetail->is_deleted == 1 && $orderDetail->is_refunded == 1)
                                    <span class="badg badg-danger"> {{ translate ('Refunded and Removed From Order')}}</span>
                                  @endif

                              @elseif ($orderDetail->item_status == 'pending')
                              <i class="las la-exclamation-circle" style="color: rgb(71, 67, 67) ; font-size: 32px"></i>
                              @endif

                          </td>

                           <td>
                            @if ($orderDetail->at_stock == 0)
                             <i class="las la-times-circle" style="color:red ; font-size: 32px"></i>
                            @elseif ($orderDetail->at_stock == 1)
                              <i class="las la-check-circle" style="color:green; font-size: 32px"></i>
                            @endif
                            </td>

                         {{-- <td>
                          @if ($orderDetail->shipping_type != null && $orderDetail->shipping_type == 'home_delivery')
                            {{ translate('Home Delivery') }}
                          @elseif ($orderDetail->shipping_type == 'pickup_point')

                            @if ($orderDetail->pickup_point != null)
                              {{ $orderDetail->pickup_point->getTranslation('name') }} ({{ translate('Pickup Point') }})
                            @else
                              {{ translate('Pickup Point') }}
                            @endif
                          @endif
                        </td>  --}}
                        <td class="text-center">{{ $orderDetail->quantity }}</td>
                        <td class="text-center">{{ single_price($orderDetail->price/$orderDetail->quantity) }}</td>
                        <td class="text-center">{{ single_price($orderDetail->price) }}</td>
                      </tr>
                    @endforeach
        				</tbody>
    				</table>
    			</div>
    		</div>
    		<div class="clearfix float-right">
    			<table class="table">
        			<tbody>
        			<tr>
        				<td>
        					<strong class="text-muted">{{translate('Sub Total')}} :</strong>
        				</td>
        				<td>
        					{{ single_price($order->orderDetails->where('is_deleted' , '=' , 0)->sum('price')) }}
        				</td>
        			</tr>
        			<tr>
        				<td>
        					<strong class="text-muted">{{translate('Tax')}} :</strong>
        				</td>
        				<td>
        					{{ single_price($order->orderDetails->where('is_deleted' , '=' , 0)->sum('tax')) }}
        				</td>
        			</tr>
                    <tr>
        				<td>
        					<strong class="text-muted">{{translate('Shipping')}} :</strong>
        				</td>
        				<td>
        					{{ single_price($order->shipping_cost) }}
        				</td>
        			</tr>
                    <tr>
        				<td>
        					<strong class="text-muted">{{translate('Coupon')}} :</strong>
        				</td>
        				<td>
        					{{ single_price($order->coupon_discount) }}
        				</td>
        			</tr>
        			<tr>
        				<td>
        					<strong class="text-muted">{{translate('TOTAL')}} :</strong>
        				</td>
        				<td class="text-muted h5">
                @php
        					$grand =  $order->grand_total - ($order->orderDetails->where('is_deleted' , '=' , 1)->sum('tax') + $order->orderDetails->where('is_deleted' , '=' , 1)->sum('price')) ;
        				@endphp
                {{ single_price($grand) }}
                </td>
        			</tr>
        			</tbody>
    			</table>
          <div class="text-right no-print">
            <a href="{{ route('customer.invoice.download', $order->id) }}" type="button" class="btn btn-icon btn-light"><i class="las la-print"></i></a>
          </div>
    		</div>

    	</div>
    </div>
@endsection

@section('script')
 <script type="text/javascript">
      $(".bank").hide();

      $("#bank_type").click(function(){
        $(".bank").show();
      });

       $("#welt_type").click(function(){
        $(".bank").hide();
      });
 </script>
    <script type="text/javascript">
        $('#update_delivery_status').on('change', function(){
            var order_id = {{ $order->id }};
            var status = $('#update_delivery_status').val();
            $.post('{{ route('orders.update_delivery_status') }}', {_token:'{{ @csrf_token() }}',order_id:order_id,status:status}, function(data){
                AIZ.plugins.notify('success', '{{ translate('Delivery status has been updated') }}');
            });
            location.reload().setTimeOut(1000);
        });

        $('#update_payment_status').on('change', function(){
            var order_id = {{ $order->id }};
            var status = $('#update_payment_status').val();
            $.post('{{ route('orders.update_payment_status') }}', {_token:'{{ @csrf_token() }}',order_id:order_id,status:status}, function(data){
                AIZ.plugins.notify('success', '{{ translate('Payment status has been updated') }}');
            });

            location.reload().setTimeOut(1000);
        });

        $('.recalculate_order').on('click', function(){


           //var order_id = {{ $order->id }};
            var order_id = $(this).data("id");
           // alert(order_id);
            $.post('{{ route('orders.recalculate_order') }}', {_token:'{{ @csrf_token() }}',order_id:order_id}, function(data){
                AIZ.plugins.notify('success', '{{ translate('Item status has been updated') }}');
            });

            location.reload().setTimeOut(1000);
        });


      function update_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('{{ route('order.atstock') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Item Status updated successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

    </script>
@endsection



