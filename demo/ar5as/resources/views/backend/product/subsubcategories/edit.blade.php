@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <h5 class="mb-0 h6">{{translate('Sub Sub Category Information')}}</h5>
</div>

<div class="col-lg-8 mx-auto">
    <div class="card">
        <div class="card-body p-0">
  			<ul class="nav nav-tabs nav-fill border-light">
  				@foreach (\App\Language::all() as $key => $language)
  					<li class="nav-item">
  						<a class="nav-link text-reset @if ($language->code == $lang) active @else bg-soft-dark border-light border-left-0 @endif py-3" href="{{ route('subcategories.edit', ['id'=>$category->id, 'lang'=> $language->code] ) }}">
  							<img src="{{ static_asset('assets/img/flags/'.$language->code.'.png') }}" height="11" class="mr-1">
  							<span>{{$language->name}}</span>
  						</a>
  					</li>
  		        @endforeach
  			</ul>
            <form class="p-4" action="{{ route('subsubcategories.update', $category->id) }}" method="POST" enctype="multipart/form-data">
                
	            <input type="hidden" name="lang" value="{{ $lang }}">
            	@csrf
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Name')}} <i class="las la-language text-danger" title="{{translate('Translatable')}}"></i></label>
                    <div class="col-md-9">
                        <input type="text" name="name" value="{{ $category->getTranslation('name', $lang) }}" class="form-control" id="name" placeholder="{{translate('Name')}}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Category')}}</label>
                    <div class="col-md-9">
                        <select  id="cat"  class="select2 form-control aiz-selectpicker" name="category" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" data-selected="{{ $category->parent_id }}">
                            
                            @foreach ($categories as $acategory)
                                <option value="{{ $acategory->id }}">{{ $acategory->getTranslation('name') }}</option>
                              
                            @endforeach
                        </select>
                    </div>
                </div> 
              
                  <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Sub Category')}}</label>
                    <div class="col-md-9">
                        {{--  <select class="select2 form-control aiz-selectpicker" name="category_id" data-toggle="select2" data-placeholder="Choose ..."data-live-search="true" data-selected="{{ $category->parent_id }}">  --}}
                        <select id="cats" class="select2 form-control aiz-selectpicker" name="category_id" data-toggle="select2" data-placeholder="Choose ..." data-live-search="true">
                        <option>{{ translate('Select Sub Category') }}</option>
                        
                       
                            {{--  @foreach ($categories as $acategory)
                                <option value="{{ $acategory->id }}">{{ $acategory->getTranslation('name') }}</option>
                              
                            @endforeach  --}}
                        </select>
                    </div>
                </div>
                {{--  <div class="form-group row">
                    <label class="col-md-3 col-form-label">{{translate('Slug')}}</label>
                    <div class="col-md-9">
                        <input type="text" placeholder="{{translate('Slug')}}" id="slug" name="slug" value="{{ $category->slug }}" class="form-control">
                    </div>
                </div>  --}}
               
                <div class="form-group mb-0 text-right">
                    <button type="submit" class="btn btn-primary">{{translate('Save')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>


@endsection

 @section('script')


    <script type="text/javascript">
        $("#cat").change(function(){
            $.ajax({
                url: "{{ route('subcat') }}?cat_id=" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#cats').html(data.html);
                }
            });
        });
    </script>

    @endsection
