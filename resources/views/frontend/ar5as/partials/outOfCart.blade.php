<div class="products item-cart"  style="max-height: 100%;">
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
                    <a href="product-default.html" class="product-name">{{  $product->getTranslation('name')  }}</a>
                    <div class="price-box">
                        <span class="product-quantity">1</span>
                        <span class="product-price">{{ single_price($cartItem['price']+ $cartItem['tax']) }}</span>
                    </div>
                </div>
                <figure class="product-media">
                    <a href="product-default.html">
                        <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="product" height="84" width="94" />
                    </a>
                </figure>
                <button class="btn btn-link btn-close" onclick="removeFromCart({{ $key }})" aria-label="button">
                    <i class="fas fa-times"></i>
                </button>
            </div>
    @endforeach
    @endif


</div>

<div class="cart-total">
    <label>Subtotal:</label>
    <span class="price">{{ $total }}</span>
</div>
