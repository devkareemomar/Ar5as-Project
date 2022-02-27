<script>
    if (document.querySelectorAll('meezaCardSdk').length > 0) {
        document.querySelectorAll('meezaCardSdk').remove();
    }

    var script = document.createElement("script");

    script.setAttribute("id", "meezaCardSdk");
    script.setAttribute("src", "{{ $meezaCardUrl }}");
    document.getElementById('meezaCardDiv').appendChild(script);

    script.onload = () => {

        var configObject = {
            OrderId: "",
            paymentMethodFromLightBox: 0,
            MID: "{{ $merchantId }}",
            TID: "{{ $terminalId }}",
            AmountTrxn: "{{ $amount }}",
            SecureHash: "{{ $secureHash }}",
            TrxDateTime: "{{ $transactionDate }}",
            completeCallback: function (data) {
                var successUrl = "{{ $successUrl }}";
                window.location.href = successUrl;
            },
            errorCallback: function (error) {
                var cancelUrl = "{{ $cancelUrl }}";
                window.location.href = cancelUrl;
            },
            cancelCallback: function () {
                var cancelUrl = "{{ $cancelUrl }}";
                window.location.href = cancelUrl;
            }
        };

        Lightbox.Checkout.configure = configObject;
        Lightbox.Checkout.showLightbox();
    };
</script>
