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
                            <h1 class="h3">{{ translate('Add Your Product') }}</h1>
                        </div>
                      </div>
                    </div>
 
                    <form class="" action="{{route('products.store')}}" method="POST" enctype="multipart/form-data" id="choice_form">
                        @csrf
                        <input type="hidden" name="added_by" value="seller">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product Information')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Product Name')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="name" placeholder="{{ translate('Product Name') }}" {{ old('name') }} onchange="update_sku()" required>
                                    </div>
                                </div>
                                  <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Category')}}</label>
                                    <div class="col-md-8">
                                        <select  id="category" class="form-control aiz-selectpicker" name="category_id"   data-live-search="true" required>
                                            <option> {{translate('Select Category')}}</option>
                                             
                                            @foreach ($categories as $key =>  $category )
                                                <option value="{{ $category->id }}" >{{ $category->getTranslation('name') }}</option>
                                                
                                            @endforeach
                                            
                                        </select>
                                    </div>
                                </div>
 
                                 <div class="form-group row" >
                                    <label class="col-md-3 col-from-label">{{translate('Sub Category')}}</label>
                                    <div class="col-md-8">
                                        <select id="subcategory" class="form-control aiz-selectpicker" name="subcategory_id"   data-live-search="true" >
                                             <option value="">{{ translate('Select Sub Category') }}</option>
                                        </select>
                                    </div>
                                </div>
                               
                                 <div class="form-group row" >
                                    <label class="col-md-3 col-from-label">{{translate('Sub Sub Category')}}</label>
                                    <div class="col-md-8">
                                        <select id="subsubcategory" class="form-control aiz-selectpicker" name="subsubcategory_id"  data-live-search="true" >
                                              <option value="">{{ translate('Select Sub Sub Category') }}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row" id="brand">
                                    <label class="col-md-3 col-from-label">{{translate('Brand')}}</label>
                                    <div class="col-md-8">
                                        <select class="form-control aiz-selectpicker" name="brand_id" id="brand_id"  data-live-search="true">
                                            <option value="">{{ ('Select Brand') }}</option>
                                            @foreach (\App\Brand::all() as $brand)
                                                <option value="{{ $brand->id }}">{{ $brand->getTranslation('name') }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Unit')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="unit" placeholder="{{ translate('Unit (e.g. KG, Pc etc)') }}" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Minimum Qty')}}</label>
                                    <div class="col-md-8">
                                        <input type="number" lang="en" class="form-control" name="min_qty" value="1" min="1" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Tags')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control aiz-tag-input" name="tags[]" placeholder="{{ translate('Type and hit enter to add a tag') }}">
                                    </div>
                                </div>

                                @php
                                    $pos_addon = \App\Addon::where('unique_identifier', 'pos_system')->first();
                                @endphp
                                @if ($pos_addon != null && $pos_addon->activated == 1)
                                    <div class="form-group row">
                                        <label class="col-md-3 col-from-label">{{translate('Barcode')}}</label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" name="barcode" placeholder="{{ translate('Barcode') }}">
                                        </div>
                                    </div>
                                @endif

                                {{--  @php
                                    $refund_request_addon = \App\Addon::where('unique_identifier', 'refund_request')->first();
                                @endphp
                                @if ($refund_request_addon != null && $refund_request_addon->activated == 1)
                                    <div class="form-group row">
                                        <label class="col-md-3 col-from-label">{{translate('Refundable')}}</label>
                                        <div class="col-md-8">
                                          <label class="aiz-switch aiz-switch-success mb-0">
                                              <input type="checkbox" name="refundable" checked>
                                              <span></span>
                                          </label>
                                        </div>
                                    </div>
                                @endif  --}}
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product Images')}}</h5>
                            </div>
                            <div class="card-body">
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label" for="signinSrEmail">{{translate('Gallery Images')}}</label>
                            <div class="col-md-8">
                                <div class="input-group" data-toggle="aizuploader" data-type="image" data-multiple="true">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                    <input type="hidden" name="photos" class="selected-files">
                                </div>
                                <div class="file-preview box sm">
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label" for="signinSrEmail">{{translate('Thumbnail Image')}} <small>(290x300)</small></label>
                            <div class="col-md-8">
                                <div class="input-group" data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                    </div>
                                    <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                    <input type="hidden" name="thumbnail_img" class="selected-files">
                                </div>
                                <div class="file-preview box sm">
                                </div>
                            </div>
                        </div>
                            </div>
                        </div>
                        {{--  <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product Videos')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Video Provider')}}</label>
                                    <div class="col-md-8">
                                        <select class="form-control aiz-selectpicker" name="video_provider" id="video_provider">
                                            <option value="youtube">{{translate('Youtube')}}</option>
                                            <option value="dailymotion">{{translate('Dailymotion')}}</option>
                                            <option value="vimeo">{{translate('Vimeo')}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Video Link')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="video_link" placeholder="{{ translate('Video Link') }}">
                                    </div>
                                </div>
                            </div>
                        </div>  --}}
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product Variation')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <div class="col-md-3">
                                        <input type="text" class="form-control" value="{{translate('Colors')}}" disabled>
                                    </div>
                                    <div class="col-md-8">
                                        <select class="form-control aiz-selectpicker" data-live-search="true" name="colors[]" data-selected-text-format="count" id="colors" multiple disabled>
                                            @foreach (\App\Color::orderBy('name', 'asc')->get() as $key => $color)
                                                <option  value="{{ $color->code }}" data-content="<span><span class='size-15px d-inline-block mr-2 rounded border' style='background:{{ $color->code }}'></span><span>{{ $color->name }}</span></span>"></option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-1">
                                        <label class="aiz-switch aiz-switch-success mb-0">
                                            <input value="1" type="checkbox" name="colors_active">
                                            <span></span>
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-3">
                                        <input type="text" class="form-control" value="{{translate('Attributes')}}" disabled>
                                    </div>
                                    <div class="col-md-8">
                                        <select name="choice_attributes[]" id="choice_attributes" class="form-control aiz-selectpicker" data-live-search="true" data-selected-text-format="count" multiple data-placeholder="{{ translate('Choose Attributes') }}">
                                            @foreach (\App\Attribute::all() as $key => $attribute)
                                            <option value="{{ $attribute->id }}">{{ $attribute->getTranslation('name') }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div>
                                    <p>{{ translate('Choose the attributes of this product and then input values of each attribute') }}</p>
                                    <br>
                                </div>

                                <div class="customer_choice_options" id="customer_choice_options">

                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product price + stock')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Unit price')}}</label>
                                    <div class="col-md-6">
                                        <input type="text" lang="en" min="0" value="0" step="0.01" placeholder="{{ translate('Unit price') }}" name="unit_price" class="form-control" required>
                                    </div>
                                </div>
                              
                                {{--  <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Tax')}}</label>
                                    <div class="col-md-6">
                                        <select class="form-control aiz-selectpicker" name="tax_type">
                                            <option value="include">{{translate('included')}}</option>
                                            <option value="exclude">{{translate('excluded')}}</option>
                                        </select>
                                      
                                    </div>
                                  
                                </div>  --}}
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Discount')}}</label>
                                    <div class="col-md-3">
                                        <input type="number" lang="en" min="0" value="0" step="0.01" placeholder="{{ translate('Discount') }}" name="discount" class="form-control" required>
                                    </div>

                                    <div class="col-md-3">
                                    <input type="text" class="form-control aiz-date-range" name="date_range" placeholder="{{translate('Select Date')}}" data-time-picker="true" data-format="DD-MM-Y HH:mm:ss" data-separator=" to " autocomplete="off" >
                                    </div>
                                    <div class="col-md-3">
                                        <select class="form-control aiz-selectpicker" name="discount_type">
                                            <option value="amount">{{translate('Flat')}}</option>
                                            <option value="percent">{{translate('Percent')}}</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row" id="quantity">
                                    <label class="col-md-3 col-from-label">{{translate('Quantity')}}</label>
                                    <div class="col-md-6">
                                        <input type="number" lang="en" min="0" value="0" step="1" placeholder="{{ translate('Quantity') }}" name="current_stock" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group row" id="alert_qty">
                                    <label class="col-md-3 col-from-label">{{translate('Alert Quantity')}} <span class="text-danger">*</span></label>
                                    <div class="col-md-6">
                                        <input type="number" lang="en" min="0" value="0" step="1" placeholder="{{ translate('Alert Quantity') }}" name="alert_qty" class="form-control" required>
                                    </div>
                                </div>
                                <br>
                                <div class="sku_combination" id="sku_combination">

                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('Product Description')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Description')}}</label>
                                    <div class="col-md-8">
                                        <textarea class="aiz-text-editor" name="description"></textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Length')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="length" placeholder="{{ translate('Length') }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Width')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="width" placeholder="{{ translate('Width') }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Height')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="height" placeholder="{{ translate('Height') }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Weight')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="weight" placeholder="{{ translate('Weight') }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Model Number')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="model_number" placeholder="{{ translate('Model Number') }}">
                                    </div>
                                </div>

                                 <div class="form-group row">
                                  <label class="col-md-3 col-form-label" for="signinSrEmail">{{translate('Warranty Certificate')}}</label>
                                  <div class="col-md-8">
                                      <select name="warranty" class="form-control">
                                        <option value="yes">{{translate('YES')}}</option>
                                        <option value="no">{{translate('NO')}}</option>
                                      </select>
                                  </div>
                              </div>
                               


                            </div>

                            
                        </div>



                        {{--  @if (\App\BusinessSetting::where('type', 'shipping_type')->first()->value == 'product_wise_shipping')
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0 h6">{{translate('Product Shipping Cost')}}</h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-group row">
                                        <div class="col-md-3">
                                            <div class="card-heading">
                                                <h5 class="mb-0 h6">{{translate('Free Shipping')}}</h5>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-group row">
                                                <label class="col-md-3 col-from-label">{{translate('Status')}}</label>
                                                <div class="col-md-8">
                                                    <label class="aiz-switch aiz-switch-success mb-0">
                                                        <input type="radio" name="shipping_type" value="free" checked>
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-3">
                                            <div class="card-heading">
                                                <h5 class="mb-0 h6">{{translate('Flat Rate')}}</h5>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="form-group row">
                                                <label class="col-md-3 col-from-label">{{translate('Status')}}</label>
                                                <div class="col-md-8">
                                                    <label class="aiz-switch aiz-switch-success mb-0">
                                                        <input type="radio" name="shipping_type" value="flat_rate" checked>
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 col-from-label">{{translate('Shipping cost')}}</label>
                                                <div class="col-md-8">
                                                    <input type="number" lang="en" min="0" value="0" step="0.01" placeholder="{{ translate('Shipping cost') }}" name="flat_shipping_cost" class="form-control" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif  --}}
                        {{--  <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('PDF Specification')}}</h5>
                            </div>
                            <div class="card-body">
                              <div class="form-group row">
                                  <label class="col-md-3 col-form-label" for="signinSrEmail">{{translate('PDF Specification')}}</label>
                                  <div class="col-md-8">
                                      <div class="input-group" data-toggle="aizuploader" data-type="document">
                                          <div class="input-group-prepend">
                                              <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                          </div>
                                          <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                          <input type="hidden" name="pdf" class="selected-files">
                                      </div>
                                      <div class="file-preview box sm">
                                      </div>
                                  </div>
                              </div>
                            </div>
                        </div>  --}}
                      

                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0 h6">{{translate('SEO Meta Tags')}}</h5>
                            </div>
                            <div class="card-body">
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Meta Title')}}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="meta_title" placeholder="{{ translate('Meta Title') }}">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-from-label">{{translate('Description')}}</label>
                                    <div class="col-md-8">
                                        <textarea name="meta_description" rows="8" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-3 col-form-label" for="signinSrEmail">{{ translate('Meta Image') }}</label>
                                    <div class="col-md-8">
                                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text bg-soft-secondary font-weight-medium">{{ translate('Browse')}}</div>
                                            </div>
                                            <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                            <input type="hidden" name="meta_img" class="selected-files">
                                        </div>
                                        <div class="file-preview box sm">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mar-all text-right">
                            <button type="submit" name="button" class="btn btn-primary">{{ translate('Save Product') }}</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
 
@endsection

@section('script')

    <script type="text/javascript">
       $("#category").change(function(){
            $.ajax({
                url: "{{ route('subcatt') }}?cat_id=" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#subcategory').html(data.html);
                }
            });
        });

         $("#subcategory").change(function(){
            $.ajax({
                url: "{{ route('subcatt') }}?cat_id=" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#subsubcategory').html(data.html);
                }
            });
        });
    </script>
    <script type="text/javascript">

        function add_more_customer_choice_option(i, name){
            $('#customer_choice_options').append('<div class="form-group row"><div class="col-md-3"><input type="hidden" name="choice_no[]" value="'+i+'"><input type="text" class="form-control" name="choice[]" value="'+name+'" placeholder="{{ translate('Choice Title') }}" readonly></div><div class="col-md-8"><input type="text" class="form-control aiz-tag-input" name="choice_options_'+i+'[]" placeholder="{{ translate('Enter choice values') }}" data-on-change="update_sku"></div></div>');

            AIZ.plugins.tagify();
        }

        $('input[name="colors_active"]').on('change', function() {
            if(!$('input[name="colors_active"]').is(':checked')){
                $('#colors').prop('disabled', true);
            }
            else{
                $('#colors').prop('disabled', false);
            }
            update_sku();
        });

        $('#colors').on('change', function() {
            update_sku();
        });

        $('input[name="unit_price"]').on('keyup', function() {
            update_sku();
        });

        $('input[name="name"]').on('keyup', function() {
            update_sku();
        });

        function delete_row(em){
            $(em).closest('.form-group row').remove();
            update_sku();
        }

        function delete_variant(em){
            $(em).closest('.variant').remove();
        }

        function update_sku(){
            $.ajax({
               type:"POST",
               url:'{{ route('products.sku_combination') }}',
               data:$('#choice_form').serialize(),
               success: function(data){
                   $('#sku_combination').html(data);
                   if (data.length > 1) {
                       $('#quantity').hide();
                        $('#alert_qty').hide();
                   }
                   else {
                        $('#quantity').show();
                         $('#alert_qty').show();
                   }
               }
           });
        }

        $('#choice_attributes').on('change', function() {
            $('#customer_choice_options').html(null);
            $.each($("#choice_attributes option:selected"), function(){
                add_more_customer_choice_option($(this).val(), $(this).text());
            });
            update_sku();
        });

    </script>
@endsection
