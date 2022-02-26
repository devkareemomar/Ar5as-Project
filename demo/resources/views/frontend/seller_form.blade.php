@extends('frontend.layouts.app')
    
@section('content')

<section class="pt-4 mb-4">
    <div class="container text-center">
        <div class="row">
            <div class="col-lg-6 text-center text-lg-left">
                <h1 class="fw-600 h4">{{ translate('Register your shop')}}</h1>
            </div>
            <div class="col-lg-6">
                <ul class="breadcrumb bg-transparent p-0 justify-content-center justify-content-lg-end">
                    <li class="breadcrumb-item opacity-50">
                        <a class="text-reset" href="{{ route('home') }}">{{ translate('Home')}}</a>
                    </li>
                    <li class="text-dark fw-600 breadcrumb-item">
                        <a class="text-reset" href="{{ route('shops.create') }}">"{{ translate('Register your shop')}}"</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section> 
<section class="pt-4 mb-4"> 
    <div class="container"> 
        <div class="row">
            <div class="col-xxl-5 col-xl-6 col-md-8 mx-auto">
                <form id="shop" class="" action="{{ route('shops.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                      @include('partials._errors')
                    @if (!Auth::check())
                        <div class="bg-white rounded shadow-sm mb-3">
                            <div class="fs-15 fw-600 p-3 border-bottom">
                                {{ translate('User Personal Info')}}
                            </div>
                            <div class="p-3">
                                <div class="form-group">
                                    <label>{{ translate('Your Name')}} <span class="text-primary">*</span></label>
                                    <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}" placeholder="{{  translate('Name') }}" name="name">
                                </div>
                                <div class="form-group">
                                    <label>{{ translate('Your Email')}} <span class="text-primary">*</span></label>
                                    <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" value="{{ old('email') }}" placeholder="{{  translate('Email') }}" name="email">
                                </div>
                                 <div class="form-group">
                                    <label>{{ translate('Your Phone')}} <span class="text-primary">*</span></label>
                                    <input type="text" class="form-control{{ $errors->has('phone') ? ' is-invalid' : '' }}" value="{{ old('phone') }}" placeholder="{{  translate('phone') }}" name="phone">
                                </div>
                                <div class="form-group">
                                    <label>{{ translate('Your Password')}} <span class="text-primary">*</span></label>
                                    <input type="password" id="Password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" placeholder="{{  translate('Password') }}" name="password">
                                    <input type="checkbox" onclick="showPassword()"> {{ translate(' Show Password') }}
                                </div>
                                <div class="form-group">
                                    <label>{{ translate('Repeat Password')}} <span class="text-primary">*</span></label>
                                    <input type="password" id="ConfirmPassword" class="form-control" placeholder="{{  translate('Confirm Password') }}" name="password_confirmation">
                                    <input type="checkbox" onclick="showConfirmedPassword()"> {{ translate(' Show Password') }}
                                    <div id="msg"></div> 
                                </div>
                            </div>
                        </div>
                    @endif

                    <div class="bg-white rounded shadow-sm mb-4">
                         <div class="fs-15 fw-600 p-3 border-bottom">
                            {{ translate('Account Info')}}
                        </div>
                        <div class="p-3">
                            <div class="form-group">
                                <label>{{ translate('Account Type')}}</label>
                                <div class="form-check">
                                    <input class="form-check-input individual" type="radio" name="seller_type" id="exampleRadios1" value="1" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                    {{ translate('Individual')}}
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input company" type="radio" name="seller_type" id="exampleRadios2" value="2">
                                    <label class="form-check-label" for="exampleRadios2">
                                    {{ translate('Company')}}
                                    </label>
                                </div>
                            </div>
                              <div class="form-group company-data ">
                                <label>{{ translate('Company Name')}} <span class="text-primary">*</span></label>
                                <input type="text" class="form-control" value="{{ old('company_name') }}" placeholder="{{  translate('Company Name') }}" name="company_name">
                            </div>

                            <div class="form-group">
                                <label>{{ translate('National Id Photo')}}<span class="text-primary">*</span></label>
                                <div class="">
                                    <label class="">
                                        <input type="file" class="" name="national_id_photo" accept="">
                                        {{--  <span class="">{{ translate('Choose image') }}</span>  --}}
                                    </label>
                                </div>
                            </div> 

                          
                            <div class="form-group company-data">
                                <label>{{ translate('Taxs Photo')}}<span class="text-primary">*</span></label>
                                <div class="">
                                    <label class="">
                                        <input type="file" class="" name="tax_photo" accept="">
                                        {{--  <span class="">{{ translate('Choose image') }}</span>  --}}
                                    </label>
                                </div>
                            </div>
                            <div class="form-group company-data">
                                <label>{{ translate('Commercial Register Photo')}}<span class="text-primary">*</span></label>
                                <div class="">
                                    <label class="">
                                        <input type="file" class="" name="commercial_register_photo" accept="" >
                                        {{--  <span class="custom-file-name">{{ translate('Choose image') }}</span>  --}}
                                    </label>
                                </div>
                            </div>

                          
                           
                        </div>
                    </div>


                    <div class="bg-white rounded shadow-sm mb-4">
                        <div class="fs-15 fw-600 p-3 border-bottom">
                            {{ translate('Shop Info')}}
                        </div>
                        <div class="p-3">
                            <div class="form-group">
                                <label>{{ translate('Shop Name')}} <span class="text-primary">*</span></label>
                                <input type="text" class="form-control" value="{{ old('shopname') }}" placeholder="{{ translate('Shop Name')}}" name="shopname" required>
                            </div>
                            <div class="form-group">
                                <label>{{ translate('Logo')}}</label>
                                <div class="">
                                    <label class="">
                                        <input type="file" class="" name="logo" accept="image/*">
                                        {{--  <span class="">{{ translate('Choose image') }}</span>  --}}
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>{{ translate('Address')}} <span class="text-primary">*</span></label>
                                <input type="text" class="form-control mb-3" placeholder="{{ translate('Address')}}" name="address" value="{{ old('address') }}"  required>
                            </div>
                           
                        </div>
                    </div>

                    <div class="bg-white rounded shadow-sm mb-4">
                        <div class="fs-15 fw-600 p-3 border-bottom">
                           {{ translate('Payment Setting')}}
                        </div>
                        <div class="p-3">
                            
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Name') }}</label>
                                <div class="col-md-9">
                                    <select name="bank_name" class="js-example-basic-single form-control">
                                        @php
                                         $banks = \App\Bank::get();
                                            
                                        @endphp

                                        @foreach($banks  as $bank)
                                     
                                        <option class="form-control"  value="{{ $bank->id }}" >{{ translate($bank->name)}} </option>

                                        @endforeach
                                    </select>
                                    
                                </div>
                            
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Account Name') }}</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control mb-3" placeholder="{{ translate('Bank Account Name')}}" value="{{ old('bank_acc_name') }}" name="bank_acc_name">
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Account Number') }}</label>
                                <div class="col-md-9">
                                    <small>{{ translate('Count Of Number 14 ') }}</small>
                                    <input type="number"  class="form-control mb-3" placeholder="{{ translate('Bank Account Number')}}" value="{{ old('bank_acc_no') }}" name="bank_acc_no">
                                    
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('Bank Routing Number') }}</label>
                                <div class="col-md-9">
                                    <input type="text" lang="en" class="form-control mb-3" placeholder="{{ translate('Bank Routing Number')}}" value="{{ old('bank_routing_no') }}" name="bank_routing_no">
                                </div>
                            </div>

                            <div class="row">
                                <label class="col-md-3 col-form-label">{{ translate('I Ban') }}</label>
                                <div class="col-md-9">
                                    <small></small>
                                    <input type="text"  class="form-control mb-3" placeholder="{{ translate('I Ban')}}" value="{{ old('ipan') }}" name="ipan">
                                    
                                </div>
                            </div>
                        
                   
                        </div>
                    </div>

                    <div class="bg-white rounded shadow-sm mb-4">
                        
                        <div class="p-3">
                             <div class="form-group">
                               <div class="form-check">
                                    <input type="checkbox" name="cotract_agrrement" class="form-check-input" id="exampleCheck1" required>
                                    <label class="form-check-label" for="exampleCheck1">{{ translate('I agree to the contract')}} <a href="{{ asset('/sellerpolicy') }}" target="blank" >{{ translate('السياسات العامه للبيع')}} </a> , <a href="https://ar5as.net/ar5as_seller_contract.pdf" target="blank" >{{ translate('Read the contract')}} </a>  </label>
                                </div>
                            </div>
                        </div>
                    </div>

                    @if(\App\BusinessSetting::where('type', 'google_recaptcha')->first()->value == 1)
                        <div class="form-group mt-2 mx-auto row">
                            <div class="g-recaptcha" data-sitekey="{{ env('CAPTCHA_KEY') }}"></div>
                        </div>
                    @endif

                    <div class="text-right">
                        <button type="submit" class="btn btn-primary fw-600">{{ translate('Register Your Shop')}}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

@endsection

@section('script')
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script type="text/javascript">
    // making the CAPTCHA  a required field for form submission
    $(document).ready(function(){
        // alert('helloman');
        $("#shop").on("submit", function(evt)
        {
            var response = grecaptcha.getResponse();
            if(response.length == 0)
            {
            //reCaptcha not verified
                alert("please verify you are humann!");
                evt.preventDefault();
                return false;
            }
            //captcha verified
            //do the rest of your validations here
            $("#reg-form").submit();
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".company-data").hide();
    $(".individual").click(function(){
        $(".company-data").hide();
    });

     $(".company").click(function(){
        $(".company-data").show();
    });

     });
</script>

<script>
    $(document).ready(function(){
        $("#ConfirmPassword").keyup(function(){
             if ($("#Password").val() != $("#ConfirmPassword").val()) {
                 $("#msg").html("Password do not match").css("color","red");
             }else{
                 $("#msg").html("Password matched").css("color","green");
            }
      });
});
</script> 

<script>
    function showPassword() {
        var x = document.getElementById("Password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }
        

        function showConfirmedPassword() {
        var x = document.getElementById("ConfirmPassword");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        }


</script>
@endsection
