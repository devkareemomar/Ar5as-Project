@extends('frontend.ar5as.layout.app')

@section('content')
@section('main-nav')

<nav class="breadcrumb-nav">
    <div class="container">
        <ul class="breadcrumb bb-no">
            <li><a href="{{route('home')}}">{{ translate('Home') }}</a></li>
            <li><a href="{{route('home.All_sellers')}}">{{ translate('Vendor') }}</a></li>

        </ul>
    </div>
</nav>
@endsection
{{-- @php
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
@endphp --}}

<!-- Start of Pgae Contetn -->
<div class="page-content mb-8">
    <div class="container">
        @if ($Sellers->count() > 0 )

                    <!-- Start of Vendor Toolbox -->
                    <div class="toolbox vendor-toolbox pb-0">
                        <div class="toolbox-left mb-4 mb-md-0">
                            <a href="#" class="btn btn-primary btn-outline btn-rounded btn-icon-left vendor-search-toggle "><i class="w-icon-category"></i>Filter</a>

                        </div>

                    </div>
                    <!-- End of Vendor Toolbox -->
                    <div class="vendor-search-wrapper">
                        <form class="vendor-search-form" method="post" action="{{ route('search.seller') }}">
                            @csrf
                            <input type="text" class="form-control mr-4 bg-white" name="seller" id="vendor"
                                placeholder="Search Vendors" />
                            <button class="btn btn-primary btn-rounded" type="submit">{{ translate('Apply') }}</button>
                        </form>
                        <!-- End of Vendor Search Form -->
                    </div>


                    <div class="row cols-lg-3 cols-md-2 cols-sm-2 cols-1 mt-4">

                        @foreach($Sellers as $key => $vendor)

                        <div class="store-wrap mb-4">
                            <div class="store store-grid">
                                <div class="store-header">
                                    <figure class="store-banner">
                                        <img src="@if ($vendor->user->shop->sliders !== null) {{ uploaded_asset($vendor->user->shop->sliders) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Vendor"
                                            width="400" height="194" style="background-color: #40475E;height: 194px;" />
                                    </figure>
                                </div>
                                <!-- End of Store Header -->
                                <div class="store-content">
                                    <h4 class="store-title">
                                        <a href="{{ route('shop.visit', $vendor->user->shop->slug) }}">{{ $vendor->user->shop->name }}</a>
                                    </h4>
                                    @php
                                        $total = 0;
                                        $rating = 0;
                                        $total_sale = 0;
                                        $reviews = 0;
                                        foreach ($vendor->user->products as $key => $seller_product) {
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
                                    </div>
                                    <div class="store-address">
                                        {{ $vendor->user->shop->address }}
                                    </div>
                                    <ul class="seller-info-list list-style-none">
                                        <li class="store-phone">
                                            <a href="tel:{{ $vendor->user->phone }}"><i class="w-icon-phone"></i>{{ $vendor->user->phone }}</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- End of Store Content -->
                                <div class="store-footer">
                                    <figure class="seller-brand">
                                        <img src="@if ($vendor->user->shop->logo !== null) {{ uploaded_asset($vendor->user->shop->logo) }} @else {{ static_asset('assets/img/placeholder.jpg') }} @endif" alt="Brand" width="80" height="80" />
                                    </figure>
                                    <a href="{{ route('shop.visit', $vendor->user->shop->slug) }}" class="btn btn-dark btn-link btn-underline btn-icon-right btn-visit">
                                         {{ translate('Visit Store') }}<i class="w-icon-long-arrow-right"></i></a>
                                </div>
                                <!-- End of Store Footer -->
                            </div>
                            <!-- End of Store -->
                        </div>
                        @endforeach

                    </div>
                    <div class="paginatiton-vendor">
                        {{ $Sellers->links() }}

                    </div>


                @else
                     <p class="text-center">{{ translate('not data found') }} </p>
                @endif
    </div>
</div>


            <!-- End of Page Content -->




@endsection
