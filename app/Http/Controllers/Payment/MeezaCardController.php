<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Controllers\CheckoutController;


class MeezaCardController extends Controller
{
    public function createCheckout($order)
    {
        $referenceKey = Str::random(10);

        $date = date('Ymdhis');

        $total = number_format(floatval($order->grand_total), 2, '.', '');

        $total = floatval($total * 100);

        $viewConfig = [
            'orderId' => $referenceKey,
            'amount' => $total,
            'meezaCardUrl' => env("MEEZA_CARD_URL"),
            'merchantId' => env("MEEZA_Merchant_ID"),
            'terminalId' => env("MEEZA_Terminal_ID"),
            'successUrl' => route("meezaCard.success",['orderId' => $order->id]),
            'cancelUrl' => route("meezaCard.cancel"),
            'transactionDate' => $date,
            'secureHash' => $this->generateHash($date)
        ];

        return view("frontend.payment.meeza_card", $viewConfig);
    }

    /*==========================================================================*/
    public function generateHash($date)
    {
        $key = env('MEEZA_Secure_Key');
        $MEEZA_Merchant_ID = env('MEEZA_Merchant_ID');
        $MEEZA_Terminal_ID = env('MEEZA_Terminal_ID');
        $secret = hex2bin($key);
        $string = "DateTimeLocalTrxn=$date&MerchantId={$MEEZA_Merchant_ID}&TerminalId={$MEEZA_Terminal_ID}";
        return hash_hmac('sha256', $string, $secret);
    }
    /*==========================================================================*/
    public function success($orderId)
    {
        $payment = ["status" => "Success"];

        $checkoutController = new CheckoutController;
        return $checkoutController->checkout_done($orderId, json_encode($payment));

    }
    /*==========================================================================*/
    public function cancel(){
        flash(translate('Payment is cancelled'))->error();
        return redirect()->route('home');
    }
    /*==========================================================================*/

}
