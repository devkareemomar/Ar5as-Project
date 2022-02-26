@php

$cats = App\Category::where([['published', 1], ['level',0]])->get();
@endphp


<header class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-left">
                <p class="welcome-msg">{{ get_setting('nav_desc') }}</p>
            </div>
            <div class="header-right">

                {{-- <a href="#" class="d-lg-show"> {{ translate('Blog')}}</a>
                <a href="#" class="d-lg-show">{{ translate('Contact Us')}} </a> --}}


                @auth
                @if(isAdmin())
                <a href="{{ route('admin.dashboard') }}" class="d-lg-show"> {{ translate('My Panel')}}</a>
                @else
                <a href="{{ route('dashboard') }}" class="d-lg-show"> {{ translate('My Panel')}}</a>
                @endif

                <a href="{{ route('logout') }}" class="d-lg-show login "><i class="w-icon-account"></i>{{ translate('Logout')}}</a>
                @else
                <a href="{{ route('user.login') }}" class="d-lg-show login "><i class="w-icon-account"></i> {{ translate('Login')}}
                    </a>
                <span class="delimiter d-lg-show">/</span>
                <a href="{{ route('user.registration') }}" class="ml-0 d-lg-show login ">{{ translate('Registration')}} </a>
                @endauth

            </div>
        </div>
    </div>
    <!-- End of Header Top -->

    <div class="header-middle">
        <div class="container">
            <div class="header-left mr-md-4">
                <a href="#" class="mobile-menu-toggle w-icon-hamburger" aria-label="menu-toggle">
                </a>
                <a href="{{ route('home') }}" class="logo ml-lg-0">
                    @php
                    $header_logo = get_setting('header_logo');
                    @endphp
                    @if($header_logo != null)
                    <img src="{{ uploaded_asset($header_logo) }}" alt="{{ env('APP_NAME') }}" width="144" height="45" />

                    @else
                    <img src="{{ static_asset('assets/img/logo.png') }}" alt="{{ env('APP_NAME') }}" width="144"
                        height="45" />

                    @endif
                </a>
                <form action="{{ route('search') }}" method="GET"
                    class="input-wrapper header-search hs-expanded hs-round d-none d-md-flex">
                    <div class="select-box">
                        <select id="" name="category">


                            <option value=""> {{translate('All Categories')}}</option>
                            @foreach ($cats as $cat )
                            <option value="{{  $cat->id }}">{{ $cat->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <input type="text" class="form-control" name="q" id="search" placeholder="{{translate('I am shopping for...')}}" required />
                    <button class="btn btn-search" type="submit"><i class="w-icon-search"></i>
                    </button>
                </form>
            </div>
            <div class="header-right ml-4">
                <div class="header-call d-xs-show d-lg-flex align-items-center">
                    <a href="tel:#" class="w-icon-call"></a>
                    <div class="call-info d-lg-show">
                        <h4 class="chat font-weight-normal font-size-md text-normal ls-normal text-light mb-0">
                            <a href="mailto:{{ get_setting('contact_email')  }}"
                                class="text-capitalize">{{translate('live_chat')}}</a> {{translate('or')}} :
                        </h4>
                        <a href="tel:#" class="phone-number font-weight-bolder ls-50">{{ get_setting('contact_phone')
                            }}</a>
                    </div>
                </div>
                <a class="wishlist label-down link d-xs-show" href="{{ route('wishlists.index') }}">
                    <i class="w-icon-heart"></i>
                    <span class="wishlist-label d-lg-show">{{translate('Wishlist')}}</span>
                </a>
                <a class="compare label-down link d-xs-show" href="{{ route('compare')  }}">
                    <i class="w-icon-compare"></i>

                    <span class="compare-label d-lg-show">{{translate('Compare')}}</span>
                </a>
                <div class="dropdown cart-dropdown cart-offcanvas mr-0 mr-lg-2 ">
                    <div class="cart-overlay"></div>
                    <a href="#" class="cart-toggle label-down link">
                        <i class="w-icon-cart">
                            <span class="cart-count">{{ (!empty(Session::get('cart')))?
                                count(Session::get('cart')->pluck('id')->toArray()) : '' }}</span>
                        </i>
                        <span class="cart-label"> {{translate('Cart')}}</span>
                    </a>
                    <div class="dropdown-box">
                        <div class="cart-header">
                            <span>{{ translate('Shopping Cart') }}</span>
                            <a href="#" class="btn-close">{{ translate('Close') }}<i class="w-icon-long-arrow-right"></i></a>
                        </div>

                        <div id="cart-summary22">


                            <div class="products item-cart" style="max-height: 100%;">
                                @php
                                $total = 0;
                                @endphp
                                @if(!empty(Session::get('cart')))

                                @foreach (Session::get('cart') as $key => $cartItem)
                                @php
                                $product = \App\Product::find($cartItem['id']);
                                $total +=  ($cartItem['price']+ $cartItem['tax']) * $cartItem['quantity'];
                                $product_name_with_choice = $product->getTranslation('name');
                                if ($cartItem['variant'] != null) {
                                $product_name_with_choice = $product->getTranslation('name').' - '.$cartItem['variant'];
                                }
                                @endphp
                                <div class="product product-cart">
                                    <div class="product-detail">
                                        <a href="{{ route('product', $product->slug) }}" class="product-name">{{
                                            $product->getTranslation('name') }}</a>
                                        <div class="price-box">
                                            <span class="product-quantity">1</span>
                                            <span class="product-price">{{ single_price($cartItem['price']+ $cartItem['tax']) }}</span>
                                        </div>
                                    </div>
                                    <figure class="product-media">
                                        <a href="{{ route('product', $product->slug) }}">
                                            <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="product"
                                                height="84" width="94" />
                                        </a>
                                    </figure>
                                    <button class="btn btn-link btn-close" onclick="removeFromCart({{ $key }})"
                                        aria-label="button">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                                @endforeach
                                @endif


                            </div>

                            <div class="cart-total">
                                <label>{{ translate('Subtotal') }}:</label>
                                <span class="price">{{ $total }}</span>
                            </div>
                        </div>

                        <div class="cart-action">
                            <a href="{{ route('cart') }}" class="btn btn-dark btn-outline btn-rounded">{{ translate('View Cart') }}</a>
                            <a href="{{ route('checkout.shipping_info') }}"
                                class="btn btn-primary  btn-rounded"> {{ translate('Checkout') }}</a>
                        </div>
                    </div>
                    <!-- End of Dropdown Box -->
                </div>
            </div>
        </div>
    </div>
    <!-- End of Header Middle -->

    <div class="header-bottom sticky-content fix-top sticky-header has-dropdown">
        <div class="container">
            <div class="inner-wrap">
                <div class="header-left">
                    <div class="dropdown category-dropdown {{ (Route::current()->getName()== 'home') ? 'show-dropdown' : ''}}" data-visible="true">
                        <a href="#" class="category-toggle text-white" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="true" data-display="static" title="Browse Categories">
                            <i class="w-icon-category"></i>
                            <span>  {{ translate('Browse Categories') }}</span>
                        </a>

                        <div class="dropdown-box mt-0">
                            <ul class="menu vertical-menu category-menu bg-white text-default">
                                @foreach ($cats as $cat )

                                <li>
                                    <a href="{{ route('products.category', $cat->slug) }}">
                                        <i class="w-icon-tshirt2"></i>{{ $cat->name }} &#9662;
                                    </a>
                                    @php
                                    $catslevel1 = App\Category::where([['published', 1], ['level',1],['parent_id',
                                    $cat->id]])->get();
                                    @endphp
                                    <ul class="megamenu">

                                        <li>

                                            <ul>
                                                @foreach ($catslevel1 as $level1 )

                                                <li><a href="{{ route('products.category', $level1->slug) }}">{{
                                                        $level1->name }}</a>
                                                </li>
                                                @endforeach


                                            </ul>
                                        </li>

                                        <li>
                                            <div class="banner-fixed menu-banner menu-banner2">
                                                <figure>
                                                    <a href="{{ route('products.category', $cat->slug) }}" class="pt-0">

                                                    <img src="{{ uploaded_asset($cat->banner) }}"
                                                        alt="{{translate('Banner')}}" width="235" height="347" />
                                                    </a>

                                                    </figure>
                                                <div class="banner-content">
                                                    {{-- <div class="banner-price-info mb-1 ls-normal">Get up to
                                                        <strong class="text-primary text-uppercase">20%Off</strong>
                                                    </div>
                                                    <h3 class="banner-title ls-normal">Hot Sales</h3> --}}
                                                    <a href="{{ route('products.category', $cat->slug) }}"
                                                        class="btn btn-dark btn-sm btn-link btn-slide-right btn-icon-right">
                                                        {{ translate('Shop Now') }}<i class="w-icon-long-arrow-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                @endforeach

                                <li>
                                    <a href="{{ route('categories.all') }}">
                                        <i class="w-icon-gift"></i> {{ translate('كل الاقسام')}}
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('brands.all') }}">
                                        <i class="w-icon-check"></i> {{ translate('الماركات')}}
                                    </a>
                                </li>

                                <li>
                                    <a href="{{ route('home.All_sellers') }}">
                                        <i class="w-icon-vendor-store"></i> {{ translate('All vendors')}}
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>

                    <nav class="main-nav ml-4">
                        <ul class="menu">


                        </ul>
                    </nav>

                </div>
                @php
                $flash_deal = \App\FlashDeal::where('status', 1)->where('featured', 1)->first();
                @endphp
                <div class="header-right">
                    <a href="{{ route('orders.track') }}" class="d-xl-show"><i class="w-icon-map-marker mr-1"></i>{{ translate('Track Order') }}</a>
                    <a href="{{ route('flash-deal-details',$flash_deal->slug) }}"><i class="w-icon-sale"></i>{{ translate('Daily Deals') }}</a>
                </div>
            </div>
        </div>
    </div>
</header>
