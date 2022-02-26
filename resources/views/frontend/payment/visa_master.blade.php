@php
    $sessionID = $providerResponse['session']['id'];
    $sessionVersion = $providerResponse['session']['version'];
    $merchant = $providerResponse['merchant'];
    $total = $orderData['total'];
    $orderId = $orderData['orderId'];
    $referenceKey = $orderData['referenceKey'];
@endphp


<script>
    if(document.querySelectorAll('bankMisrSdk').length > 0)
    {

        document.querySelectorAll('bankMisrSdk').remove();
    }

    var script = document.createElement("script");

    script.setAttribute("id", "bankMisrSdk");
    script.setAttribute("data-complete", "{{ route('visaMaster.success',['orderId'=> $orderId]) }}");
    script.setAttribute("data-error", "{{ route('visaMaster.cancel') }}");
    script.setAttribute("src", "https://banquemisr.gateway.mastercard.com/checkout/version/61/checkout.js");
    document.getElementById('visaMasterDiv').appendChild(script);

    script.onload = () => {

        var  sessionID = '{{$sessionID}}',
            sessionVersion = '{{ $sessionVersion }}',
            merchant = '{{ $merchant }}',
            total = '{{ $total }}',
            referenceKey = '{{ $referenceKey }}';

        var checkoutConfig =  {
            merchant: `${merchant}`,  // Merchant ID
            session:{
                id: `${sessionID}`,
                version:`${sessionVersion}`,
            },
            order: {
                amount: `${total}`,
                currency: "EGP",
                description: 'ar5as.com',
                id: `${referenceKey}`  // Order ID*/
            },
            interaction: {
                operation: 'PURCHASE', // set this field to 'PURCHASE' for Hosted Checkout to perform a Pay Operation.
                merchant: {
                    name: 'ar5as', // Merchant Name
                }
            }
        };

        Checkout.configure(checkoutConfig);
        Checkout.showLightbox();
    };
</script>
