<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use GuzzleHttp\Client;
use Illuminate\Support\Str;
use App\Http\Controllers\CheckoutController;

class VisaMasterController extends Controller
{
    public function createCheckout($order)
    {
        $referenceKey = Str::random(10);
        $total = number_format($order->grand_total, 2, ".", "");

        $reqParamArray = [];
        $reqParamArray['apiOperation'] = "CREATE_CHECKOUT_SESSION";
        $reqParamArray['interaction'] = [
            'operation' => 'PURCHASE',
        ];
        $reqParamArray['order'] = [
            'id' => $referenceKey,
            'currency' => "EGP",
            'amount' => $total,
        ];

        $data = json_encode($reqParamArray);

        $client = new Client([
            'headers' => [
                'Content-Type' => 'application/json',
                'Accept' => '*/*',
                'Accept-Encoding' => 'gzip, deflate',
            ],
            'auth' => [
                env("VISA_MASTERCARD_MERCHANT_USERNAME"), env("VISA_MASTERCARD_MERCHANT_PASSWORD"),
            ],
        ]);

        $endPoint = env("VISA_MASTERCARD_URL") . env("VISA_MASTERCARD_MERCHANT") . "/session";

        $response = $client->post($endPoint,
            ['body' => $data]
        );

        $providerResponse = json_decode($response->getBody(), true);

        $orderData = [
            'orderId' => $order->id,
            'total' => $total,
            'referenceKey' => $referenceKey
        ];

        $viewConfig = ["providerResponse" => $providerResponse, "orderData" => $orderData];

        return view("frontend.payment.visa_master", $viewConfig);
    }

    /*==================================================================*/
    public function success($orderId)
    {
        $payment = ["status" => "Success"];

        $checkoutController = new CheckoutController;
        return $checkoutController->checkout_done($orderId, json_encode($payment));

    }
    /*==================================================================*/
}
