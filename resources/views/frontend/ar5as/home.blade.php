@extends('frontend.ar5as.layout.app')

@section('content')
@php
 $slider_images = json_decode(get_setting('home_slider_images'), true);
$cats = App\Category::where([['published', 1], ['level',0]])->get();
@endphp
<section class="intro-section">
    <div class="intro-slider swiper-container swiper-theme animation-slider" data-swiper-options="{
        'slidesPerView': 1,
        'autoplay': {
            'delay': 8000,
            'disableOnInteraction': false
        }
    }">
        <div class="swiper-wrapper row cols-1 gutter-no">
            @foreach ($slider_images as $key => $value)

            <div class="swiper-slide banner banner-fixed intro-slide intro-slide3" style="background-image: url({{ uploaded_asset($slider_images[$key]) }}); background-color: #EEEDEB;">
                <div class="container">

                    <div class="banner-content text-bunner y-50">
                        <p class="font-weight-normal text-default text-uppercase mb-0 slide-animate" data-animation-options="{
                            'name': 'fadeInLeftShorter',
                            'duration': '1s',
                            'delay': '.6s'
                        }">
                            {{ translate('Top weekly Seller') }}
                        </p>
                        <h5 class="banner-subtitle font-weight-normal text-default ls-25 slide-animate" data-animation-options="{
                            'name': 'fadeInLeftShorter',
                            'duration': '1s',
                            'delay': '.4s'
                        }">
                            {{ translate('Trending Collection') }}
                        </h5>
                        <h3 class="banner-title p-relative font-weight-bolder ls-50 slide-animate" data-animation-options="{
                            'name': 'fadeInLeftShorter',
                            'duration': '1s',
                            'delay': '.2s'
                        }">{{ translate('skate-') }}<span class="text-white mr-5">{{ translate('Roller') }}</span>
                        </h3>

                        <a href="{{ json_decode(get_setting('home_slider_links'), true)[$key] }}"
                        data-animation-options="{
                            'name': 'fadeInLeftShorter',
                            'duration': '1s',
                            'delay': '.8s'
                        }"

                        class="btn btn-dark btn-outline btn-rounded btn-icon-right slide-animate">
                            {{ translate('Shop Now') }}<i class="w-icon-long-arrow-right"></i></a>

                        <!-- End of .banner-content -->
                    </div>
                </div>
            </div>
            @endforeach

        </div>
        <div class="custom-dots swiper-img-dots appear-animate">
            @foreach ($slider_images as $key => $value)

            <a href="#" class="{{($key == 0)? 'active' : ''}} appear-animate">
                <img src="{{ uploaded_asset($slider_images[$key]) }}" alt="{{ env('APP_NAME')}} promo" width="70" height="70">
            </a>
            @endforeach

        </div>
    </div>
</section>

<div class="container">


    @if (get_setting('home_banner1_images') != null)

    <div class="category-banner-3cols swiper-container swiper-theme pt-2 mt-4 mb-10 appear-animate" data-swiper-options="{
        'spaceBetween': 20,
        'slidesPerView': 1,
        'breakpoints': {
            '576': {
                'slidesPerView': 2
            },
            '992': {
                'slidesPerView': 3
            }
        }
    }">
        <div class="swiper-wrapper row cols-lg-3 cols-sm-2 cols-1">
            @php $banner_1_imags = json_decode(get_setting('home_banner1_images')); @endphp
            @foreach ($banner_1_imags as $key => $value)
            <div class="swiper-slide banner banner-fixed br-xs">
                <figure>
                    <img src="{{ uploaded_asset($banner_1_imags[$key]) }}" style="height: 210px;" alt=" Banner" width="440" height="210" style="background-color: #E3DFDE;" />
                </figure>
                <div class="banner-content text-center x-50 y-50 w-100">
                    <a href="{{ json_decode(get_setting('home_banner1_links'), true)[$key] }}" class="btn btn-white btn-outline btn-rounded btn-sm"> {{ translate('Shop Now') }}</a>
                </div>

            </div>
            @endforeach

            <!-- End of Categpry Banner -->
        </div>
        <div class="swiper-pagination"></div>
    </div>
    @endif

    <!-- End of Category Banner 3Cols -->
    @php
    $flash_deal = \App\FlashDeal::where('status', 1)->where('featured', 1)->first();
    @endphp
    @if($flash_deal != null && strtotime(date('Y-m-d H:i:s')) >= $flash_deal->start_date && strtotime(date('Y-m-d H:i:s')) <= $flash_deal->end_date)

    <div class="title-link-wrapper title-deals appear-animate">
        <h2 class="title"> {{ translate('Deals Hot Of The Day') }}</h2>
        <a href="{{ route('flash-deal-details', $flash_deal->slug) }}" class="font-weight-bold ls-25">More Products<i
                class="w-icon-long-arrow-right"></i></a>
    </div>
    <div class="row appear-animate">
        @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
            @php
                $product = \App\Product::find($flash_deal_product->product_id);
            @endphp
            @if ($product != null && $product->published != 0 && $product->admin_approval == 1 && $key <=1)

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
                <div class="col-lg-6 mb-4">
                    <div class="product product-list br-xs mb-0">
                        <figure class="product-media">
                            <a href="{{ route('product', $product->slug) }}">
                                <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product" width="315" style="height:315px">
                            </a>
                            <div class=" product-action-vertical product-cart-v">
                                <a href="#" class="btn-product-icon btn-quickview w-icon-search" id="{{ $product->id}}" title="Quick View"></a>
                            </div>
                            <div class="product-countdown-container">
                                <div class="product-countdown countdown-compact" data-until="2021, 9, 9" data-format="DHMS" data-compact="false" data-labels-short="Days, Hours, Mins, Secs">
                                    00:00:00:00</div>
                            </div>
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
                                <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                @endif
                                    {{ home_discounted_base_price($product->id) }}
                                </div>
                            <ul class="product-desc">
                                @foreach (explode("</p>",$product->description ) as $key =>  $item)
                                @if ($key <= 2)
                                <li>{!! $item !!}</li>
                                @endif
                                @endforeach

                            </ul>
                            <div class="product-action product-cart-v">



                                        @if($qty > 0)
                                        <a href="javascript:void(0)" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})" class="btn-product btn-cart" title="Add to Cart"><i
                                            class="w-icon-cart"></i> {{ translate('Add to cart')}}</a>
                                        @else

                                           <a href="javascript:void(0)"
                                           style="background-color: #eee;
                                        border-color: #eee;
                                        color: #666;
                                        cursor: not-allowed;"
                                           class="btn-product " title="{{ translate('Out of Stock')}}"><i
                                            class="w-icon-cart"></i>{{ translate('Out of Stock')}}</a>
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

                                <div class="product-price">
                                    @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                    <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                    @endif
                                        {{ home_discounted_base_price($product->id) }}
                                    </div>

                                <div class="product-form product-cart" >
                                    <div class="product-qty-form ">
                                        <div class="input-group">
                                            <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                            <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                            <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                        </div>
                                    </div>

                                    @if($qty > 0)
                                    <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                        <i class="w-icon-cart"></i>
                                        <span>{{ translate('Add to cart')}}</span>
                                    </a>
                                    @else

                                    <button class=" btn btn-primary disabled" style="background-color: #eee;
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
            @endif
            @endforeach
    </div>
    @endif

    <!-- End of Product List -->

    <div class="row cols-xl-4 cols-lg-3 cols-sm-2 cols-1 mb-10 appear-animate">
        @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
        @php
            $product = \App\Product::find($flash_deal_product->product_id);
        @endphp
        @if ($product != null && $product->published != 0 && $product->admin_approval == 1 && $key >=4 && $key <= 12)
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
        <div class="product-widget-wrap">
            <div class="product product-widget">
                <figure class="product-media">
                    <a href="{{ route('product', $product->slug) }}">
                        <img src="{{ uploaded_asset($product->thumbnail_img) }}" style="height: 140px" alt="Product" width="100" height="106">
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
                        <ins class="new-price"> {{ home_discounted_base_price($product->id) }}
                        </ins>
                    </div>
                </div>
            </div>
        </div>
        @endif
        @endforeach
        <!-- End of Product Widget -->
    </div>
    <!-- End of Product Widget -->

    <div class="notification-wrapper bg-dark br-sm mb-10 appear-animate justify-content-center" style="animation-duration: 1.2s;">
        <i class="w-icon-mobile"></i>
        <p>{{ translate('Download our new app today! Dont Miss our mobile-only offers and shop with Android Play.') }}
            </p>
        <a href="#" class="btn btn-white btn-outline btn-rounded btn-sm btn-icon-right font-weight-normal text-capitalize">
            {{ translate('Download') }}<i class="w-icon-long-arrow-down"></i></a>
    </div>
    <!-- End of Notificateion Wrapper -->

    @php
    $array = array();
    foreach (\App\Seller::where('verification_status', 1)->get() as $key => $seller) {
        if($seller->user != null && $seller->user->shop != null){
            $total_sale = 0;
            foreach ($seller->user->products as $key => $product) {
                $total_sale += $product->num_of_sale;
            }
            $array[$seller->id] = $total_sale;
        }
    }
    asort($array);
    // dd($array);

    @endphp

    @if (!empty($array))
    <div class="title-link-wrapper mb-4 appear-animate">
        <h2 class="title">{{ translate('Top Weekly Vendors') }}</h2>
        <a href="{{ route('home.All_sellers') }}" class="text-capitalize font-weight-bold">{{ translate('All Sellers') }}<i
                class="w-icon-long-arrow-right"></i></a>
    </div>
        <div class="swiper-container swiper-theme shadow-swiper vendor-wrapper appear-animate" data-swiper-options="{
            'spaceBetween': 20,
            'slidesPerView': 1,
            'breakpoints': {
                '576': {
                    'slidesPerView': 2
                },
                '768': {
                    'slidesPerView': 3
                },
                '992': {
                    'slidesPerView': 4
                }
            }
        }">
            <div class="swiper-wrapper row cols-xl-4 cols-md-3 cols-sm-2 cols-1">
                @php
                $count = 0;
            @endphp
            @foreach ($array as $key => $value)
                @if ($count < 20)
                @php
                $count ++;
                $seller = \App\Seller::find($key);
                @endphp
                <div class="swiper-slide vendor-widget mb-0 " >
                    <div class="vendor-widget-banner border-no">
                        <figure class="vendor-banner">
                            <a href="{{ route('shop.visit', $seller->user->shop->slug) }}">
                                <img style="
                                width: 325px;
                                height: 165px;" src="@if ($seller->user->shop->sliders !== null) {{ uploaded_asset($seller->user->shop->sliders) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Vendor Banner" width="325" height="165" style="background-color: #EFF0F2;" />
                            </a>
                        </figure>
                        <div class="vendor-details">
                            <figure class="vendor-logo">
                                <a href="{{ route('shop.visit', $seller->user->shop->slug) }}">
                                    <img style="
                                    width: 90px;
                                    height: 90px;"
                                        src="@if ($seller->user->shop->logo !== null) {{ uploaded_asset($seller->user->shop->logo) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Vendor Logo" width="90" height="90" />
                                </a>
                            </figure>
                            <div class="vendor-personal">
                                <h4 class="vendor-name">
                                    <a href="{{ route('shop.visit',$seller->user->shop->slug) }}">{{ $seller->user->shop->name }}</a>
                                </h4>

                                @php
                                        $count ++;
                                        $seller = \App\Seller::find($key);
                                        $total = 0;
                                        $rating = 0;
                                        $reviews = 0;

                                        foreach ($seller->user->products as $key => $seller_product) {
                                            $total += $seller_product->reviews->count();
                                            $rating += $seller_product->reviews->sum('rating');
                                        }
                                    if($rating > 0 ){

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
                            <div class="vendor-products row cols-3 gutter-xs">
                            @php
                                $shop  = \App\Shop::where('slug', $seller->user->shop->slug)->first();
                            @endphp
                            @if (!empty($shop->user->products))

                            @foreach ($shop->user->products->where('admin_approval', 1)->where('published', 1)->take(3) as $key => $product)

                                <div class="vendor-product">
                                    <figure class="product-media">
                                        <a href="{{ route('product', $product->slug) }}">
                                            <img style="width:92px;height:102px" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Vendor Product" width="91" height="102" />
                                        </a>
                                    </figure>
                                </div>
                                @endforeach
                            @endif

                            </div>
                        </div>
                    </div>
                    <!-- End of Vendor Widget Banner -->
                </div>
                @endif
                @endforeach
            </div>
            <div class="swiper-pagination"></div>
        </div>
    @endif

<!-- End of Vendor -->

@if (get_setting('top10_categories') != null)

    <div class="title-link-wrapper mb-4 appear-animate">
        <h2 class="title">{{ translate('Top Categories') }}</h2>
        <a href="{{ route('categories.all') }}" class="text-capitalize font-weight-bold">{{ translate('More Products') }}<i
                class="w-icon-long-arrow-right"></i></a>
    </div>
    <div class="row mb-7 category-products-wrapper appear-animate">
        <div class="col-xl-3 col-lg-4 col-md-5">
            <ul class="category-wrapper list-style-none">
                @php $top10_categories = json_decode(get_setting('top10_categories')); @endphp
                @foreach ($top10_categories as $key => $value)
                    @php $cat = \App\Category::find($value); @endphp
                    @if ($cat != null)
                 <li><a href="{{ route('products.category', $cat->slug) }}"><i class="w-icon-tshirt"></i>{{ $cat->name }} </a></li>
                @endif
                @endforeach

            </ul>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
            <div class="swiper-container swiper-theme " data-swiper-options="{
                'spaceBetween': 20,
                'slidesPerView': 2,
                'breakpoints': {
                    '768': {
                        'slidesPerView': 2
                    },
                    '992': {
                        'slidesPerView': 3
                    },
                    '1200': {
                        'slidesPerView': 4
                    },
                    '1400': {
                        'slidesPerView': 5
                    }
                }
            }">
                <div class="swiper-wrapper row cols-xl-5 cols-lg-4 cols-md-3 cols-2">
                    @php
                       $products =  filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ])->where('featured', '1'))->limit(8)->get();
                    @endphp
                        {{-- @for ($x = 1; $x <= 2; $x++) --}}

                    <div class="swiper-slide product-col row w-100">

                        @foreach ( $products as $key => $product)
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
                        <div class="product product-slideup-content col-3">
                            <figure class="product-media">
                                <a href="{{ route('product', $product->slug) }}">
                                    <img style="width:100%; height:210px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product" width="187" height="210">
                                </a>
                                <div class=" product-action-vertical product-cart-v">
                                    <a href="#" class="btn-product-icon btn-quickview w-icon-search" id="{{ $product->id }}" title="Quick View"></a>
                                </div>
                            </figure>
                            <div class="product-details">
                                <h3 class="product-name">
                                    <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                                </h3>
                                <div class="product-price">
                                    <ins class="new-price">{{ home_discounted_base_price($product->id) }}</ins>
                                </div>
                            </div>
                            <div class="product-hidden-details">
                                <div class="product-action product-cart-v">


                                    @if($qty > 0)
                                    <a href="javascript:void(0)" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})" class="btn-product btn-cart" title="Add to Cart"><i
                                        class="w-icon-cart"></i> {{ translate('Add to cart')}}</a>
                                    @else

                                       <a href="javascript:void(0)"
                                       style="background-color: #eee;
                                    border-color: #eee;
                                    color: #666;
                                    cursor: not-allowed;"
                                       class="btn-product " title="{{ translate('Out of Stock')}}"><i
                                        class="w-icon-cart"></i>{{ translate('Out of Stock')}}</a>
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
                                </div>
                            </div>
                        </div>

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
                                            {{-- <a href="#" class="product-variation-clean">Clean All</a> --}}
                                        </div>

                                        @endforeach
                                        @endif
                                        @endif

                                        <div class="product-price" id="chosen_price">{{ home_discounted_base_price($product->id) }}</div>


                                        <div class="product-form product-cart">
                                            <div class="product-qty-form">
                                                <div class="input-group">
                                                    <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                                    <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                                    <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                                </div>
                                            </div>


                                            @if($qty > 0)
                                            <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                                <i class="w-icon-cart"></i>
                                                <span>{{ translate('Add to cart')}}</span>
                                            </a>
                                            @else

                                            <button class=" btn btn-primary  disabled" style="background-color: #eee;
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
                    @endforeach



                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
@endif
    <!-- End of Category Products -->
    @if (get_setting('home_banner2_images') != null)

    <div class="row category-banner-2cols appear-animate">
        @php $banner_2_imags = json_decode(get_setting('home_banner2_images')); @endphp
        @foreach ($banner_2_imags as $key => $value)
            <div class="col-md-6 mb-4">
                <div class="banner banner-fixed br-xs">
                    <figure>
                        <img src="{{ uploaded_asset($banner_2_imags[$key]) }}" style="height:180px" alt=" Banner" width="670" height="180" style="background-color: #e6e7eb;" />
                    </figure>
                    <div class="banner-content y-50">
                        {{-- <h5 class="banner-subtitle text-primary text-capitalize font-weight-normal">From Online Store</h5>
                        <h3 class="banner-title text-capitalize ls-25">Ipad Super Computer</h3> --}}
                        <a href="{{ json_decode(get_setting('home_banner2_links'), true)[$key] }}" class="btn btn-dark btn-link btn-underline btn-icon-right">
                            {{ translate('Discover Now') }}<i class="w-icon-long-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <!-- End of Banner -->
            </div>
        @endforeach

    </div>
    @endif

    <!-- End of Category Banner 2Cosl -->
    @foreach(App\Category::where([['published', 1], ['level',0]])->get() as $key => $cat)
            @php

            $category_ids = \App\Utility\CategoryUtility::children_ids($cat->id);
            $category_ids[] = $cat->id;

        $products =  filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ]));
        $products = $products->whereIn('category_id', $category_ids)->limit(8)->get();

        @endphp
    @if ($products->count() > 0)

    <div class="title-links-wrapper title-underline mb-4 d-flex align-items-center appear-animate mt-10">
        <h2 class="title">{{ $cat->getTranslation('name') }}</h2>
        <ul class="nav-links list-style-none d-flex align-items-center flex-wrap justify-content-center">
            @php
            $catslevel1 = App\Category::where([['published', 1], ['level',1],['parent_id',$cat->id]])->limit(6)->get();
            @endphp
            @foreach ($catslevel1 as $level1 )

            <li><a href="{{ route('products.category', $level1->slug) }}">{{$level1->name }} </a></li>
            @endforeach

        </ul>
    </div>
    <div class="row banner-product-wrapper appear-animate">
        <div class="col-xl-3 col-lg-4 col-md-5 mb-4 mb-md-0">
            <div class="banner banner-fixed br-xs" style="background-image: url('{{ uploaded_asset($cat->banner) }}');
                background-color: #363634;">
                <div class="banner-content">
                    <h5 class="banner-subtitle text-white text-uppercase ls-25 font-weight-bold">{{ $cat->meta_title }}
                    </h5>
                    <h3 class="banner-title text-white text-capitalize ls-25">{{ $cat->meta_description }}
                    </h3>
                    {{-- <div class="banner-price-info text-white font-weight-bold ls25">Sale up to <span class="text-primary text-uppercase">20% Off</span></div> --}}
                    <a href="{{ route('products.category', $cat->slug) }}" class="btn btn-white btn-outline btn-rounded">{{ translate('Shop Now') }}</a>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
            <div class="swiper-container swiper-theme" data-swiper-options="{
                'spaceBetween': 20,
                'slidesPerView': 2,
                'breakpoints': {
                    '768': {
                        'slidesPerView': 2
                    },
                    '992': {
                        'slidesPerView': 3
                    },
                    '1200': {
                        'slidesPerView': 4
                    }
                }
            }">
                <div class="swiper-wrapper row cols-xl-4 cols-lg-3 cols-md-2 cols-2">

                     {{-- @for ($x = 1; $x <= 2; $x++) --}}

                 <div class="swiper-slide product-col row w-100">

                     @foreach ( $products as $key => $product)
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
                     <div class="product product-slideup-content col-3">
                         <figure class="product-media">
                             <a href="{{ route('product', $product->slug) }}">
                                 <img style="width:100%; height:210px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="Product" width="187" height="210">
                             </a>
                             <div class=" product-action-vertical product-cart-v">
                                 <a href="#" class="btn-product-icon btn-quickview w-icon-search" id="{{ $product->id }}" title="Quick View"></a>
                             </div>
                         </figure>
                         <div class="product-details">
                             <h3 class="product-name">
                                 <a href="{{ route('product', $product->slug) }}">{{  $product->getTranslation('name')  }}</a>
                             </h3>
                             <div class="product-price">
                                 <ins class="new-price">{{ home_discounted_base_price($product->id) }}</ins>
                             </div>
                         </div>
                         <div class="product-hidden-details">
                             <div class="product-action product-cart-v">


                                 @if($qty > 0)
                                 <a href="javascript:void(0)" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})" class="btn-product btn-cart" title="Add to Cart"><i
                                     class="w-icon-cart"></i> {{ translate('Add to cart')}}</a>
                                 @else

                                    <a href="javascript:void(0)"
                                    style="background-color: #eee;
                                 border-color: #eee;
                                 color: #666;
                                 cursor: not-allowed;"
                                    class="btn-product " title="{{ translate('Out of Stock')}}"><i
                                     class="w-icon-cart"></i>{{ translate('Out of Stock')}}</a>
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
                             </div>
                         </div>
                     </div>

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

                                     <div class="product-price">
                                        @if(home_base_price($product->id) != home_discounted_base_price($product->id))
                                        <span style="text-decoration: line-through; color:#a6a6a7"> {{ home_base_price($product->id) }}  </span> -
                                        @endif
                                            {{ home_discounted_base_price($product->id) }}
                                        </div>

                                     <div class="product-form product-cart">
                                         <div class="product-qty-form">
                                             <div class="input-group">
                                                 <input class="quantity form-control input-number" type="number" name="quantity" min="1" max="10000000">
                                                 <button class="quantity-plus w-icon-plus btn-number" data-type="plus" data-field="quantity"></button>
                                                 <button class="quantity-minus w-icon-minus btn-number" data-type="minus" data-field="quantity"></button>
                                             </div>
                                         </div>


                                         @if($qty > 0)
                                         <a class="btn btn-primary btn-cart" cartLink="{{ route('cart') }}" checkoutLink="{{ route('checkout.shipping_info') }}" onclick="addToCart({{ $product->id }})">
                                             <i class="w-icon-cart"></i>
                                             <span>{{ translate('Add to cart')}}</span>
                                         </a>
                                         @else

                                         <button class=" btn btn-primary  disabled" style="background-color: #eee;
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
                 @endforeach

                    <!-- End of Product Col -->
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
    @endif

    @endforeach


    <div class="row mb-4 appear-animate mt-10">
        @if (\App\BusinessSetting::where('type', 'best_selling')->first()->value == 1)

        <div class="col-lg-3 col-sm-6 mb-6">
            <h4 class="title title-underline mb-2 pt-1">{{ translate('Best Selling') }}</h4>
            <div class="widget widget-products">
            @foreach (filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ])->orderBy('num_of_sale', 'desc'))->limit(3)->get() as $key => $product)

                <div class="product product-widget">
                    <figure class="product-media">
                        <a href="{{ route('product', $product->slug) }}">
                            <img style="height:140px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" width="124" height="140">
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
                            <ins class="new-price">
                                {{ home_discounted_base_price($product->id) }}
                            </ins>
                        </div>
                    </div>
                </div>
            @endforeach

                <!-- End of Product Widget -->
            </div>
            <!-- End of Widget Products -->
        </div>
        @endif
        <!-- End of Col -->
        @php
        $flash_deal = \App\FlashDeal::where('status', 1)->where('featured', 1)->first();
        @endphp
        @if($flash_deal != null && strtotime(date('Y-m-d H:i:s')) >= $flash_deal->start_date && strtotime(date('Y-m-d H:i:s')) <= $flash_deal->end_date)


        <div class="col-lg-3 col-sm-6 mb-6">
            <h4 class="title title-underline mb-2 pt-1">{{ translate('Flash Sale') }}</h4>
            <div class="widget widget-products">
                @foreach ($flash_deal->flash_deal_products as $key => $flash_deal_product)
                @php
                    $product = \App\Product::find($flash_deal_product->product_id);
                @endphp
                @if ($product != null && $product->published != 0 && $product->admin_approval == 1 && $key <=2)

                <div class="product product-widget">
                    <figure class="product-media">
                        <a href="{{ route('product', $product->slug) }}">
                            <img style="height:140px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" width="124" height="140">
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
                            <ins class="new-price">
                                {{ home_discounted_base_price($product->id) }}
                            </ins>
                        </div>
                    </div>
                </div>
            @endif

            @endforeach

                <!-- End of Product Widget -->
            </div>
            <!-- End of Widget Products -->
        </div>
        @endif
        <!-- End of Col -->

        <div class="col-lg-3 col-sm-6 mb-6">
            <h4 class="title title-underline mb-2 pt-1">{{ translate('Featured Products') }}</h4>
            <div class="widget widget-products">
                @foreach (filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ])->where('featured', '1'))->limit(3)->get() as $key => $product)

                <div class="product product-widget">
                    <figure class="product-media">
                        <a href="{{ route('product', $product->slug) }}">
                            <img style="height:140px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" width="124" height="140">
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
                            <ins class="new-price">
                                {{ home_discounted_base_price($product->id) }}
                            </ins>
                        </div>
                    </div>
                </div>
            @endforeach

                <!-- End of Product Widget -->
            </div>
            <!-- End of Widget Products -->
        </div>
        <!-- End of Col -->

        <div class="col-lg-3 col-sm-6 mb-6">
            <h4 class="title title-underline mb-2 pt-1">{{ translate('Latest Products') }}</h4>
            <div class="widget widget-products">
                @foreach (filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ]))->limit(3)->orderBy('id', 'DESC')->get() as $key => $product)

                <div class="product product-widget">
                    <figure class="product-media">
                        <a href="{{ route('product', $product->slug) }}">
                            <img style="height:140px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" width="124" height="140">
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
                            <ins class="new-price">
                                {{ home_discounted_base_price($product->id) }}
                            </ins>
                        </div>
                    </div>
                </div>
            @endforeach

                <!-- End of Product Widget -->
            </div>
            <!-- End of Widget Products -->
        </div>
        <!-- End of Col -->

        <div class="col-lg-3 col-sm-6 mb-6">
            <h4 class="title title-underline mb-2 pt-1">{{ translate('Featured Products') }}</h4>
            <div class="widget widget-products">
                @foreach (filter_products(\App\Product::where([['admin_approval', 1] ,['published', 1] ])->where('featured', '1'))->limit(3)->get() as $key => $product)

                <div class="product product-widget">
                    <figure class="product-media">
                        <a href="{{ route('product', $product->slug) }}">
                            <img style="height:140px;" src="{{ uploaded_asset($product->thumbnail_img) }}" alt="{{  $product->getTranslation('name')  }}" width="124" height="140">
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
                            <ins class="new-price">
                                {{ home_discounted_base_price($product->id) }}
                            </ins>
                        </div>
                    </div>
                </div>
            @endforeach

                <!-- End of Product Widget -->
            </div>
            <!-- End of Widget Products -->
        </div>
        <!-- End of Col -->
    </div>
    <!-- End of Row -->
    @php $brands = \App\Brand::get(); @endphp
    @if($brands  != null)
    <div class="swiper-container swiper-theme brands-wrapper br-sm mb-10 appear-animate" data-swiper-options="{
        'loop': true,
        'spaceBetween': 20,
        'slidesPerView': 2,
        'autoplay': {
            'delay': 4000,
            'disableOnInteraction': false
        },
        'breakpoints': {
            '576': {
                'slidesPerView': 3
            },
            '768': {
                'slidesPerView': 4
            },
            '992': {
                'slidesPerView': 6
            },
            '1200': {
                'slidesPerView': 8
            }
        }
    }">
        <div class="swiper-wrapper row cols-xl-8 cols-lg-6 cols-md-4 cols-sm-3 cols-2">



            @foreach ($brands as $key => $brand)

            <div class="swiper-slide">
                <figure>
                    <img style="width: 153px;height:53px" src="{{ uploaded_asset($brand->logo) }}" alt="{{ $brand->getTranslation('name') }}" width="290" height="100" />
                </figure>
            </div>
            @endforeach


        </div>
    </div>
    @endif


</div>
<!-- End of Container -->

@endsection
