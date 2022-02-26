@extends('frontend.layouts.app')

@section('content')
 
    <section class="py-5">
        <div class="container-fluid">
            <div class="d-flex align-items-start">
                @include('frontend.inc.user_side_nav')
 
                <div class="aiz-user-panel">

                    <div class="aiz-titlebar mt-2 mb-4"> 
                      <div class="row align-items-center">
                        <div class="col-md-6">
                            <h1 class="h3">{{ translate('Shop Settings')}}
                                <a href="{{ route('shop.visit', $shop->slug) }}" class="btn btn-link btn-sm" target="_blank">({{ translate('Visit Shop')}})<i class="la la-external-link"></i>)</a>
                            </h1>
                        </div>
                      </div>
                    </div>

                    {{-- Basic Info --}}
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0 h6">{{ translate('Basic Info') }}</h5>
                        </div>
                        <div class="card-body">
                            <form class="" action="{{ route('shops.update', $shop->id) }}" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="_method" value="PATCH">
                                @csrf
                                <div class="row">
                                    <label class="col-md-2 col-form-label">{{ translate('Shop Name') }}</label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control mb-3" placeholder="{{ translate('Shop Name')}}" name="name" value="{{ $shop->name }}" readonly>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-md-2 col-form-label">{{ translate('Shop Logo') }}</label>
                                    <div class="col-md-10">
                                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                            </div>
                                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                            <input type="hidden" name="logo" value="{{ $shop->logo }}" class="selected-files">
                                        </div>
                                        <div class="file-preview box sm">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-md-2 col-form-label">{{ translate('Shop Address') }} </label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control mb-3" placeholder="{{ translate('Address')}}" name="address" value="{{ $shop->address }}" readonly>
                                    </div>
                                </div>
                                @if (\App\BusinessSetting::where('type', 'shipping_type')->first()->value == 'seller_wise_shipping')
                                    <div class="row">
                                        <div class="col-md-2">
                                            <label>{{ translate('Shipping Cost')}} <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-md-10">
                                            <input type="number" lang="en" min="0" class="form-control mb-3" placeholder="{{ translate('Shipping Cost')}}" name="shipping_cost" value="{{ $shop->shipping_cost }}" required>
                                        </div>
                                    </div>
                                @endif 
                                @if (\App\BusinessSetting::where('type', 'pickup_point')->first()->value == 1)
                                <div class="row mb-3">
                                    <label class="col-md-2 col-form-label">{{ translate('Pickup Points') }}</label>
                                    <div class="col-md-10">
                                        <select class="form-control aiz-selectpicker" data-placeholder="{{ translate('Select Pickup Point') }}" id="pick_up_point" name="pick_up_point_id[]" multiple>
                                            @foreach (\App\PickupPoint::all() as $pick_up_point)
                                                @if (Auth::user()->shop->pick_up_point_id != null)
                                                    <option value="{{ $pick_up_point->id }}" @if (in_array($pick_up_point->id, json_decode(Auth::user()->shop->pick_up_point_id))) selected @endif>{{ $pick_up_point->getTranslation('name') }}</option>
                                                @else
                                                    <option value="{{ $pick_up_point->id }}">{{ $pick_up_point->getTranslation('name') }}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                @endif

                                <div class="row">
                                    <label class="col-md-2 col-form-label">{{ translate('Meta Title') }}<span class="text-danger text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control mb-3" placeholder="{{ translate('Meta Title')}}" name="meta_title" value="{{ $shop->meta_title }}" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <label class="col-md-2 col-form-label">{{ translate('Meta Description') }}<span class="text-danger text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <textarea name="meta_description" rows="3" class="form-control mb-3" required>{{ $shop->meta_description }}</textarea>
                                    </div>
                                </div>
                                <div class="form-group mb-0 text-right">
                                    <button type="submit" class="btn btn-sm btn-primary">{{translate('Save')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    {{-- Banner Settings --}}
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0 h6">{{ translate('Banner Settings') }}</h5>
                        </div>
                        <div class="card-body">
                            <form class="" action="{{ route('shops.update', $shop->id) }}" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="_method" value="PATCH">
                                @csrf

                                <div class="row mb-3">
                                    <label class="col-md-2 col-form-label">{{ translate('Banners') }} (1500x450)</label>
                                    <div class="col-md-10">
                                        <div class="input-group" data-toggle="aizuploader" data-type="image" data-multiple="true">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                            </div>
                                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                            <input type="hidden" name="sliders" value="{{ $shop->sliders }}" class="selected-files">
                                        </div>
                                        <div class="file-preview box sm">
                                        </div>
                                        <small class="text-muted">{{ translate('We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.') }}</small>
                                    </div>
                                </div>

                                <div class="form-group mb-0 text-right">
                                    <button type="submit" class="btn btn-sm btn-primary">{{translate('Save')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="card">
                      <div class="card-header">
                          <h5 class="mb-0 h6">{{ translate('Payment Setting')}}</h5>
                      </div>
                      <div class="card-body">
                        <form action="{{ route('seller.update.payment') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            {{--  <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Cash Payment') }}</label>
                                <div class="col-md-9">
                                    <label class="aiz-switch aiz-switch-success mb-3">
                                        <input value="1" name="cash_on_delivery_status" type="checkbox" @if (Auth::user()->seller->cash_on_delivery_status == 1) checked @endif>
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </div>  --}}
                            {{--  <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Payment') }}</label>
                                <div class="col-md-9">
                                    <label class="aiz-switch aiz-switch-success mb-3">
                                        <input value="1" name="bank_payment_status" type="checkbox" @if (Auth::user()->seller->bank_payment_status == 1) checked @endif>
                                        <span class="slider round"></span>
                                    </label>
                                </div>
                            </div>  --}}
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Name') }}</label>
                                <div class="col-md-9">
                                    <select name="bank_name" class="js-example-basic-single form-control">
                                        @php
                                         $banks = \App\Bank::get();
                                            
                                        @endphp

                                        @foreach($banks  as $bank)
                                     
                                        <option class="form-control"  value="{{ $bank->id }}" {{ $bank->id == Auth::user()->seller->bank_name ? 'selected' : '' }}>{{ translate($bank->name)}} </option>

                                        @endforeach
                                       
                                        
                                    </select>
                                    {{--  <input type="text" class="form-control mb-3" placeholder="{{ translate('Bank Name')}}" value="{{ Auth::user()->seller->bank_name }}" name="bank_name">  --}}
                                </div>
                            
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Account Name') }}</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control mb-3" placeholder="{{ translate('Bank Account Name')}}" value="{{ Auth::user()->seller->bank_acc_name }}" name="bank_acc_name">
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Account Number') }}</label>
                                <div class="col-md-9">
                                    <small>{{ translate('Count Of Number 16 ') }}</small>
                                    <input type="text" maxlength="16" class="form-control mb-3" placeholder="{{ translate('Bank Account Number')}}" value="{{ Auth::user()->seller->bank_acc_no }}" name="bank_acc_no">
                                    
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Routing Number') }}</label>
                                <div class="col-md-9">
                                    <input type="number" lang="en" class="form-control mb-3" placeholder="{{ translate('Bank Routing Number')}}" value="{{ Auth::user()->seller->bank_routing_no }}" name="bank_routing_no">
                                </div>
                            </div>
                              <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('I Pan') }}</label>
                                <div class="col-md-9">
                                    <input type="number" lang="en" class="form-control mb-3" placeholder="{{ translate('I Pan')}}" value="{{ Auth::user()->seller->ipan }}" name="ipan">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group mb-0 text-right">
                                    <button type="submit" class="btn btn-primary">{{translate('Update Payments')}}</button>
                                </div>
                            </div>
                        </form>
                      </div>

                  </div>

                    {{-- Social Media Link --}}
                    {{--  <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0 h6">{{ translate('Social Media Link') }}</h5>
                        </div>
                        <div class="card-body">
                            <form class="" action="{{ route('shops.update', $shop->id) }}" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="_method" value="PATCH">
                                @csrf
                                <div class="form-box-content p-3">
                                    <div class="row mb-3">
                                        <label class="col-md-2 col-form-label">{{ translate('Facebook') }}</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" placeholder="{{ translate('Facebook')}}" name="facebook" value="{{ $shop->facebook }}">
                                            <small class="text-muted">{{ translate('Insert link with https ') }}</small>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-md-2 col-form-label">{{ translate('Twitter') }}</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" placeholder="{{ translate('Twitter')}}" name="twitter" value="{{ $shop->twitter }}">
                                            <small class="text-muted">{{ translate('Insert link with https ') }}</small>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-md-2 col-form-label">{{ translate('Google') }}</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" placeholder="{{ translate('Google')}}" name="google" value="{{ $shop->google }}">
                                            <small class="text-muted">{{ translate('Insert link with https ') }}</small>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label class="col-md-2 col-form-label">{{ translate('Youtube') }}</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" placeholder="{{ translate('Youtube')}}" name="youtube" value="{{ $shop->youtube }}">
                                            <small class="text-muted">{{ translate('Insert link with https ') }}</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-0 text-right">
                                    <button type="submit" class="btn btn-sm btn-primary">{{translate('Save')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>  --}}

                </div>
            </div>
        </div>
    </section>

@endsection
