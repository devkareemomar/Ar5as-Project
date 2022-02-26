@extends('backend.layouts.app')

@section('content') 

<div class="col-lg-8 mx-auto"> 
    <div class="card"> 
        <div class="card-header">
            <h5 class="mb-0 h6">{{translate('Sub Category Information')}}</h5>
        </div>
        <div class="card-body">
            <form class="form-horizontal" action="{{ route('subcategories.store') }}" method="POST" enctype="multipart/form-data">
            	@csrf
                @if ($errors->any())
                <div class="bs-component">
                    <div class="alert alert-danger alert-dismissible ">
                        @foreach ($errors->all() as $error)
                            <button class="close" type="button" data-dismiss="alert">×</button><strong>{{ $error }}!</strong>
                        @endforeach
                    </div>
                </div>  
                @endif
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Name')}}</label>
                    <div class="col-md-9">
                        <input type="text" placeholder="{{translate('Name')}}" id="name" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Parent Category')}}</label>
                    <div class="col-md-9">
                        <select class="select2 form-control aiz-selectpicker" name="category_id" data-toggle="select2" data-placeholder="Choose ..." data-live-search="true">
                            <option>{{ translate('Select Category') }}</option>
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->getTranslation('name') }}</option>
                               
                            @endforeach
                        </select>
                    </div>
                </div>

                 @php
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
				@endif
                
               
                <div class="form-group mb-0 text-right">
                    <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
