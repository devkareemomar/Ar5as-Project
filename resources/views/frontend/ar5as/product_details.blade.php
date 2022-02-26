




@extends('frontend.ar5as.layout.app')
@section('meta_title'){{ $detailedProduct->meta_title }}@stop

@section('meta_description'){{ $detailedProduct->meta_description }}@stop

@section('meta_keywords'){{ $detailedProduct->tags }}@stop

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ $detailedProduct->meta_title }}">
    <meta itemprop="description" content="{{ $detailedProduct->meta_description }}">
    <meta itemprop="image" content="{{ uploaded_asset($detailedProduct->meta_img) }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ $detailedProduct->meta_title }}">
    <meta name="twitter:description" content="{{ $detailedProduct->meta_description }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ uploaded_asset($detailedProduct->meta_img) }}">
    <meta name="twitter:data1" content="{{ single_price($detailedProduct->unit_price) }}">
    <meta name="twitter:label1" content="Price">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $detailedProduct->meta_title }}" />
    <meta property="og:type" content="og:product" />
    <meta property="og:url" content="{{ route('product', $detailedProduct->slug) }}" />
    <meta property="og:image" content="{{ uploaded_asset($detailedProduct->meta_img) }}" />
    <meta property="og:description" content="{{ $detailedProduct->meta_description }}" />
    <meta property="og:site_name" content="{{ get_setting('meta_title') }}" />
    <meta property="og:price:amount" content="{{ single_price($detailedProduct->unit_price) }}" />
    <meta property="product:price:currency" content="{{ \App\Currency::findOrFail(\App\BusinessSetting::where('type', 'system_default_currency')->first()->value)->code }}" />
    <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">
@endsection
@section('css')
   @if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl != 1)
   <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/css/style.min.css')}}">
   @endif
@endsection

@section('main-nav')
<nav class="breadcrumb-nav">
    <div class="container">
        <ul class="breadcrumb bb-no">
            <li><a href="{{route('home')}}">{{ translate('Home') }}</a></li>
            <li> {{ translate('Products') }}</li>
        </ul>
    </div>
</nav>
@endsection
@section('content')
@php
$qty = 0;
if($detailedProduct->variant_product){
    foreach ($detailedProduct->stocks as $key => $stock) {
        $qty += $stock->qty;
    }
}
else{
    $qty = $detailedProduct->current_stock;
}
$cat = \App\Category::find($detailedProduct->category_id);
@endphp

<div class="container mt-5">
    <div class="row gutter-lg  mb-10">
        <div class="main-content">
            <div class="product product-single row mb-10">

                <div class="col-md-6 mb-4 mb-md-0">
                    <div class="product-gallery product-gallery-sticky">
                        <div class="swiper-container product-single-swiper swiper-theme nav-inner"data-swiper-options="{
                            'navigation': {
                                'nextEl': '.swiper-button-next',
                                'prevEl': '.swiper-button-prev'
                            }
                        }">
                            <div class="swiper-wrapper row cols-1 gutter-no" style="height:500px">
                                @php
                                $photos = explode(',',$detailedProduct->photos);
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
                             <a href="#" class="product-gallery-btn product-image-full"><i
                                                    class="w-icon-zoom"></i></a>

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
                        <h2 class="product-title">{{  $detailedProduct->getTranslation('name')  }}</h2>
                        <div class="product-bm-wrapper">
                            <figure class="brand">
                                <img src="{{ uploaded_asset($photo) }}" alt="Brand" style="height: 90px;width: 90px;" />
                            </figure>
                        </div>

                        <hr class="product-divider">
                         <div class="product-price">
                            @if(home_base_price($detailedProduct->id) != home_discounted_base_price($detailedProduct->id))
                            <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($detailedProduct->id) }}  </span> -
                            @endif
                                {{ home_discounted_base_price($detailedProduct->id) }}
                            </div>
                        <div class="ratings-container">
                            <div class="ratings-full">
                                @php
                                    $total = 0;
                                    $total += $detailedProduct->reviews->count();
                                    $reviews_product = ($detailedProduct->rating /5) *100 .'%';
                                @endphp
                                <span class="ratings" style="width: {{ $reviews_product }};"></span>
                                <span class="tooltiptext tooltip-top"></span>
                            </div>
                            <a href="#" class="rating-reviews">({{ $total }} Reviews)</a>
                        </div>

                        <div class="product-short-desc">
                            <ul class="list-type-check list-style-none">
                                @foreach (explode("</p>",$detailedProduct->description ) as $key =>  $item)
                                @if ($key <= 2)
                                <li>{!! $item !!}</li>
                                @endif
                                @endforeach
                            </ul>
                        </div>

                        <hr class="product-divider">
                        <form id="option-choice-form">
                            @csrf
                            <input type="hidden" name="id" value="{{ $detailedProduct->id }}">

                        <div class="product-form product-variation-form product-color-swatch">
                            <label>Color:</label>
                            <div class="d-flex align-items-center product-variations">
                                @if (count(json_decode($detailedProduct->colors)) > 0)
                                @foreach (json_decode($detailedProduct->colors) as $key => $color)


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
                        @if($detailedProduct->digital !=1)
                        @if ($detailedProduct->choice_options != null)
                            @foreach (json_decode($detailedProduct->choice_options) as $key => $choice)
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
                        @php
                        $qty = 0;
                            if($detailedProduct->variant_product){
                                foreach ($detailedProduct->stocks as $key => $stock) {
                                    $qty += $stock->qty;

                                }

                            }
                            else{
                                $qty = $detailedProduct->current_stock;

                            }

                            // dd($qty);
                        @endphp
                         <div class="product-price">
                            <strong id="chosen_price" class="h4 fw-600 ">
                                {{ home_discounted_base_price($detailedProduct->id) }}
                            </strong>
                        </div>
                        {{-- <div class="product-price" >{{ home_discounted_base_price($detailedProduct->id) }}</div> --}}
                        <div class="avialable-amount opacity-60">(<span id="available-quantity">{{ $qty }}</span> {{ translate('available')}})</div>


                        <div class="fix-bottom product-sticky-content sticky-content">
                            <div class="product-form container product-cart">
                                <div class="product-qty-form product-quantity">
                                    <div class="input-group aiz-plus-minus">
                                        <input class="quantity form-control input-number" type="name" name="quantity"  placeholder="1" value="{{ $detailedProduct->min_qty }}" min="{{ $detailedProduct->min_qty }}" max="10">
                                        <button class=" w-icon-plus" type="button" data-type="plus" data-field="quantity"></button>
                                        <button class=" w-icon-minus" type="button" data-type="minus" data-field="quantity"></button>
                                    </div>
                                </div>


                                {{-- <div class="product-quantity d-flex align-items-center">
                                    <div class="row no-gutters align-items-center aiz-plus-minus mr-3" style="width: 130px;">
                                        <button class="btn col-auto btn-icon btn-sm btn-circle btn-light" type="button" data-type="minus" data-field="quantity" disabled="">
                                            <i class="las la-minus"></i>
                                        </button>
                                        <input type="text" name="quantity" class="col border-0 text-center flex-grow-1 fs-16 input-number" placeholder="1" value="{{ $detailedProduct->min_qty }}" min="{{ $detailedProduct->min_qty }}" max="10" readonly>
                                        <button class="btn  col-auto btn-icon btn-sm btn-circle btn-light" type="button" data-type="plus" data-field="quantity">
                                            <i class="las la-plus"></i>
                                        </button>
                                    </div>
                                    <div class="avialable-amount opacity-60">(<span id="available-quantity">{{ $qty }}</span> {{ translate('available')}})</div>
                                </div> --}}





                            @if($qty > 0)
                            <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $detailedProduct->id }})">
                                <i class="w-icon-cart"></i>
                                <span>{{ translate('Add to cart')}}</span>
                            </a>
                            @else

                            <a class=" btn btn-primary  disabled" style="background-color: #eee;
                            border-color: #eee;
                            color: #666;
                            cursor: not-allowed;" >
                                <i class="w-icon-cart"></i>
                                <span>{{ translate('Out of Stock')}}</span>
                            </a>
                            @endif
                        </div>
                    </form>



                        </div>
                        <div class="social-links-wrapper">
                            <div class="social-links">
                                <div class="social-icons social-no-color border-thin">
                                    <a href="{{ $detailedProduct->user->shop->facebook }}" class="social-icon social-facebook w-icon-facebook"></a>
                                    <a href="{{ $detailedProduct->user->shop->twitter }}" class="social-icon social-twitter w-icon-twitter"></a>
                                    <a href="{{ $detailedProduct->user->shop->google }}" class="social-icon social-google fab fa-google"></a>
                                    <a href="{{ $detailedProduct->user->shop->youtube }}" class="social-icon social-google fab fa-youtube"></a>
                                </div>
                            </div>
                            <span class="divider d-xs-show"></span>
                            <div class="product-link-wrapper d-flex">
                                <a href="#" class="btn-product-icon btn-wishlist {{ (!empty(Auth::user()->wishlists) && in_array($detailedProduct->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )? 'added  w-icon-heart-full' : ' w-icon-heart'  }}"
                                    @if(!empty(Auth::user()->wishlists) &&  in_array($detailedProduct->id,Auth::user()->wishlists->pluck('product_id')->toArray()) )
                                    onclick="removeFromWishlist({{ $detailedProduct->id }})"
                                    @else
                                    onclick="addToWishList({{ $detailedProduct->id }})"
                                    @endif
                                    title="Add to wishlist"></a>
                                <a href="{{ (Session::has('compare') && in_array($detailedProduct->id,Session::get('compare')->toArray()) )?  "compare" : '#'  }}"
                                class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($detailedProduct->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"

                                onclick="addToCompare({{ $detailedProduct->id }})"
                                title="Compare"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="tab tab-nav-boxed tab-nav-underline product-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a href="#product-tab-description" class="nav-link active">Description</a>
                    </li>
                    <li class="nav-item">
                        <a href="#product-tab-specification" class="nav-link">Specification</a>
                    </li>
                    <li class="nav-item">
                        <a href="#product-tab-vendor" class="nav-link">Vendor Info</a>
                    </li>
                    <li class="nav-item">
                        <a href="#product-tab-reviews" class="nav-link">Customer Reviews ({{ $total }})</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="product-tab-description">
                        <div class="row mb-4">
                            <div class="col-md-12 mb-5">
                                <h4 class="title tab-pane-title font-weight-bold mb-2">Detail</h4>

                                {!! $detailedProduct->description !!}
                            </div>

                        </div>

                    </div>
                    <div class="tab-pane" id="product-tab-specification">
                        <ul class="list-none">


                            @if($detailedProduct->digital !=1)
                            @if ($detailedProduct->choice_options != null)
                                @foreach (json_decode($detailedProduct->choice_options) as $key => $choice)
                            <li>
                                <label>{{ \App\Attribute::find($choice->attribute_id)->getTranslation('name') }}</label>

                                <p>
                                @foreach ($choice->values as $key => $value)

                                    {{ $value }} ,
                                    @endforeach

                                </p>

                            </li>
                            @endforeach
                            @endif
                            @endif
                        </ul>
                    </div>
                    <div class="tab-pane" id="product-tab-vendor">
                        <div class="row mb-3">
                            <div class="col-md-6 mb-4">
                                <figure class="vendor-banner br-sm">
                                    <img src="{{ uploaded_asset($detailedProduct->user->shop->sliders) }}"
                                        alt="Vendor Banner" width="610" height="295"
                                        style="background-color: #353B55;width:455px;height:295px;" />
                                </figure>
                            </div>
                            <div class="col-md-6 pl-2 pl-md-6 mb-4">
                                <div class="vendor-user">
                                    <figure class="vendor-logo mr-4">
                                        <a href="">
                                            <img src="{{ uploaded_asset($detailedProduct->user->shop->logo) }}"
                                                alt="Vendor Logo" width="80" height="80" />
                                        </a>
                                    </figure>
                                    <div>
                                        <div class="vendor-name"><a href="">{{ $detailedProduct->user->name }}</a></div>
                                        @php

                                            $total = 0;
                                            $rating = 0;
                                            $total_sale = 0;
                                            $reviews = 0;
                                            foreach ($detailedProduct->user->products as $key => $seller_product) {
                                                $total += $seller_product->reviews->count();
                                                $rating += $seller_product->reviews->sum('rating');
                                                    $total_sale += $seller_product->num_of_sale;

                                            }
                                            if( $rating > 0){
                                                $reviews = (($rating/$total) /5) *100 .'%';

                                            }
                                        @endphp



                                        <div class="ratings-container">
                                            <div class="ratings-full">
                                                <span class="ratings" style="width: {{ $reviews }};"></span>
                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>
                                            <a href="#" class="rating-reviews">( {{ $total }}  Reviews )</a>
                                        </div>
                                    </div>
                                </div>
                                <ul class="vendor-info list-style-none">
                                    <li class="store-name">
                                        <label>Store Name:</label>
                                        <span class="detail">{{ $detailedProduct->user->shop->name }}</span>
                                    </li>


                                </ul>
                                <a href="{{ route('shop.visit', $detailedProduct->user->shop->slug) }}"
                                    class="btn btn-dark btn-link btn-underline btn-icon-right">Visit
                                    Store<i class="w-icon-long-arrow-right"></i></a>
                            </div>
                        </div>
                        <p class="mb-5">
                            {{ $detailedProduct->user->shop->meta_description }}
                        </p>

                    </div>
                    <div class="tab-pane" id="product-tab-reviews">
                        <div class="row mb-4">
                            @php
                            $total = 0;
                            $total += $detailedProduct->reviews->count();

                            $Average = $detailedProduct->rating /5;
                            $reviews_product = ($detailedProduct->rating /5) *100 .'%';
                        @endphp
                            <div class="col-xl-4 col-lg-5 mb-4">
                                <div class="ratings-wrapper">
                                    <div class="avg-rating-container">
                                        <h4 class="avg-mark font-weight-bolder ls-50">{{ $Average }}</h4>
                                        <div class="avg-rating">
                                            <p class="text-dark mb-1">Average Rating</p>
                                            <div class="ratings-container">
                                                <div class="ratings-full">
                                                    <span class="ratings" style="width: {{ $reviews_product }};"></span>
                                                    <span class="tooltiptext tooltip-top"></span>
                                                </div>
                                                <a href="#" class="rating-reviews">({{ $total }} Reviews)</a>
                                            </div>
                                        </div>
                                    </div>
                                    @php
                                        $total = $detailedProduct->reviews->count();
                                        $recommended = $detailedProduct->reviews->where('rating',5)->count();

                                    @endphp
                                    <div
                                        class="ratings-value d-flex align-items-center text-dark ls-25">
                                        <span
                                            class="text-dark font-weight-bold">{{ $reviews_product }}</span>Recommended<span
                                            class="count">({{ $recommended }} of {{ $total }})</span>
                                    </div>
                                    <div class="ratings-list">
                                        @for ($x = 1; $x <= 5; $x++ )

                                        @php
                                            $total = 0;
                                            $rating = 0;

                                            $total += $detailedProduct->reviews->where('rating',$x)->count();
                                            $rating += $detailedProduct->reviews->where('rating',$x)->sum('rating');

                                            if($rating > 0){
                                                $reviewsAverage = (($rating/$total) /5) *100 .'%';

                                            }else{
                                                $reviewsAverage = 0 .'%';
                                            }

                                        @endphp
                                        <div class="ratings-container">
                                            <div class="ratings-full">
                                                <span class="ratings" style="width: {{ $reviewsAverage }};"></span>
                                                <span class="tooltiptext tooltip-top"></span>
                                            </div>
                                            <div class="progress-bar progress-bar-sm ">
                                                <span></span>
                                            </div>
                                            <div class="progress-value">
                                                <mark>{{ $reviewsAverage }}</mark>
                                            </div>
                                        </div>
                                        @endfor

                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-8 col-lg-7 mb-4">
                                @if(count($detailedProduct->reviews) <= 0)
                                    <div class="text-center fs-18 opacity-70">
                                        {{  translate('There have been no reviews for this product yet.') }}
                                    </div>
                                @endif
                                @if(Auth::check())
                                @php
                                    $commentable = false;
                                @endphp
                                @foreach ($detailedProduct->orderDetails as $key => $orderDetail)
                                    @if($orderDetail->order != null && $orderDetail->order->user_id == Auth::user()->id && $orderDetail->delivery_status == 'delivered' && \App\Review::where('user_id', Auth::user()->id)->where('product_id', $detailedProduct->id)->first() == null)
                                        @php
                                            $commentable = true;
                                        @endphp
                                    @endif
                                @endforeach
                                @if ($commentable)
                                <div class="review-form-wrapper">
                                    <h3 class="title tab-pane-title font-weight-bold mb-1">Submit Your
                                        Review</h3>

                                    <form action="{{ route('reviews.store') }}" method="POST" class="review-form">
                                        @csrf
                                        <input type="hidden" name="product_id" value="{{ $detailedProduct->id }}">
                                        <input type="hidden" id="rating-star" name="rating" value="1">

                                        <div class="rating-form">

                                            <label for="rating">Your Rating Of This Product :</label>
                                            <span class="rating-stars">
                                                <a class="star-1" onclick="rating(1);" href="javascript:void(0)">1</a>

                                                <a class="star-2" onclick="rating(2);" href="javascript:void(0)">2</a>
                                                <a class="star-3" onclick="rating(3);" href="javascript:void(0)">3</a>
                                                <a class="star-4" onclick="rating(4);" href="javascript:void(0)">4</a>
                                                <a class="star-5" onclick="rating(5);" href="javascript:void(0)">5</a>
                                            </span>

                                        </div>
                                        <textarea cols="30" rows="6"
                                            name="comment" placeholder="{{ translate('Your review')}}" required
                                            placeholder="Write Your Review Here..." class="form-control"
                                            id="review"></textarea>
                                        <div class="row gutter-md">
                                            <div class="col-md-6">
                                                <input type="text" name="name"    placeholder="Your Name" value="{{ Auth::user()->name }}" class="form-control" disabled required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" name="email"  placeholder="Your Email" value="{{ Auth::user()->email }}" class="form-control" required disabled>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-dark">{{ translate('Submit review')}}</button>
                                    </form>
                                </div>
                                @endif
                                @endif
                            </div>
                        </div>

                        <div class="tab tab-nav-boxed tab-nav-outline tab-nav-center">

                            <div class="tab-content">
                                <div class="tab-pane active" id="show-all">
                                    <ul class="comments list-style-none">

                                    @foreach ($detailedProduct->reviews as $key => $review)
                                    @if($review->user != null)
                                        <li class="comment">
                                            <div class="comment-body">
                                                <figure class="comment-avatar">
                                                    <img
                                                    @if($review->user->avatar_original !=null)
                                                    src="{{ uploaded_asset($review->user->avatar_original) }}"
                                                @else
                                                    src="{{ static_asset('assets/img/placeholder.jpg') }}"
                                                @endif
                                                        alt="Commenter Avatar" width="90" height="90">
                                                </figure>
                                                <div class="comment-content">
                                                    <h4 class="comment-author">
                                                        <a href="#">{{ $review->user->name }}</a>
                                                        <span class="comment-date">{{ date('d-m-Y H:m:i a', strtotime($review->created_at)) }}
                                                            </span>
                                                    </h4>
                                                    <div class="ratings-container comment-rating">
                                                        <div class="ratings-full">
                                                            @php
                                                                $total = 0;
                                                                $total += $detailedProduct->reviews->count();
                                                                $reviews_product = ($review->rating /5) *100 .'%';
                                                            @endphp
                                                            <span class="ratings" style="width: {{ $reviews_product }};"></span>
                                                            <span class="tooltiptext tooltip-top"></span>
                                                        </div>
                                                        <a href="#" class="rating-reviews">({{ $total }} Reviews)</a>
                                                    </div>

                                                    <p>{{ $review->comment }}</p>

                                                </div>
                                            </div>
                                        </li>
                                        @endif
                                        @endforeach
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="vendor-product-section">
                <div class="title-link-wrapper mb-4">
                    <h4 class="title text-left">More Products From This Vendor</h4>
                    <a href="{{ route('shop.visit', $detailedProduct->user->shop->slug) }}" class="btn btn-dark btn-link btn-slide-right btn-icon-right">More
                        Products<i class="w-icon-long-arrow-right"></i></a>
                </div>
                <div class="swiper-container swiper-theme" data-swiper-options="{
                    'spaceBetween': 20,
                    'slidesPerView': 2,
                    'breakpoints': {
                        '576': {
                            'slidesPerView': 3
                        },
                        '768': {
                            'slidesPerView': 4
                        },
                        '992': {
                            'slidesPerView': 3
                        }
                    }
                }">
                    <div class="swiper-wrapper row cols-lg-3 cols-md-4 cols-sm-3 cols-2">

                        @foreach ($detailedProduct->user->shop->user->products->take(10) as $product)


                        <div class="swiper-slide product">
                            <figure class="product-media">
                                <a href="{{ route('product', $product->slug) }}">
                                    <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product"
                                        style="width: 296px;height: 334px;" />

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
                                    <a href="{{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )?  "compare" : '#'  }}"
                                         class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"
                                         onclick="addToCompare({{ $product->id }})"
                                         title="Add to Compare"></a>
                                </div>
                                <div class="product-action product-cart">
                                    <a href="#" class="btn-product btn-quickview" id="{{ $product->id }}" title="Quick View">Quick
                                        View</a>
                                </div>
                            </figure>
                            <div class="product-details">

                                <h4 class="product-name"><a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
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
                                <div class="product-pa-wrapper">
                                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                    <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                     @endif
                                    <div class="product-price"> {{ home_discounted_base_price($product->id) }}</div>
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

                                        <div class="product-price avialable-amount" >{{ home_discounted_base_price($product->id) }}</div>

                                        <div class="product-form">


                                            <div class="product-qty-form product-quantity">
                                                <div class="input-group aiz-plus-minus">
                                                    <input class="quantity form-control input-number" type="number" name="quantity" value="{{ $product->min_qty }}" min="{{ $product->min_qty }}" max="10">
                                                    <button class="quantity-plus w-icon-plus" data-type="plus" data-field="quantity"></button>
                                                    <button class="quantity-minus w-icon-minus" data-type="minus" data-field="quantity"></button>
                                                </div>
                                            </div>











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
                </div>
            </section>
            @php

              $MoreProduct =  $detailedProduct->user->shop->user->products->sortByDesc('id')->take(10);
             @endphp

            @if ($MoreProduct->count() > 0)

            <section class="related-product-section">
                <div class="title-link-wrapper mb-4">
                    <h4 class="title">{{ translate('More products')}}</h4>

                    <a href="{{ route('products.category', $cat->slug) }}" class="btn btn-dark btn-link btn-slide-right btn-icon-right">More
                        Products<i class="w-icon-long-arrow-right"></i></a>
                </div>
                <div class="swiper-container swiper-theme" data-swiper-options="{
                    'spaceBetween': 20,
                    'slidesPerView': 2,
                    'breakpoints': {
                        '576': {
                            'slidesPerView': 3
                        },
                        '768': {
                            'slidesPerView': 4
                        },
                        '992': {
                            'slidesPerView': 3
                        }
                    }
                }">
                    <div class="swiper-wrapper row cols-lg-3 cols-md-4 cols-sm-3 cols-2">

                        @foreach ($MoreProduct as $key => $product)

                        <div class="swiper-slide product">
                            <figure class="product-media">
                                <a href="{{ route('product', $product->slug) }}">
                                    <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product"
                                        style="width: 296px;height: 334px;" />

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
                                    <a href="{{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )?  "compare" : '#'  }}"
                                         class="btn-product-icon btn-compare {{ (Session::has('compare') && in_array($product->id,Session::get('compare')->toArray()) )? 'added w-icon-check-solid' : 'w-icon-compare'  }}"
                                         onclick="addToCompare({{ $product->id }})"
                                         title="Add to Compare"></a>
                                </div>
                                <div class="product-action product-cart">
                                    <a href="#" class="btn-product btn-quickview" id="{{ $product->id }}" title="Quick View">Quick
                                        View</a>
                                </div>
                            </figure>
                            <div class="product-details">

                                <h4 class="product-name"><a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
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
                                <div class="product-pa-wrapper">
                                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                    <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                     @endif
                                    <div class="product-price"> {{ home_discounted_base_price($product->id) }}</div>
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

                                        <div class="product-price" >{{ home_discounted_base_price($product->id) }}</div>


                                        <div class="product-form">
                                            <div class="product-qty-form">
                                                <div class="input-group">
                                                    <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                                    <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                                    <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                                </div>
                                            </div>

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
                </div>
            </section>
            @endif

    </div>
        <!-- End of Main Content -->
        <aside class="sidebar product-sidebar sidebar-fixed right-sidebar sticky-sidebar-wrapper">
            <div class="sidebar-overlay"></div>
            <a class="sidebar-close" href="#"><i class="close-icon"></i></a>
            <a href="#" class="sidebar-toggle d-flex d-lg-none"><i class="fas fa-chevron-left"></i></a>
            <div class="sidebar-content scrollable">
                <div class="sticky-sidebar">


                    <div class="widget widget-banner mb-9">
                        <div class="form-group mb-5" >
                            <label id="shipping_days">

                            </label>
                            <div class="select-box">
                                <select name="country" id="cities" style="max-width: 100%" class="mb-2 form-control form-control-md">
                                    <option class="form-control" value=""> {{ translate('select city ') }} </option>

                                    @foreach ($Governorate as $city)
                                     <option class="form-control" value="{{ $city->id }}"> {{ $city->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="banner banner-fixed br-sm">
                            <figure>
                                <img src="{{ uploaded_asset($cat->id) }}" alt="Banner" width="266"
                                    style="background-color: #1D2D44; height:220px;" />
                            </figure>
                            <div class="banner-content">
                                <div class="banner-price-info font-weight-bolder text-white lh-1 ls-25">
                                    40<sup class="font-weight-bold">%</sup><sub
                                        class="font-weight-bold text-uppercase ls-25">Off</sub>
                                </div>
                                <h4
                                    class="banner-subtitle text-white font-weight-bolder text-uppercase mb-0">
                                    Ultimate Sale</h4>
                            </div>
                        </div>
                    </div>
                    <!-- End of Widget Banner -->

                    <div class="widget widget-products">
                        <div class="title-link-wrapper mb-2">
                            <h4 class="title title-link font-weight-bold"> {{ translate('Related products')}}</h4>
                        </div>
                        @php
                                $related_products = filter_products(\App\Product::where('category_id', $detailedProduct->category_id)->where('id', '!=', $detailedProduct->id))->limit(3)->get();
                        @endphp
                        <div class="swiper nav-top">
                            <div class="swiper-container swiper-theme nav-top" data-swiper-options = "{
                                'slidesPerView': 1,
                                'spaceBetween': 20,
                                'navigation': {
                                    'prevEl': '.swiper-button-prev',
                                    'nextEl': '.swiper-button-next'
                                }
                            }">
                                <div class="swiper-wrapper">

                                    <div class="widget-col swiper-slide">
                                     @foreach ($related_products as $key => $product)



                                     <div class="product product-widget">
                                        <figure class="product-media">
                                            <a href="{{ route('product', $product->slug) }}">
                                                <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product"
                                                    style="width:100px;hieght:113px" />
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
                                            @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                                <div class="product-price" style="text-decoration: line-through; color:#a6a6a7">{{ home_base_price($product->id) }}</div> -
                                            @endif

                                            <div class="product-price">{{ home_discounted_base_price($product->id) }}</div>
                                        </div>
                                    </div>


                                    @endforeach

                                    </div>



                                </div>
                                <button class="swiper-button-next"></button>
                                <button class="swiper-button-prev"></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        <!-- End of Sidebar -->
    </div>
</div>


    <!-- Root element of PhotoSwipe. Must have class pswp -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

        <!-- Background of PhotoSwipe. It's a separate element as animating opacity is faster than rgba(). -->
        <div class="pswp__bg"></div>

        <!-- Slides wrapper with overflow:hidden. -->
        <div class="pswp__scroll-wrap">

            <!-- Container that holds slides.
			PhotoSwipe keeps only 3 of them in the DOM to save memory.
			Don't modify these 3 pswp__item elements, data is added later on. -->
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
            <div class="pswp__ui pswp__ui--hidden">

                <div class="pswp__top-bar">

                    <!--  Controls are self-explanatory. Order can be changed. -->

                    <div class="pswp__counter"></div>

                    <button class="pswp__button pswp__button--close" aria-label="Close (Esc)"></button>
                    <button class="pswp__button pswp__button--zoom" aria-label="Zoom in/out"></button>

                    <div class="pswp__preloader">
                        <div class="loading-spin"></div>
                    </div>
                </div>

                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div>

                <button class="pswp__button--arrow--left" aria-label="Previous (arrow left)"></button>
                <button class="pswp__button--arrow--right" aria-label="Next (arrow right)"></button>

                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of PhotoSwipe -->


@endsection


@section('script')

    <script type="text/javascript">
        $(document).ready(function() {
            getVariantPrice();
    	});

        function CopyToClipboard(containerid) {
            if (document.selection) {
                var range = document.body.createTextRange();
                range.moveToElementText(document.getElementById(containerid));
                range.select().createTextRange();
                document.execCommand("Copy");

            } else if (window.getSelection) {
                var range = document.createRange();
                document.getElementById(containerid).style.display = "block";
                range.selectNode(document.getElementById(containerid));
                window.getSelection().addRange(range);
                document.execCommand("Copy");
                document.getElementById(containerid).style.display = "none";

            }
            AIZ.plugins.notify('success', 'Copied');
        }

        function show_chat_modal(){
            @if (Auth::check())
                $('#chat_modal').modal('show');
            @else
                $('#login_modal').modal('show');
            @endif
        }

    </script>
    <script>
        $("#cities").change(function(){
            $.ajax({
                url: "{{ route('shippingDay') }}?cities=" + $(this).val(),
                method: 'GET',
                success: function(data) {
                    $('#shipping_days').html(data.html);
                }
            });
        });



        function addToCart(id){
            // if(checkaddToCartValidity()) {
            //     $('#addToCart').modal();
            //     $('.c-preloader').show();
            var formData = new FormData($('#option-choice-form')[0]);

            // var token ="{{ csrf_token() }}";
                $.ajax({
                   type:"POST",
                   url: '{{ route('cart.addToCart') }}',
                //    data: {'_token': token,'id':id},
                   data:formData,
                    processData: false,
                    contentType: false,
                    cache: false,
                   success: function(data){
                       $('#addToCart-modal-body').html(null);
                       $('.c-preloader').hide();
                       $('#modal-size').removeClass('modal-lg');
                       $('.item-cart').append(data.view);
                       $('.cart-count').text(data.count);

                       updateNavCart();
                       $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())+1);
                   }
               });
            // }
            // else{
            //     AIZ.plugins.notify('warning', 'Please choose all the options');
            // }
        }
   </script>




@endsection
