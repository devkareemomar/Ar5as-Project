<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="app-url" content="{{ getBaseURL() }}">
    <meta name="file-base-url" content="{{ getFileBaseURL() }}">

    <title>@yield('meta_title', get_setting('website_name').' | '.get_setting('site_motto'))</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index, follow">
    <meta name="description" content="@yield('meta_description', get_setting('meta_description') )" />
    <meta name="keywords" content="@yield('meta_keywords', get_setting('meta_keywords') )">

    @yield('meta')

    @if(!isset($detailedProduct) && !isset($customer_product) && !isset($shop) && !isset($page))
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ config('app.name', 'Laravel') }}">
    <meta itemprop="description" content="{{ get_setting('meta_description') }}">
    <meta itemprop="image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ config('app.name', 'Laravel') }}">
    <meta name="twitter:description" content="{{ get_setting('meta_description') }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ uploaded_asset(get_setting('meta_image')) }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ config('app.name', 'Laravel') }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ route('home') }}" />
    <meta property="og:image" content="{{ uploaded_asset(get_setting('meta_image')) }}" />
    <meta property="og:description" content="{{ get_setting('meta_description') }}" />
    <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
    <meta property="fb:app_id" content="{{ env('FACEBOOK_PIXEL_ID') }}">
    @endif

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="{{ uploaded_asset(get_setting('site_icon')) }}">

    <!-- WebFont.js -->
    <script>
        WebFontConfig = {
            google: {
                families: ['Poppins:400,500,600,700']
            }
        };
        (function(d) {
            var wf = d.createElement('script'),
                s = d.scripts[0];
            wf.src = "{{ static_asset('ar5as/assets/js/webfont.js')}}";
            wf.async = true;
            s.parentNode.insertBefore(wf, s);
        })(document);
    </script>

    <link rel="preload" href="{{ static_asset('ar5as/assets/vendor/fontawesome-free/webfonts/fa-regular-400.woff2')}}" as="font" type="font/woff2" crossorigin="anonymous">
    <link rel="preload" href="{{ static_asset('ar5as/assets/vendor/fontawesome-free/webfonts/fa-solid-900.woff2')}}" as="font" type="font/woff2" crossorigin="anonymous">
    <link rel="preload" href="{{ static_asset('ar5as/assets/vendor/fontawesome-free/webfonts/fa-brands-400.woff2')}}" as="font" type="font/woff2" crossorigin="anonymous">
    <link rel="preload" href="{{ static_asset('ar5as/assets/fonts/wolmart.woff?png09e')}}" as="font" type="font/woff" crossorigin="anonymous">

    <!-- Vendor CSS -->
    <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/vendor/fontawesome-free/css/all.min.css')}}">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/vendor/animate/animate.min.css')}}">
  <!-- Plugins CSS -->
  <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/vendor/magnific-popup/magnific-popup.min.css')}}">
  <link rel="stylesheet" href="{{ static_asset('ar5as/assets/vendor/swiper/swiper-bundle.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/vendor/photoswipe/photoswipe.min.css')}}">
  <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/vendor/photoswipe/default-skin/default-skin.min.css')}}">

     <!-- Plugin CSS -->


  <!-- Swiper's CSS -->
    <!-- Default CSS -->
    {{-- @if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1) --}}
    <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/css/style-rtl.min.css')}}">
    {{-- @else --}}
    {{-- <link rel="stylesheet" type="text/css" href="{{ static_asset('ar5as/assets/css/demo7.min.css')}}"> --}}
    {{-- @endif --}}
    @yield('css')


    <script>
        var AIZ = AIZ || {};
    </script>

</head>
{{-- @if(\App\Language::where('code', Session::get('locale', Config::get('app.locale')))->first()->rtl == 1) --}}
<body class="" dir="rtl">
{{-- @else --}}
{{-- <body class="" > --}}
{{-- @endif --}}
    <!-- start of .page-wrapper -->
    <div class="page-wrapper">
        <!-- Start of Header -->
        @include('frontend.ar5as.layout.header')
        <!-- End of Header -->

        <!-- start of .main -->
        <main class="main">
            @yield('main-nav')

            <div class="page-content">
                @yield('content')
            </div>
            <!-- End of Page Cotent -->
        </main>
        <!-- end of .main -->



    @include('frontend.ar5as.layout.footer')

    {{-- <script src="{{ static_asset('ar5as/assets/vendor/jquery/jquery.min.js')}}"></script> --}}
    <script src="{{ static_asset('assets/js/vendors.js') }}"></script>

    <script src="{{ static_asset('ar5as/assets/vendor/sticky/sticky.js')}}"></script>

    <script src="{{ static_asset('ar5as/assets/vendor/parallax/parallax.min.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/jquery.plugin/jquery.plugin.min.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/jquery.countdown/jquery.countdown.min.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/isotope/isotope.pkgd.min.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/magnific-popup/jquery.magnific-popup.min.js')}}"></script>
   <script src="{{ static_asset('ar5as/assets/vendor/skrollr/skrollr.min.js')}}"></script>

    <script src="{{ static_asset('ar5as/assets/vendor/zoom/jquery.zoom.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/photoswipe/photoswipe.js')}}"></script>
    <script src="{{ static_asset('ar5as/assets/vendor/photoswipe/photoswipe-ui-default.js')}}"></script>

    <!-- Main JS -->
    <script src="{{ static_asset('ar5as/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>


    <script src="{{ static_asset('assets/menu/script.js') }}"></script>
    <script src="{{ static_asset('ar5as/assets/js/main.js')}}"></script>


    <script src="{{ static_asset('assets/js/aiz-core.js') }}"></script>




    <!-- Swiper JS -->

    <!-- Main JS File -->

    <script>
        @foreach (session('flash_notification', collect())->toArray() as $message)
            AIZ.plugins.notify('{{ $message['level'] }}', '{{ $message['message'] }}');
        @endforeach
    </script>


    <script>

            function rating(id){
                if(id == 1 ){
                    $('.star-1').addClass('active');
                    $('.star-2').removeClass('active');
                    $('.star-3').removeClass('active');
                    $('.star-4').removeClass('active');
                    $('.star-5').removeClass('active');
                }else if(id == 2){
                    $('.star-1').addClass('active');
                    $('.star-2').addClass('active');
                    $('.star-3').removeClass('active');
                    $('.star-4').removeClass('active');
                    $('.star-5').removeClass('active');
                }else if(id == 3){
                    $('.star-1').addClass('active');
                    $('.star-2').addClass('active');
                    $('.star-3').addClass('active');
                    $('.star-4').removeClass('active');
                    $('.star-5').removeClass('active');
                }else if(id == 4){
                    $('.star-1').addClass('active');
                    $('.star-2').addClass('active');
                    $('.star-3').addClass('active');
                    $('.star-4').addClass('active');
                    $('.star-5').removeClass('active');
                }else if(id == 5){
                    $('.star-1').addClass('active');
                    $('.star-2').addClass('active');
                    $('.star-3').addClass('active');
                    $('.star-4').addClass('active');
                    $('.star-5').addClass('active');
                }
                $('#rating-star').val(id);

            }
        function size(key){
            $('.size').removeClass('active');

              $('.size'+key).addClass('active');
        }

        function color(key){
            $('.color').removeClass('active');

              $('.color'+key).addClass('active');
        }

        $(document).ready(function() {

            var token = "{{ csrf_token() }}";

            $('.category-nav-element').each(function(i, el) {
                $(el).on('mouseover', function(){
                    if(!$(el).find('.sub-cat-menu').hasClass('loaded')){
                        $.post('{{ route('category.elements') }}', {_token: token, id:$(el).data('id')}, function(data){
                            $(el).find('.sub-cat-menu').addClass('loaded').html(data);
                        });
                    }
                });
            });
            if ($('#lang-change').length > 0) {
                $('#lang-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e){
                        e.preventDefault();
                        var $this = $(this);
                        var locale = $this.data('flag');
                         var token = "{{ csrf_token() }}";

                        $.post('{{ route('language.change') }}',{_token: token, locale:locale}, function(data){
                            location.reload();
                        });

                    });
                });
            }

            if ($('#currency-change').length > 0) {
                $('#currency-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e){
                        e.preventDefault();
                        var $this = $(this);
                        var currency_code = $this.data('currency');
                        var token = "{{ csrf_token() }}";

                        $.post('{{ route('currency.change') }}',{_token: token, currency_code:currency_code}, function(data){
                            location.reload();
                        });

                    });
                });
            }
        });

        $('#search').on('keyup', function(){
            search();
        });

        $('#search').on('focus', function(){
            search();
        });

        function search(){
            var searchKey = $('#search').val();
            if(searchKey.length > 0){
                $('body').addClass("typed-search-box-shown");

                $('.typed-search-box').removeClass('d-none');
                $('.search-preloader').removeClass('d-none');
                var token ="{{ csrf_token() }}";
                $.post('{{ route('search.ajax') }}', { _token: token, search:searchKey}, function(data){
                    if(data == '0'){
                        // $('.typed-search-box').addClass('d-none');
                        $('#search-content').html(null);
                        $('.typed-search-box .search-nothing').removeClass('d-none').html('Sorry, nothing found for <strong>"'+searchKey+'"</strong>');
                        $('.search-preloader').addClass('d-none');

                    }
                    else{
                        $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                        $('#search-content').html(data);
                        $('.search-preloader').addClass('d-none');
                    }
                });
            }
            else {
                $('.typed-search-box').addClass('d-none');
                $('body').removeClass("typed-search-box-shown");
            }
        }

        function updateNavCart(){
            var token ="{{ csrf_token() }}";

            $.post('{{ route('cart.nav_cart') }}', {_token: token }, function(data){
                $('#cart_items').html(data);
            });
        }

        function removeFromCartViews(key){
            var token = "{{ csrf_token() }}";

            $.post('{{ route('cart.removeFromCartView') }}', {_token: token, key:key }, function(data){
                updateNavCart();
                $('#cart-summary').html(data);
                AIZ.plugins.notify('success', 'Item has been removed from cart');
                $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())-1);
            });
        }
        function removeFromCart(key){
                var token = "{{ csrf_token() }}";
            $.post('{{ route('cart.removeFromCart') }}', {_token: token, key:key }, function(data){
                updateNavCart();
                $('#cart-summary22').html(data);

                AIZ.plugins.notify('success', 'Item has been removed from cart');
                $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())-1);
            });
        }

        function addToCompare(id){
            var token ="{{ csrf_token() }}";

            $.post('{{ route('compare.addToCompare') }}', {_token: token, id:id}, function(data){
                $('#compare').html(data);
                AIZ.plugins.notify('success', "{{ translate('Item has been added to compare list') }}");
                $('#compare_items_sidenav').html(parseInt($('#compare_items_sidenav').html())+1);
            });
        }
        function removeFromWishlist(id){
            var token ="{{ csrf_token() }}";

                $.post('{{ route('wishlists.remove') }}',{_token:token, id:id}, function(data){
                    $('#wishlist').html(data);
                    $('#wishlist_'+id).hide();
                    AIZ.plugins.notify('success', 'Item has been removed from wishlist');
                })
        }
        function addToWishList(id){
            var token ="{{ csrf_token() }}";

            @if (Auth::check() && (Auth::user()->user_type == 'customer' || Auth::user()->user_type == 'seller'))
                $.post('{{ route('wishlists.store') }}', {_token: token, id:id}, function(data){
                    if(data != 0){
                        $('#wishlist').html(data);
                        AIZ.plugins.notify('success', "{{ translate('Item has been added to wishlist') }}");
                    }
                    else{
                        AIZ.plugins.notify('warning', "{{ translate('Please login first') }}");
                    }
                });
            @else
                AIZ.plugins.notify('warning', "{{ translate('Please login first') }}");
            @endif
        }


        function showAddToCartModal(id){
            var token = "{{ csrf_token() }}";

            if(!$('#modal-size').hasClass('modal-lg')){
                $('#modal-size').addClass('modal-lg');
            }
            $('#addToCart-modal-body').html(null);
            $('#addToCart').modal();
            $('.c-preloader').show();
            $.post('{{ route('cart.showCartModal') }}', {_token: token, id:id}, function(data){
                $('.c-preloader').hide();
                $('#addToCart-modal-body').html(data);
                AIZ.plugins.slickCarousel();
                AIZ.plugins.zoom();
                AIZ.extra.plusMinus();
                getVariantPrice();
            });
        }

        $('#option-choice-form input').on('change', function(){
            getVariantPrice();
        });

        function getVariantPrice(){
            if($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()){
                $.ajax({
                   type:"POST",
                   url: '{{ route('products.variant_price') }}',
                   data: $('#option-choice-form').serializeArray(),
                   success: function(data){

                       $('#option-choice-form #chosen_price_div').removeClass('d-none');
                       $('#option-choice-form .product-price #chosen_price').text(data.price);
                       $('#available-quantity').html(data.quantity);
                       $('.input-number').prop('max', data.quantity);
                       //console.log(data.quantity);
                       if(parseInt(data.quantity) < 1 && data.digital  == 0){
                           $('.buy-now').hide();
                           $('.add-to-cart').hide();
                       }
                       else{
                           $('.buy-now').show();
                           $('.add-to-cart').show();
                       }
                   }
               });
            }
        }

        function checkAddToCartValidity(){
            var names = {};

            $('#option-choice-form input:radio').each(function() { // find unique names
                  names[$(this).attr('name')] = true;
            });
            var count = 0;
            $.each(names, function() { // then count them
                  count++;
            });

            if($('#option-choice-form input:radio:checked').length == count){

                return true;
            }

            return false;
        }

        function addToCart(id){
            // if(checkaddToCartValidity()) {
            //     $('#addToCart').modal();
            //     $('.c-preloader').show();
            var token ="{{ csrf_token() }}";
                $.ajax({
                   type:"POST",
                   url: '{{ route('cart.addToCart') }}',
                   data: {'_token': token,'id':id},
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

        function buyNow(){
            if(checkAddToCartValidity()) {
                $('#addToCart-modal-body').html(null);
                $('#addToCart').modal();
                $('.c-preloader').show();
                $.ajax({
                   type:"POST",
                   url: '{{ route('cart.addToCart') }}',
                   data: $('#option-choice-form').serializeArray(),
                   success: function(data){
                       if(data.status == 1){
                            updateNavCart();
                            $('#cart_items_sidenav').html(parseInt($('#cart_items_sidenav').html())+1);
                            window.location.replace("{{ route('cart') }}");
                       }
                       else{
                            $('#addToCart-modal-body').html(null);
                            $('.c-preloader').hide();
                            $('#modal-size').removeClass('modal-lg');
                            $('#addToCart-modal-body').html(data.view);
                       }
                   }
               });
            }
            else{
                AIZ.plugins.notify('warning', 'Please choose all the options');
            }
        }

        function show_purchase_history_details(order_id)
        {
            $('#order-details-modal-body').html(null);

            if(!$('#modal-size').hasClass('modal-lg')){
                $('#modal-size').addClass('modal-lg');
            }
            var token = "{{ csrf_token() }}";
            $.post('{{ route('purchase_history.details') }}', { _token : token, order_id : order_id}, function(data){
                $('#order-details-modal-body').html(data);
                $('#order_details').modal();
                $('.c-preloader').hide();
            });
        }

        function show_order_details(order_id)
        {
            $('#order-details-modal-body').html(null);

            if(!$('#modal-size').hasClass('modal-lg')){
                $('#modal-size').addClass('modal-lg');
            }
            var token = "{{ csrf_token() }}";

            $.post('{{ route('orders.details') }}', { _token : token, order_id : order_id}, function(data){
                $('#order-details-modal-body').html(data);
                $('#order_details').modal();
                $('.c-preloader').hide();
            });
        }

        function cartQuantityInitialize(){
            $('.btn-number').click(function(e) {
                e.preventDefault();

                alert(5);
                fieldName = $(this).attr('data-field');
                type = $(this).attr('data-type');
                var input = $("input[name='" + fieldName + "']");
                var currentVal = parseInt(input.val());

                if (!isNaN(currentVal)) {
                    if (type == 'minus') {

                        if (currentVal > input.attr('min')) {
                            input.val(currentVal - 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('min')) {
                            $(this).attr('disabled', true);
                        }

                    } else if (type == 'plus') {

                        if (currentVal < input.attr('max')) {
                            input.val(currentVal + 1).change();
                        }
                        if (parseInt(input.val()) == input.attr('max')) {
                            $(this).attr('disabled', true);
                        }

                    }
                } else {
                    input.val(0);
                }
            });

            $('.input-number').focusin(function() {
                $(this).data('oldValue', $(this).val());
            });

            $('.input-number').change(function() {

                alert(5);
                minValue = parseInt($(this).attr('min'));
                maxValue = parseInt($(this).attr('max'));
                valueCurrent = parseInt($(this).val());

                name = $(this).attr('name');
                if (valueCurrent >= minValue) {
                    $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the minimum value was reached');
                    $(this).val($(this).data('oldValue'));
                }
                if (valueCurrent <= maxValue) {
                    $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
                } else {
                    alert('Sorry, the maximum value was reached');
                    $(this).val($(this).data('oldValue'));
                }


            });
            $(".input-number").keydown(function(e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                    // Allow: Ctrl+A
                    (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });
        }

         function imageInputInitialize(){
             $('.custom-input-file').each(function() {
                 var $input = $(this),
                     $label = $input.next('label'),
                     labelVal = $label.html();

                 $input.on('change', function(e) {
                     var fileName = '';

                     if (this.files && this.files.length > 1)
                         fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
                     else if (e.target.value)
                         fileName = e.target.value.split('\\').pop();

                     if (fileName)
                         $label.find('span').html(fileName);
                     else
                         $label.html(labelVal);
                 });

                 // Firefox bug fix
                 $input
                     .on('focus', function() {
                         $input.addClass('has-focus');
                     })
                     .on('blur', function() {
                         $input.removeClass('has-focus');
                     });
             });
         }

    </script>
       @yield('script')

    @php
        echo get_setting('footer_script');
    @endphp


</body>

</html>
