@extends('frontend.ar5as.layout.app')

@section('meta_title'){{ $shop->meta_title }}@stop

@section('meta_description'){{ $shop->meta_description }}@stop

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ $shop->meta_title }}">
    <meta itemprop="description" content="{{ $shop->meta_description }}">
    <meta itemprop="image" content="{{ uploaded_asset($shop->logo) }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="website">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ $shop->meta_title }}">
    <meta name="twitter:description" content="{{ $shop->meta_description }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ uploaded_asset($shop->meta_img) }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $shop->meta_title }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ route('shop.visit', $shop->slug) }}" />
    <meta property="og:image" content="{{ uploaded_asset($shop->logo) }}" />
    <meta property="og:description" content="{{ $shop->meta_description }}" />
    <meta property="og:site_name" content="{{ $shop->name }}" />
@endsection

@section('main-nav')
<nav class="breadcrumb-nav">
    <div class="container">
        <ul class="breadcrumb bb-no">
            <li><a href="{{route('home')}}">{{ translate('Home') }}</a></li>
            <li><a href=""> {{ translate('Vendor') }}</a></li>
            <li> {{ translate('Store') }}</li>
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


    @php


        $Best_Selling = \App\Product::where('user_id', $shop->user->id)->where([['admin_approval', 1] ,['published', 1] ])->orderBy('num_of_sale', 'desc')->limit(3)->get();
        $Top_rated = \App\Product::where('user_id', $shop->user->id)->where([['admin_approval', 1] ,['published', 1] ])->orderBy('rating', 'desc')->limit(3)->get();
        $All_products = \App\Product::where('user_id', $shop->user->id)->where([['admin_approval', 1] ,['published', 1] ])->paginate(12);
    @endphp





                <div class="container">
                    <div class="row gutter-lg">
                        <aside class="sidebar left-sidebar vendor-sidebar sticky-sidebar-wrapper sidebar-fixed">
                            <!-- Start of Sidebar Overlay -->
                            <div class="sidebar-overlay"></div>
                            <a class="sidebar-close" href="#"><i class="close-icon"></i></a>
                            <a href="#" class="sidebar-toggle"><i class="fas fa-chevron-right"></i></a>
                            <div class="sidebar-content">
                                <div class="sticky-sidebar">
                                    <div class="widget widget-collapsible widget-categories">
                                        <h3 class="widget-title"><span>{{translate('All Categories')}}</span></h3>
                                        <ul class="widget-body filter-items search-ul">
                                            @foreach ($cats as $cat )
                                            <li><a href="{{ route('products.category', $cat->slug) }}">{{ $cat->name }}</a></li>

                                            @endforeach

                                        </ul>
                                    </div>

                                    <!-- End of Widget -->
                                    <div class="widget widget-collapsible widget-products" style="width:min-content;">
                                        <h3 class="widget-title"><span>{{ translate('Best Selling')}}</span></h3>
                                        <div class="widget-body">
                                            @foreach ($Best_Selling as $product)

                                            <div class="product product-widget">
                                                <figure class="product-media">
                                                    <a href="{{ route('product', $product->slug) }}">
                                                        <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h4 class="product-name">
                                                        <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                                                    </h4>
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
                                                    <div class="product-price">
                                                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                    <span  style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }} </span> -
                                                    @endif
                                                     {{ home_discounted_base_price($product->id) }}
                                                    </div>
                                                </div>
                                            </div>

                                            @endforeach
                                        </div>
                                    </div>
                                    <!-- End of Widget -->
                                    <div class="widget widget-collapsible widget-products" style="width:min-content;">
                                        <h3 class="widget-title"><span>{{ translate('Top Rated')}}</span></h3>
                                        <div class="widget-body">
                                            @foreach ($Top_rated as $product)

                                            <div class="product product-widget">
                                                <figure class="product-media">
                                                    <a href="{{ route('product', $product->slug) }}">
                                                        <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product"
                                                            />
                                                    </a>
                                                </figure>
                                                <div class="product-details">
                                                    <h4 class="product-name">
                                                        <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                                                    </h4>
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
                                                    <div class="product-price">
                                                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                    <span  style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }} </span> -
                                                    @endif
                                                     {{ home_discounted_base_price($product->id) }}
                                                    </div>
                                                </div>
                                            </div>

                                            @endforeach
                                        </div>
                                    </div>
                                    <!-- End of Widget -->
                                </div>
                            </div>
                        </aside>
                        <!-- End of Sidebar -->

                        <div class="main-content">
                            <div class="store store-banner mb-4">
                                <figure class="store-media">
                                    <img src="@if ($shop->logo !== null) {{ uploaded_asset($shop->sliders) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Vendor" width="930" height="446"
                                        style="background-color: #414960;height:400px;" />
                                </figure>
                                <div class="store-content">
                                    <figure class="seller-brand">
                                        <img src="@if ($shop->logo !== null) {{ uploaded_asset($shop->logo) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Brand" width="80"
                                           style="width:80px;height:80px;" />
                                    </figure>
                                    <h4 class="store-title">{{ $shop->name }}</h4>
                                    <ul class="seller-info-list list-style-none mb-6">

                                        <li class="store-rating">
                                            <i class="w-icon-star-full"></i>

                                            @php
                                                $total = 0;
                                                $rating = 0;
                                                $total_sale = 0;
                                                $Average = 0;
                                                foreach ($shop->user->products as $key => $seller_product) {
                                                    $total += $seller_product->reviews->count();
                                                    $rating += $seller_product->reviews->sum('rating');
                                                    $total_sale += $seller_product->num_of_sale;

                                                }
                                                if( $rating > 0){

                                                    $Average = round($rating/$total, 2);
                                                }

                                            @endphp
                                            {{ $Average  .' '. translate('تقييم من ')  .' '.$total .' '. translate('آراء')}}
                                        </li>
                                        <li class="store-open">
                                            <i class="w-icon-cart"></i>
                                            {{ translate('Store Open') }}
                                        </li>
                                    </ul>


                                    {{-- <div class="social-icons social-no-color border-thin">
                                        <a href="{{ $shop->user->shop->facebook }}" target="_blank" class="social-icon social-facebook w-icon-facebook"></a>
                                        <a href="{{ $shop->user->shop->google }}" target="_blank" class="social-icon social-google w-icon-google"></a>
                                        <a href="{{ $shop->user->shop->twitter }}" target="_blank" class="social-icon social-twitter w-icon-twitter"></a>
                                        <a href="{{ $shop->user->shop->youtube }}" target="_blank" class="social-icon social-google w-icon-youtube"></a>
                                    </div> --}}
                                </div>
                            </div>
                            <!-- End of Store Banner -->

                            <h2 class="title vendor-product-title mb-4"><a href="#">  {{ translate('Products') }}</a></h2>

                            <div class="product-wrapper row cols-md-3 cols-sm-2 cols-2 ml-5">
                                @foreach ($All_products as $product)

                                <div class="product-wrap">
                                    <div class="product text-center">
                                        <figure class="product-media">
                                            <a href="{{ route('product', $product->slug) }}">
                                                <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product" style="width:297px;height:334px;" />
                                            </a>
                                            <div class="product-action-vertical product-cart">
                                                <a href="javascript:void(0)" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})"
                                                    class="btn-product-icon btn-cart w-icon-cart"
                                                   title="Add to cart"></a>
                                            <a href="#" class="btn-product-icon btn-wishlist {{ (!empty(Auth::user()->wishlists) && in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )? 'added  w-icon-heart-full' : ' w-icon-heart'  }}"
                                            @if(!empty(Auth::user()->wishlists) &&  in_array($product->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )
                                            onclick="removeFromWishlist({{ $product->id }})"
                                            @else
                                            onclick="addToWishList({{ $product->id }})"
                                            @endif
                                                title="Add to wishlist"></a>
                                            <a href="@if(Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()))   {{ route('compare') }} @endif"
                                                 class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"
                                                 onclick="addToCompare({{ $product->id }})"
                                                 title="Add to Compare"></a>

                                            <a href="#" class="btn-product-icon btn-quickview w-icon-search"
                                            id="{{ $product->id }}"
                                            title="Quick View"></a>
                                        </div>
                                        </figure>
                                        <div class="product-details">
                                            <h3 class="product-name">
                                                <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                                            </h3>
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
                                            <div class="product-pa-wrapper">
                                                @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                                 @endif
                                                <div class="product-price"> {{ home_discounted_base_price($product->id) }}</div>
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


                                                    <div class="product-price">{{ home_discounted_base_price($product->id) }}</div>


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
                                                    </div>

                                                    @endforeach
                                                    @endif
                                                    @endif

                                                    <div class="product-price" id="chosen_price">{{ home_discounted_base_price($product->id) }}</div>


                                                    <div class="product-form">
                                                        <div class="product-qty-form">
                                                            <div class="input-group">
                                                                <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                                                <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                                                <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                                            </div>
                                                        </div>
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
                                                        @if ($product->digital == 1)

                                                        <button class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                                            <i class="w-icon-cart"></i>
                                                            <span>{{ translate('Add to cart')}}</span>
                                                        </button>
                                                        @elseif($qty > 0)
                                                        <button class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                                            <i class="w-icon-cart"></i>
                                                            <span>{{ translate('Add to cart')}}</span>
                                                        </button>
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
                            <div class="paginatiton-vendor">
                                {{ $All_products->links() }}

                            </div>
                        </div>
                        <!-- End of Main Content -->
                    </div>
                </div>





@endsection
