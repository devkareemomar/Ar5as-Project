@extends('backend.layouts.app')
@section('content')

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{translate('Refund Request Detailes')}}</h5>
            </div>
              
                                      
            <div class="card-body">
               

                <table class="table aiz-table">
                    <thead>
                        <tr>
                            <th> id </th>
                            <th>{{translate('Product')}}</th>
                            <th>{{translate('السعر')}}</th>
                            <th>{{translate('الضريبة')}}</th>
                           <th>{{translate('تكلفة الشحن')}}</th>
                            <th>{{translate('Refund Status')}}</th>
                            {{-- <th>{{translate('Refund Now')}}</th> --}}
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td> {{  $refund->id }}</td>
                            <td>
                                @if ($refund->orderDetail != null && $refund->orderDetail->product != null)
                                <a href="{{ route('product', $refund->orderDetail->product->slug) }}" target="_blank" class="media-block">
                                    <div class="form-group row">
                                    <div class="col-md-5">
                                        <img src="{{ uploaded_asset($refund->orderDetail->product->thumbnail_img) }}" alt="Image" class="w-50px">
                                    </div>
                                    <div class="col-md-7">
                                        <div class="media-body">{{ $refund->orderDetail->product->getTranslation('name') }}</div>
                                    </div>
                                    </div>
                                </a>
                                @endif
                            </td>
                            <td>
                                @if ($refund->orderDetail != null)
                                    {{single_price($refund->orderDetail->price)}}
                                @endif
                            </td>

                             <td>
                                @if ($refund->orderDetail != null)
                                    {{single_price($refund->orderDetail->tax)}}
                                @endif
                            </td>
                            <td>
                            @if($refund->order != null)
                             {{ single_price($refund->order->shipping_cost) }}
                            @else
                                 {{ translate('Order deleted') }}
                            @endif
                            </td>
                            
                            <td>
                                 @if ($refund->refund_status == 1)
                                     {{translate('محصلة')}}
                                 @else
                                <select class="form-control defaultpicker"  data-minimum-results-for-search="Infinity" id="update_refund_status">
                                    <option value="0" @if ($refund->refund_status == 0) selected @endif>{{translate('Pending')}}</option>
                                    <option value="2" @if ($refund->refund_status == 2) selected @endif>{{translate('At Stock')}}</option>
                                    <option value="3" @if ($refund->refund_status == 3) selected @endif>{{translate('Product Checked')}}</option>
                                    
                                    {{--  <option onclick="refund_request_money('{{ $refund->id }}')" value="1" @if ($refund->refund_status == 1) selected @endif>{{translate('Paid')}}</option>  --}}
                                </select>
                                @endif
                            </td>
                            {{-- <td>
                                @if ($refund->refund_status != 1)
                                <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" onclick="refund_request_money('{{ $refund->id }}')" title="{{ translate('Refund Now') }}">
                                    <i class="las la-backward"></i>
                                </a>
                               @else
                                {{translate('محصلة')}}
                            
                                @endif
                            </td> --}}
                        </tr>
                    </tbody>
                </table>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Order Code')}}:</b></label>
                            <div class="col-lg-8">
                                <p class="bord-all pad-all">
                                    @if($refund->order != null)
                                        {{ $refund->order->code }}
                                    @else
                                        {{ translate('Order deleted') }}
                                    @endif
                                
                                </p>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Seller Name')}}:</b></label>
                            <div class="col-lg-8">
                                <p class="bord-all pad-all">  
                                    @if ($refund->seller != null)
                                        {{ $refund->seller->name }}
                                    @endif
                                </p> 
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Refund Type')}}:</b></label>
                            <div class="col-lg-8">
                                
                                <p class="bord-all pad-all">
                                    @if ($refund->refund_type == 1)
                                    <span class="badge badge-inline badge-success">{{translate('Welt')}}</span>
                                    @elseif($refund->refund_type == 2)
                                    <span class="badge badge-inline badge-warning">{{translate('Bank')}}</span>
                                    @endif
                                </p>

                            </div>
                        </div>
                         @if ($refund->bank_id != null)
                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Bank Name')}}:</b></label>
                            <div class="col-lg-8">
                                
                                <p class="bord-all pad-all">{{ $refund->bank->name }}</p>
                            </div>
                        </div>
                        
        
                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Account No')}}:</b></label>
                            <div class="col-lg-8">
                                <p class="bord-all pad-all">{{ $refund->account_no }}</p>
                            </div>
                        </div>
                        @endif
                        <div class="form-group row">
                            <label class="col-lg-2 col-from-label"><b>{{translate('Reason')}}:</b></label>
                            <div class="col-lg-8">
                                <p class="bord-all pad-all">{{ $refund->reason }}</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-6 border">
                            <br>
                        <form class="form-horizontal" action="{{ route('refund_request_money_by_admin') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                <h4 class="text-center"> {{translate('معلومات التحويل')}} </h4> <br>
                                </div>
                            </div>
                        @if ($refund->refund_type == 2)
                            
                       
                            <div class="form-group row">
                                <label class="col-md-3 col-from-label" for="txn_code">{{translate('رقم التحويل البنكي')}}</label>
                                <div class="col-md-9">
                                    <input type="text" name="txn_code"  class="form-control">
                                </div>
                            </div>
                         @endif
                            <div class="form-group row">
                                <label class="col-md-3 col-from-label">{{translate('هل تريد اضافة قيمة الشحن')}}</label>
                                <div class="col-md-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="refund_with_shipping" id="inlineRadio1" value="1">
                                        <label class="form-check-label" for="inlineRadio1">{{translate('نعم')}}</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="refund_with_shipping" id="inlineRadio2" value="0">
                                        <label class="form-check-label" for="inlineRadio2">{{translate('لا')}}</label>
                                        </div>
                                        @php
                                            if($refund->order != null){
                                               $shipping =  $refund->order->shipping_cost ;
                                            }
                                            
                                            else{
                                                $shipping = 0 ;
                                            }

                                             if ($refund->orderDetail != null){
                                                $refund_tax = $refund->orderDetail->tax;
                                             }
                                              
                                        @endphp 
                                        <input type="hidden" name="shipping_cost" value="{{ $shipping }}">
                                        <input type="hidden" name="refund_tax" value="{{ $refund_tax }}">
                                        <input type="hidden" name="id" value="{{$refund->id }}">
                                        <input type="hidden" name="refund_type" value="{{$refund->refund_type }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <button type="submit" class="btn btn-primary btn-block" > {{ translate('Refund Now') }} </button>
                            </div>
                        </form>
                    </div>
                </div>

            </div> 
        </div>
    </div>
</div>
@endsection

@section('script')
    <script  type="text/javascript">
        $(document).ready(function(){
        $('.defaultpicker').selectpicker({
            style: 'btn-default',
            size: 4,
            container: 'body'
            });

            
        });
    </script>
    <script type="text/javascript">

        $('#update_refund_status').on('change', function(){
            var refund_id = {{ $refund->id }};
            var status = $('#update_refund_status').val();
            $.post('{{ route('orders.update_refund_status') }}', {_token:'{{ @csrf_token() }}',refund_id:refund_id,status:status}, function(data){
                AIZ.plugins.notify('success', '{{ translate('Refund status has been updated') }}');
            });
        });
    </script>

    <script type="text/javascript">
        function update_refund_approval(el){
            $.post('{{ route('vendor_refund_approval') }}',{_token:'{{ @csrf_token() }}', el:el}, function(data){
                if (data == 1) {
                    AIZ.plugins.notify('success', '{{ translate('Approval has been done successfully') }}');
                }
                else {
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }

        function refund_request_money(el){
            $.post('{{ route('refund_request_money_by_admin') }}',{_token:'{{ @csrf_token() }}', el:el}, function(data){
                if (data == 1) {
                    location.reload();
                    AIZ.plugins.notify('success', '{{ translate('Refund has been sent successfully') }}');
                }
                else {
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }
    </script>
    
    <script type="text/javascript">
      function show_seller_payment_modal(id, seller_withdraw_request_id){
          $.post('{{ route('withdraw_request.payment_modal') }}',{_token:'{{ @csrf_token() }}', id:id, seller_withdraw_request_id:seller_withdraw_request_id}, function(data){
              $('#payment-modal-content').html(data);
              $('#payment_modal').modal('show', {backdrop: 'static'});
              $('.demo-select2-placeholder').select2();
          });
      }
    </script>
        

@endsection

