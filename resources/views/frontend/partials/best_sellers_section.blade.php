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
@endphp

@if (!empty($array))
    <section class="mb-4">
        <div class="container-fluid">
            <div class="px-2 py-4 px-md-4 py-md-3 bg-white shadow-sm rounded">
                <div class="d-flex mb-3 align-items-baseline border-bottom">
                    <h3 class="h5 fw-700 mb-0">
                        <span class="border-bottom border-primary border-width-2 pb-3 d-inline-block">{{ translate('Best Sellers')}}</span>
                    </h3>
                    <p class="ml-auto mr-0">{{ translate('Top 20') }}</p> 
                </div>
                <div class="aiz-carousel gutters-10 half-outside-arrow" data-items="6" data-xl-items="5" data-lg-items="4"  data-md-items="3" data-sm-items="2" data-xs-items="2" data-arrows='true' data-infinite='true'>
                    @php
                        $count = 0;
                    @endphp
                    @foreach ($array as $key => $value)
                        @if ($count < 20)
                            @php
                                $count ++;
                                $seller = \App\Seller::find($key);
                                $total = 0;
                                $rating = 0;
                                foreach ($seller->user->products as $key => $seller_product) {
                                    $total += $seller_product->reviews->count();
                                    $rating += $seller_product->reviews->sum('rating');
                                }
                            @endphp
                        <div class="carousel-box">
                            <div class="aiz-card-box border border-light rounded hov-shadow-md my-2 has-transition">
                                <div class="position-relative">
                                    <a href="{{ route('shop.visit', $seller->user->shop->slug) }}" class="d-block">
                                        <img
                                            class="img-fit lazyload mx-auto h-140px h-md-210px"
                                            src="{{ static_asset('assets/img/placeholder.jpg') }}"
                                            data-src="@if ($seller->user->shop->logo !== null) {{ uploaded_asset($seller->user->shop->logo) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif"
                                            alt="{{ $seller->user->shop->name }}"
                                            onerror="this.onerror=null;this.src='{{ static_asset('assets/img/placeholder.jpg') }}';"
                                        >
                                    </a> 
                                    {{-- <div class="absolute-top-right aiz-p-hov-icon">
                                        <a href="javascript:void(0)" onclick="addToWishList({{ $product->id }})" data-toggle="tooltip" data-title="{{ translate('Add to wishlist') }}" data-placement="left">
                                            <i class="la la-heart-o"></i>
                                        </a>
                                        <a href="javascript:void(0)" onclick="addToCompare({{ $product->id }})" data-toggle="tooltip" data-title="{{ translate('Add to compare') }}" data-placement="left">
                                            <i class="las la-sync"></i>
                                        </a>
                                        <a href="javascript:void(0)" onclick="showAddToCartModal({{ $product->id }})" data-toggle="tooltip" data-title="{{ translate('Add to cart') }}" data-placement="left">
                                            <i class="las la-shopping-cart"></i>
                                        </a>
                                    </div> --}}
                                </div>
                                <div class="p-md-3 p-2 text-left">
                                    <div class="fs-15">
                                        {{--  @if(defulat_price($product->id) != home_discounted_base_price($product->id))
                                            <del class="fw-600 opacity-50 mr-1">{{ home_discounted_base_price($product->id) }}</del>
                                        @endif  --}}

                                        <span class="fw-700 text-primary">{{ $seller->user->shop->name }}</span>
                                    </div>
                                    <div class="rating rating-sm mt-1">
                                        @if ($total > 0)
                                        {{ renderStarRating($rating/$total) }}
                                    @else
                                        {{ renderStarRating(0) }}
                                    @endif
                                   </div>
                                    <h3 class="fw-600 fs-13 text-truncate-2 lh-1-4 mb-0 h-35px">
                                        <a href="{{ route('shop.visit', $seller->user->shop->slug) }}" class="d-block text-reset">{{ translate('Visit Store') }}</a>
                                    </h3>
                                    
                                      
                                     <div>
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
                                    {{-- @if ($qty > 0)
                                        <span class="badge badge-md badge-inline badge-pill badge-success">{{ translate('In stock')}}</span>
                                    @else
                                        <span class="badge badge-md badge-inline badge-pill badge-danger">{{ translate('Out of stock')}}</span>
                                    @endif --}}
                                    </div>

                                    @if (\App\Addon::where('unique_identifier', 'club_point')->first() != null && \App\Addon::where('unique_identifier', 'club_point')->first()->activated)
                                        <div class="rounded px-2 mt-2 bg-soft-primary border-soft-primary border">
                                            {{ translate('Club Point') }}:
                                            <span class="fw-700 float-right">{{ $product->earn_point }}</span>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endif
