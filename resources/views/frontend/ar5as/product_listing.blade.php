@extends('frontend.ar5as.layout.app')
@if (isset($category_id))
    @php
        $meta_title = \App\Category::find($category_id)->meta_title;
        $meta_description = \App\Category::find($category_id)->meta_description;
    @endphp
@elseif (isset($brand_id))
    @php
        $meta_title = \App\Brand::find($brand_id)->meta_title;
        $meta_description = \App\Brand::find($brand_id)->meta_description;
    @endphp
@else
    @php
        $meta_title         = get_setting('meta_title');
        $meta_description   = get_setting('meta_description');
    @endphp
@endif
<link rel="stylesheet" href="{{ static_asset('assets/css/aiz-core.css') }}">

@section('meta_title'){{ $meta_title }}@stop
@section('meta_description'){{ $meta_description }}@stop

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ $meta_title }}">
    <meta itemprop="description" content="{{ $meta_description }}">

    <!-- Twitter Card data -->
    <meta name="twitter:title" content="{{ $meta_title }}">
    <meta name="twitter:description" content="{{ $meta_description }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $meta_title }}" />
    <meta property="og:description" content="{{ $meta_description }}" />
@endsection

@section('main-nav')
<nav class="breadcrumb-nav">
    <div class="container">
        <ul class="breadcrumb bb-no">
            <li><a href="{{route('home')}}">{{ translate('Home') }}</a></li>
            @if(!isset($category_id))
            <li >
                <a  href="{{ route('search') }}">"{{ translate('All Categories')}}"</a>
            </li>
            @else
                <li >
                    <a  href="{{ route('search') }}">{{ translate('All Categories')}}</a>
                </li>
            @endif
            @if(isset($category_id))
            <li >
                <a  href="{{ route('products.category', \App\Category::find($category_id)->slug) }}">"{{ \App\Category::find($category_id)->getTranslation('name') }}"</a>
            </li>
        @endif
        </ul>
    </div>
</nav>
@endsection
@section('css')
   @if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl != 1)
   <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/css/style.min.css')}}">
   @endif
@endsection
@section('content')


     <!-- Start of Page Content -->
     <div class="page-content">
        <div class="container">
            <form class="" id="search-form" action="" method="GET">
                <hr>

                <!-- Start of Shop Content -->
                <div class="shop-content row gutter-lg mb-10">
                    <!-- Start of Sidebar, Shop Sidebar -->
                    <aside class="sidebar shop-sidebar sticky-sidebar-wrapper sidebar-fixed">
                        <!-- Start of Sidebar Overlay -->
                        <div class="sidebar-overlay"></div>
                        <a class="sidebar-close" href="#"><i class="close-icon"></i></a>

                        <!-- Start of Sidebar Content -->
                        <div class="sidebar-content scrollable">
                            <!-- Start of Sticky Sidebar -->
                            <div class="sticky-sidebar">
                                {{-- <div class="filter-actions">
                                    <label>Filter :</label>
                                    <a href="{{ route('search') }}" class="btn btn-dark btn-link filter-clean">Clean All</a>
                                </div> --}}
                                <!-- Start of Collapsible widget -->
                                <div class="widget widget-collapsible">
                                    <h3 class="widget-title"><label>{{ translate('All Categories') }}</label></h3>
                                    <ul class="widget-body filter-items search-ul">
                                        @if (!isset($category_id))
                                        @foreach (\App\Category::where('level', 0)->get() as $category)
                                            <li class="mb-2 ml-2 ">
                                                <a class="text-reset fs-14 p-0" href="{{ route('products.category', $category->slug) }}">{{ $category->getTranslation('name') }}</a>
                                            </li>
                                        @endforeach
                                    @else
                                        <li class="mb-2">
                                            <a class="text-reset fs-14 fw-600 p-0" href="{{ route('search') }}">
                                                <i class="las la-angle-left"></i>
                                                {{ translate('All Categories')}}
                                            </a>
                                        </li>
                                        @if (\App\Category::find($category_id)->parent_id != 0)
                                            <li class="mb-2">
                                                <a class="text-reset fs-14 fw-600 p-0" href="{{ route('products.category', \App\Category::find(\App\Category::find($category_id)->parent_id)->slug) }}">
                                                    <i class="las la-angle-left"></i>
                                                    {{ \App\Category::find(\App\Category::find($category_id)->parent_id)->getTranslation('name') }}
                                                </a>
                                            </li>
                                        @endif
                                        <li class="mb-2">
                                            <a class="text-reset fs-14 fw-600 p-0" href="{{ route('products.category', \App\Category::find($category_id)->slug) }}">
                                                <i class="las la-angle-left"></i>
                                                {{ \App\Category::find($category_id)->getTranslation('name') }}
                                            </a>
                                        </li>
                                        @foreach (\App\Utility\CategoryUtility::get_immediate_children_ids($category_id) as $key => $id)
                                            <li class="ml-4 mb-2">
                                                <a class="text-reset fs-14 p-0" href="{{ route('products.category', \App\Category::find($id)->slug) }}">{{ \App\Category::find($id)->getTranslation('name') }}</a>
                                            </li>
                                        @endforeach
                                    @endif
                                    </ul>
                                </div>
                                <!-- End of Collapsible Widget -->

                                <!-- Start of Collapsible Widget -->
                                <div class="widget widget-collapsible">
                                    <h3 class="widget-title"><label>{{ translate('Price') }}</label></h3>
                                    <div class="widget-body">
                                        <ul class="filter-items search-ul">
                                            <li><a href="#">EGP 0.00 - EGP 1000.00</a></li>
                                            <li><a href="#">EGP 1000.00 - EGP 2000.00</a></li>
                                            <li><a href="#">EGP 2000.00 - EGP 3000.00</a></li>
                                            <li><a href="#">EGP 3000.00 - EGP 4000.00</a></li>
                                            <li><a href="#">EGP 4000.00+</a></li>
                                        </ul>
                                        <div class="price-range">
                                            <input type="number" name="min_price" class="min_price text-center"
                                                placeholder="min"><span class="delimiter">-</span>
                                            <input type="number" name="max_price" class="max_price text-center"
                                                placeholder=" max">
                                                <button href="#"
                                                class="btn btn-primary btn-rounded" onclick="filter()">Go</button>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Collapsible Widget -->

                                <!-- Start of Collapsible Widget -->

                                @foreach ($attributes as $key => $attribute)
                                    @if (\App\Attribute::find($attribute['id']) != null)
                                <div class="widget widget-collapsible">
                                    <h3 class="widget-title"><label> {{ translate('Filter by') }} {{ \App\Attribute::find($attribute['id'])->getTranslation('name') }}</label></h3>
                                    <ul class="widget-body filter-items item-check mt-1">
                                        @if(array_key_exists('values', $attribute))
                                        @foreach ($attribute['values'] as $key => $value)
                                            @php
                                                $flag = false;
                                                if(isset($selected_attributes)){
                                                    foreach ($selected_attributes as $key => $selected_attribute) {
                                                        if($selected_attribute['id'] == $attribute['id']){
                                                            if(in_array($value, $selected_attribute['values'])){
                                                                $flag = true;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                            @endphp

                                             <li>  <label class="aiz-checkbox">
                                                <input
                                                    type="checkbox"
                                                    name="attribute_{{ $attribute['id'] }}[]"
                                                    value="{{ $value }}" @if ($flag) checked @endif
                                                    onchange="filter()"
                                                >
                                                <span class="aiz-square-check"></span>
                                                <span class="size-span">{{ $value }}</span>
                                            </label></li>
                                        @endforeach
                                        @endif
                                    </ul>
                                </div>
                                @endif
                                @endforeach
                                <!-- End of Collapsible Widget -->


                                <!-- Start of Collapsible Widget -->
                                <div class="widget widget-collapsible">
                                    <h3 class="widget-title"><label>{{ translate('Filter by color')}}</label></h3>
                                    <ul class="widget-body filter-items item-check mt-1">

                                    <div class="p-3 mt-3">
                                        <div class="aiz-radio-inline " style="display: flex;
                                        flex-wrap: wrap;">

                                            @foreach ($all_colors as $key => $color)
                                            <label class="aiz-megabox pl-0 mr-2" data-toggle="tooltip" data-title="{{ \App\Color::where('code', $color)->first()->name }}">
                                                <input
                                                    type="radio"
                                                    name="color"
                                                    value="{{ $color }}"
                                                    onchange="filter()"
                                                    @if(isset($selected_color) && $selected_color == $color) checked @endif
                                                >
                                                <span class="aiz-megabox-elem rounded d-flex align-items-center justify-content-center p-1 mb-2">
                                                    <span class="size-30px d-inline-block rounded" style="background: {{ $color }};"></span>
                                                </span>
                                            </label>
                                            @endforeach
                                        </div>
                                    </div>
                                    </ul>
                                </div>
                                <!-- End of Collapsible Widget -->
                            </div>
                            <!-- End of Sidebar Content -->
                        </div>
                        <!-- End of Sidebar Content -->
                    </aside>
                    <!-- End of Shop Sidebar -->

                    <!-- Start of Shop Main Content -->
                    <div class="main-content">
                        <nav class="toolbox sticky-toolbox sticky-content fix-top">
                            <div class="toolbox-left">
                                <a href="#" class="btn btn-primary btn-outline btn-rounded left-sidebar-toggle
                                    btn-icon-left d-block d-lg-none"><i
                                        class="w-icon-category"></i><span>{{ translate('Filters') }}</span></a>
                                    <h4 class="h6 fw-600 text-body">
                                        @if(isset($category_id))
                                            {{ \App\Category::find($category_id)->getTranslation('name') }}
                                        @elseif(isset($query))
                                            {{ translate('Search result for ') }}"{{ $query }}"
                                        @else
                                            {{ translate('All Products') }}
                                        @endif
                                    </h4>

                            </div>
                            <div class="toolbox-right">
                                <div class="toolbox-item toolbox-show select-box ml-2 mr-2">
                                    <label>{{ translate('Brands')}} :</label>

                                    <select  class="form-control" style="width: 58%;" data-live-search="true" name="brand" onchange="filter()">
                                        <option value="">{{ translate('All Brands')}}</option>
                                        @foreach (\App\Brand::all() as $brand)
                                        <option value="{{ $brand->slug }}" @isset($brand_id) @if ($brand_id == $brand->id) selected @endif @endisset>{{ $brand->getTranslation('name') }}</option>
                                    @endforeach</select>

                                </div>
                                <div class="toolbox-item toolbox-show select-box">
                                    <label>{{ translate('Sort by')}} :</label>

                                    <select  class="form-control" name="sort_by" onchange="filter()">
                                        <option value="newest" @isset($sort_by) @if ($sort_by == 'newest') selected @endif @endisset>{{ translate('Newest')}}</option>
                                            <option value="oldest" @isset($sort_by) @if ($sort_by == 'oldest') selected @endif @endisset>{{ translate('Oldest')}}</option>
                                            <option value="price-asc" @isset($sort_by) @if ($sort_by == 'price-asc') selected @endif @endisset>{{ translate('Price low to high')}}</option>
                                            <option value="price-desc" @isset($sort_by) @if ($sort_by == 'price-desc') selected @endif @endisset>{{ translate('Price high to low')}}</option>
                                    </select>

                                </div>
                            </div>
                        </nav>
                        <div class="product-wrapper row cols-md-3 cols-sm-2 cols-2">

                            @foreach ($products as $key => $product)
                            @php
                                $qty = 0;
                                if($product->variant_product){
                                    foreach ($product->stocks as $key => $stock) {
                                        $qty += $stock->qty;
                                    }
                                }
                                else{
                                    $qty = $product->current_stock;
                                }
                            @endphp
                                <div class="product-wrap">
                                <div class="product text-center">
                                    <figure class="product-media ">
                                        <a href="{{ route('product', $product->slug) }}">
                                            <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product" width="300"
                                                style="width: 296px; height:334px;"  height="338" />
                                        </a>
                                        <div class="product-action-horizontal product-cart">
                                        @if($qty > 0)
                                            <a href="javascript:void(0)" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})" class="btn-product-icon btn-cart w-icon-cart" title="Add to Cart"> </a>

                                        @endif

                                        <a href="#" class="btn-product-icon btn-wishlist {{ (!empty(Auth::user()->wishlists) && in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )? 'added  w-icon-heart-full' : ' w-icon-heart'  }}"
                                        @if(!empty(Auth::user()->wishlists) &&  in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )
                                        onclick="removeFromWishlist({{ $product->id }})"
                                        @else
                                        onclick="addToWishList({{ $product->id }})"
                                        @endif
                                        title="Add to wishlist"></a>
                                    <a href="{{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )?  "compare" : '#'  }}"
                                        class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"

                                    onclick="addToCompare({{ $product->id }})"
                                    title="Compare"></a>



                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search" id="{{ $product->id }}"
                                        title="Quick View"></a>
                                        </div>
                                    </figure>
                                    <div class="product-details">
                                        <div class="product-cat">
                                            <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                                        </div>
                                        <h3 class="product-name">
                                            <a href="{{ route('product', $product->slug) }}">3D Television</a>
                                        </h3>
                                        @php
                                            $total = 0;
                                            $total += $product->reviews->count();
                                            $reviews_product = ($product->rating /5) *100 .'%';
                                        @endphp
                                        <div class="ratings-container">
                                            <div class="ratings-full">
                                                <span class="ratings" style="width: {{ $reviews_product }};"></span>
                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>
                                            <a href="#" class="rating-reviews">({{ $total }} Reviews)</a>
                                        </div>
                                        <div class="product-pa-wrapper">
                                            <div class="product-price">
                                                {{-- {{ dd(home_discounted_base_price($product->id)) }} --}}
                                                @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                                    @endif
                                                        {{ home_discounted_base_price($product->id) }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- Start of Quick View -->
                                        <div class="product product-single product-popup test{{ $product->id }}">
                                            <div class="row gutter-lg">
                                                <div class="col-md-6 mb-4 mb-md-0">
                                                    <div class="product-gallery product-gallery-sticky">
                                                        <div class="swiper-container product-single-swiper swiper-theme nav-inner">
                                                            <div class="swiper-wrapper row cols-1 gutter-no" style="height:500px">
                                                                @php
                                                                $photos = explode(',',$product->photos);
                                                            @endphp
                                                                @foreach ($photos as $key => $photo)

                                                                <div class="swiper-slide">
                                                                    <figure class="product-image">
                                                                        <img src="{{ uploaded_asset($photo) }}" data-zoom-image="{{ uploaded_asset($photo) }}" alt="Water Boil Black Utensil" width="800" height="500">
                                                                    </figure>
                                                                </div>
                                                                @endforeach

                                                            </div>
                                                            <button class="swiper-button-next"></button>
                                                            <button class="swiper-button-prev"></button>
                                                        </div>
                                                        <div class="product-thumbs-wrap swiper-container" data-swiper-options="{
                                                            'navigation': {
                                                                'nextEl': '.swiper-button-next',
                                                                'prevEl': '.swiper-button-prev'
                                                            }
                                                        }">
                                                            <div class="product-thumbs swiper-wrapper row cols-4 gutter-sm" style="height:100px">

                                                                @foreach ($photos as $key => $photo)
                                                                <div class="product-thumb swiper-slide">
                                                                    <img src="{{ uploaded_asset($photo) }}" alt="Product Thumb" width="103" height="116">
                                                                </div>
                                                                @endforeach

                                                            </div>
                                                            <button class="swiper-button-next"></button>
                                                            <button class="swiper-button-prev"></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 overflow-hidden p-relative">
                                                    <div class="product-details scrollable pl-0">
                                                        <h2 class="product-title">{{  $product->getTranslation('name')  }}</h2>
                                                        <div class="product-bm-wrapper">
                                                            <figure class="brand">
                                                                <img src="{{ uploaded_asset($photo) }}" alt="Brand" style="height: 90px;width: 90px;" />
                                                            </figure>
                                                        </div>

                                                        <hr class="product-divider">


                                                        <div class="product-price">
                                                        @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                        <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                                        @endif
                                                            {{ home_discounted_base_price($product->id) }}
                                                        </div>
                                                        <div class="ratings-container">
                                                            <div class="ratings-full">
                                                                @php
                                                                    $total = 0;
                                                                    $total += $product->reviews->count();
                                                                    $reviews_product = ($product->rating /5) *100 .'%';
                                                                @endphp
                                                                <span class="ratings" style="width: {{ $reviews_product }};"></span>
                                                                <span class="tooltiptext tooltip-top"></span>
                                                            </div>
                                                            <a href="#" class="rating-reviews">({{ $total }} Reviews)</a>
                                                        </div>

                                                        <div class="product-short-desc">
                                                            <ul class="list-type-check list-style-none">
                                                                @foreach (explode("</p>",$product->description ) as $key =>  $item)
                                                                @if ($key <= 2)
                                                                <li>{!! $item !!}</li>
                                                                @endif
                                                                @endforeach
                                                            </ul>
                                                        </div>

                                                        <hr class="product-divider">

                                                        <div class="product-form product-variation-form product-color-swatch">
                                                            <label>Color:</label>
                                                            <div class="d-flex align-items-center product-variations">
                                                                @if (count(json_decode($product->colors)) > 0)
                                                                @foreach (json_decode($product->colors) as $key => $color)


                                                                <label href="#" class="color color{{ $key }} @if($key == 0) active @endif" onclick="color({{ $key }})" style="max-width: 27px;background-color: {{ $color }}">
                                                                    <input
                                                                    style="    position: absolute;
                                                                    display: none;"
                                                                    type="radio"
                                                                    name="color"
                                                                    value="{{ $color }}"
                                                                    @if($key == 0) checked @endif
                                                                >
                                                                </label>
                                                                @endforeach

                                                                @endif


                                                            </div>
                                                        </div>
                                                        @if($product->digital !=1)
                                                        @if ($product->choice_options != null)
                                                            @foreach (json_decode($product->choice_options) as $key => $choice)
                                                        <div class="product-form product-variation-form product-size-swatch">
                                                            <label class="mb-1">{{ \App\Attribute::find($choice->attribute_id)->getTranslation('name') }}:</label>
                                                            <div class="flex-wrap d-flex align-items-center product-variations " style="width:80%">
                                                                @foreach ($choice->values as $key => $value)
                                                                {{-- <label for=""> --}}

                                                                    <label href="#" style="max-width: 40px;" class="size size{{ $key }}  @if($key == 0) active @endif" onclick="size({{ $key }})">
                                                                        {{ $value }}
                                                                        <input
                                                                        style="display: none"
                                                                        type="radio"
                                                                        name="attribute_id_{{ $choice->attribute_id }}"
                                                                        value="{{ $value }}"
                                                                        @if($key == 0) checked @endif></label>
                                                                {{-- </label> --}}

                                                                @endforeach

                                                            </div>
                                                            {{-- <a href="#" class="product-variation-clean">Clean All</a> --}}
                                                        </div>

                                                        @endforeach
                                                        @endif
                                                        @endif

                                                        <div class="product-price" id="chosen_price">{{ home_discounted_base_price($product->id) }}</div>


                                                        <div class="product-form product-cart" >
                                                            <div class="product-qty-form ">
                                                                <div class="input-group">
                                                                    <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                                                    <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                                                    <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                                                </div>
                                                            </div>

                                                            @if ($product->digital == 1)

                                                            <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                                                <i class="w-icon-cart"></i>
                                                                <span>{{ translate('Add to cart')}}</span>
                                                            </a>
                                                            @elseif($qty > 0)
                                                            <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                                                <i class="w-icon-cart"></i>
                                                                <span>{{ translate('Add to cart')}}</span>
                                                            </a>
                                                            @else

                                                            <button class=" btn btn-primary btn-cart disabled" style="background-color: #eee;
                                                            border-color: #eee;
                                                            color: #666;
                                                            cursor: not-allowed;" >
                                                                <i class="w-icon-cart"></i>
                                                                <span>{{ translate('Out of Stock')}}</span>
                                                            </button>
                                                            @endif

                                                        </div>

                                                        <div class="social-links-wrapper">
                                                            <div class="social-links">
                                                                <div class="social-icons social-no-color border-thin">
                                                                    <a href="{{ $product->user->shop->facebook }}" class="social-icon social-facebook w-icon-facebook"></a>
                                                                    <a href="{{ $product->user->shop->twitter }}" class="social-icon social-twitter w-icon-twitter"></a>
                                                                    <a href="{{ $product->user->shop->google }}" class="social-icon social-google fab fa-google"></a>
                                                                    <a href="{{ $product->user->shop->youtube }}" class="social-icon social-google fab fa-youtube"></a>
                                                                </div>
                                                            </div>
                                                            <span class="divider d-xs-show"></span>
                                                            <div class="product-link-wrapper d-flex">
                                                                <a href="#" class="btn-product-icon btn-wishlist {{ (!empty(Auth::user()->wishlists) && in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )? 'added  w-icon-heart-full' : ' w-icon-heart'  }}"
                                                                    @if(!empty(Auth::user()->wishlists) &&  in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )
                                                                    onclick="removeFromWishlist({{ $product->id }})"
                                                                    @else
                                                                    onclick="addToWishList({{ $product->id }})"
                                                                    @endif
                                                                    title="Add to wishlist"></a>
                                                                <a href="{{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )?  "compare" : '#'  }}"
                                                                class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"

                                                                onclick="addToCompare({{ $product->id }})"
                                                                title="Compare"></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                            <!-- End of Quick view -->
                            @endforeach

                            </div>

                        </div>

                        <div class="toolbox toolbox-pagination justify-content-between">
                            <p class="showing-info mb-2 mb-sm-0">
                                <span>1-12 </span>{{ translate('Products') }}
                            </p>
                            <ul class="pagination">
                                {{ $products->links() }}

                            </ul>
                        </div>
                    </div>
                    <!-- End of Shop Main Content -->
                </div>
                <!-- End of Shop Content -->
            </form>
        </div>
    </div>
    <!-- End of Page Content -->
        <!-- End of Shop Main Content -->
    </div>
    <!-- End of Shop Content -->
</div>
</div>


@endsection
@section('script')
    <script type="text/javascript">
        function filter(){
            $('#search-form').submit();
        }
        function rangefilter(arg){
            $('input[name=min_price]').val(arg[0]);
            $('input[name=max_price]').val(arg[1]);
            filter();
        }
    </script>
@endsection
