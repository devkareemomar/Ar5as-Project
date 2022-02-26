@extends('backend.layouts.app')

@section('content')

<div class="card">
  <div class="card-header">
      <h5 class="mb-0 h6">{{ translate('Seller Verification') }}</h5>
      <div class="pull-right clearfix">
        <a href="{{ route('sellers.reject', $seller->id) }}" class="btn btn-default d-innline-block">{{translate('Reject')}}</a></li>
        <a href="{{ route('sellers.approve', $seller->id) }}" class="btn btn-circle btn-dark d-innline-block">{{translate('Accept')}}</a>
      </div>
  </div>
  <div class="card-body row">
      <div class="col-md-5"> 
          <h6 class="mb-4">{{ translate('User Info') }}</h6>
          <p class="text-muted">
              <strong>{{ translate('Name') }} :</strong>
              <span class="ml-2">{{ $seller->user->name }}</span>
          </p> 
          <p class="text-muted">
              <strong>{{translate('Email')}} :</strong>
              <span class="ml-2">{{ $seller->user->email }}</span>
          </p>
          <p class="text-muted"> 
              <strong>{{translate('Address')}} :</strong>
              <span class="ml-2">{{ $seller->user->address }}</span>
          </p>
          <p class="text-muted">
              <strong>{{translate('Phone')}} :</strong>
              <span class="ml-2">{{ $seller->user->phone }}</span>
          </p>

           <p class="text-muted"> 
                <strong>{{translate('Seller Type')}} :</strong>
                <span class="ml-2">
                      @if( $seller->seller_type == 1)

                    {{ translate('Individual') }}
                   @elseif ($seller->seller_type == 2)
                    {{ translate('Company') }}
                   @endif
                   
                </span>
          </p>
          <br>

          <h6 class="mb-4">{{ translate('Shop Info') }}</h6>
          <p class="text-muted">
              <strong>{{translate('Shop Name')}} :</strong>
              <span class="ml-2">{{ $seller->user->shop->name }}</span>
          </p>
          <p class="text-muted">
              <strong>{{translate('Address')}} :</strong>
              <span class="ml-2">{{ $seller->user->shop->address }}</span>
          </p>

          <h6 class="mb-4">{{ translate('Payment Info') }}</h6>
           <p class="text-muted">
              <strong>{{translate('Bank Name')}} :</strong>
              <span class="ml-2">{{ $bank->name }}</span> 
          </p>
          <p class="text-muted">
              <strong>{{translate('Bank Account Name')}} :</strong>
              <span class="ml-2">{{ $seller->bank_acc_name }}</span>
          </p>
          <p class="text-muted">
              <strong>{{translate('Bank Account Number')}} :</strong>
              <span class="ml-2">{{ $seller->bank_acc_no }}</span>
          </p>
          <p class="text-muted">
              <strong>{{translate('Bank Routing Number')}} :</strong>
              <span class="ml-2">{{ $seller->bank_routing_no }}</span>
          </p>

          <p class="text-muted">
              <strong>{{translate('I Ban Number')}} :</strong>
              <span class="ml-2">{{ $seller->ipan }}</span>
          </p>
      </div>    
      <div class="col-md-5">
           <h6 class="mb-4">{{ translate('Account Papers') }}</h6>
           @if( $seller->seller_type == 1) 
           <p><strong>{{translate('National Id Photo')}}</strong></p> <br> 
           <p>
                {{--  <img src="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->national_id_photo ) }}" width="100%" height="450" > <br>  --}}
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->national_id_photo ) }}" class="btn btn-primary" download=""> {{translate('Download')}} </a>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->national_id_photo ) }}" class="btn btn-success" target="blank"> {{translate('Show')}} </a>
           </p>
                @elseif($seller->seller_type == 2)
                <p class="text-muted">
                    <strong>{{translate('Company Name')}}</strong>
                    <span class="ml-2">{{ $seller->company_name }}</span>
                </p>
                 
                 <p><strong>{{translate('National Id Photo')}}</strong></p>
                 <p>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->national_id_photo ) }}" class="btn btn-primary" download=""> {{translate('Download')}} </a>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->national_id_photo ) }}" class="btn btn-success" target="blank"> {{translate('Show')}} </a>
                {{--  <img src="" width="100%" height="450" > <br>  --}}
                 </p>


                <p><strong>{{translate('Taxs Photo')}}</strong></p>
                <p>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->tax_photo ) }}" class="btn btn-primary" download=""> {{translate('Download')}} </a>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->tax_photo ) }}" class="btn btn-success" target="blank"> {{translate('Show')}} </a>
                {{--  <img src="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->tax_photo ) }}" width="100%" height="450" > <br>  --}}
                </p>

                <p><strong>{{translate('Commercial Register Photo')}}</strong></p>
                <p>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->commercial_register_photo ) }}" class="btn btn-primary" download=""> {{translate('Download')}} </a>
                <a href="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->commercial_register_photo ) }}" class="btn btn-success" target="blank"> {{translate('Show')}} </a>
                </p>
                {{--  <img src="{{ asset('public/uploads/seller/'.$seller->user_id. '/data/' .$seller->commercial_register_photo ) }}" width="100%" height="450" > <br>  --}}
           @endif 
      </div> 
     
  </div>
</div>

@endsection
