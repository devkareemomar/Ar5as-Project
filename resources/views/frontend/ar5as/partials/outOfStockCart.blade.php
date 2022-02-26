    <div class="product product-cart">
        <div class="product-detail">
            <a href="product-default.html" class="product-name">{{ $product->name }}
                elas<br>tic
                runner shoes</a>
            <div class="price-box">
                <span class="product-quantity">1</span>
                <span class="product-price">{{ single_price($product['price']) }}</span>
            </div>
        </div>
        <figure class="product-media">
            <a href="product-default.html">
                <img src="{{ uploaded_asset($product->thumbnail_img) }}" alt="product" height="84" width="94" />
            </a>
        </figure>
        <button class="btn btn-link btn-close" aria-label="button">
            <i class="fas fa-times"></i>
        </button>
    </div>
