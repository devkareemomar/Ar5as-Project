<div class="modal fade mezza--modal" id="mobileWalletModalPayment" tabindex="-1" role="dialog"
     aria-labelledby="mobileWalletModalPayment"
     aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Pay Using mobile wallet</h5>
            </div>
            <div class="modal-body">
                <form id="mobileWalletForm" action="{{ route("mobileWallet.requestToPay") }}" method="post">
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-12">
                            <input class="form-control cform" id="QRModel_R2PValue" maxlength="11" minlength="9"
                                   name="mobileNumber" placeholder="Enter Mobile Number" type="text" value="">
                        </div>
                        <div class="form-group col-md-12">
                            <button class="cantscanSend" type="button" id="sendPaymentRequest">submit</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>


<script src="{{ asset('assets/js/plugins/qrcode.min.js') }}"></script>
<script type="application/javascript">
    $(document).ready(function () {
        $("#mobileWalletModalPayment").modal("show");

        /*================================================================*/
        function sendPaymentRequest(event) {
            event.preventDefault();
            var request = $.ajax({
                url: $("#mobileWalletForm").attr("action"),
                dataType: "JSON",
                type: "POST",
                data: $("#mobileWalletForm").serialize()
            });

            request.done((response) => {

            });

        }

        $(document).on("click", "#sendPaymentRequest", sendPaymentRequest);
        /*================================================================*/
        // $('#qrShowDiv').on('click', function () {
        //     $(this).fadeToggle();
        //     $('#qrcodeDiv').fadeToggle();
        // });
        //
        // $('#mobileShowDiv').on('click', function () {
        //     $(this).fadeToggle();
        //     $('#mobilePayDiv').fadeToggle();
        // });


        // var refreshIntervalId = setInterval(checkStatus, 10000);

        {{--var qrcodevar = new QRCode(document.getElementById("qrcode_img"), {--}}
        {{--    text: "{{ $qrcode }}",--}}
        {{--    width: 210,--}}
        {{--    height: 210,--}}
        {{--    colorDark: "#000000",--}}
        {{--    colorLight: "#ffffff",--}}
        {{--    correctLevel: QRCode.CorrectLevel.H--}}
        {{--});--}}

        // var time = setTimeout(function () {
        //     $('#mobileWalletModalPayment').modal('show');
        // }, 1000);

        {{--function checkStatus() {--}}
        {{--    if ($('#mobileWalletModalPayment').is(':visible')) {--}}
        {{--        $.ajax({--}}
        {{--            type: "POST",--}}
        {{--            dataType: "JSON",--}}
        {{--            url: '{{ route('meezaCheckStatus') }}',--}}
        {{--            data: {--}}
        {{--                '_token': '{{ csrf_token() }}',--}}
        {{--                'transactionId': '{{ $transactionId }}',--}}
        {{--                'referenceKey': '{{ $referenceKey }}',--}}
        {{--                'vendorId': '{{ $vendorId }}',--}}
        {{--                'transactionPrefix': '{{ $transactionPrefix }}'--}}
        {{--            },--}}
        {{--            success: function (response) {--}}
        {{--                Swal.fire({--}}
        {{--                    text: "Success Paid By Meeza",--}}
        {{--                    icon: "success",--}}
        {{--                    buttonsStyling: false,--}}
        {{--                    confirmButtonText: "Ok",--}}
        {{--                    customClass: {--}}
        {{--                        confirmButton: "btn font-weight-bold btn-light"--}}
        {{--                    }--}}
        {{--                }).then((result) => {--}}
        {{--                    window.location.href = response.redirectTo;--}}
        {{--                });--}}
        {{--            }--}}
        {{--        });--}}
        {{--    }--}}
        {{--}--}}

        // $(".cantscan").click(function () {
        //     $(this).fadeOut(1000);
        //     $(".MobileInput").fadeToggle("slow", "linear");
        //     $("#QRModel_R2PValue").focus();
        // });

        {{--$(".cantscanSend").click(function (e) {--}}
        {{--    e.preventDefault();--}}
        {{--    var id = {{ $transactionId }};--}}
        {{--    var mobileNumber = $('#QRModel_R2PValue').val();--}}
        {{--    $.ajax({--}}
        {{--        type: "POST",--}}
        {{--        url: '{{ route('changeMeezaQR') }}',--}}
        {{--        data: {--}}
        {{--            '_token': '{{ csrf_token() }}',--}}
        {{--            'transactionId': '{{ $transactionId }}',--}}
        {{--            'referenceKey': '{{ $referenceKey }}',--}}
        {{--            'vendorId': '{{ $vendorId }}',--}}
        {{--            'transactionPrefix': '{{ $transactionPrefix }}',--}}
        {{--            "mobileNumber": mobileNumber--}}
        {{--        },--}}
        {{--        success: function (data) {--}}
        {{--            qrcodevar.clear();--}}
        {{--            qrcodevar.makeCode(data);--}}

        {{--            $('#QRModel_R2PValue').empty();--}}
        {{--            $('#QRModel_R2PValue').val('');--}}
        {{--            $('.MobileInput').fadeOut(1000);--}}
        {{--            $(".cantscan").fadeIn(1000);--}}
        {{--        }--}}
        {{--    });--}}
        {{--});--}}
    });
</script>
