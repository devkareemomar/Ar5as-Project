<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Order;
use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MobileWalletController extends Controller
{
    public function createCheckout()
    {
        return view("frontend.payment.mobile_wallet");
    }

    /*=================================================================*/
    public function requestToPayAction()
    {
        $referenceKey = Str::random(10);

        $order = Order::findOrFail(request()->session()->get('order_id'));

        $date = date('Ymdhis');

        $total = number_format(floatval($order->grand_total), 2, '.', '');

        $total = floatval($total * 100);

        $requestBody = [
            "AmountTrxn" => "$total",
            "Currency" => 818,
            "Validity" => "10",
            "MerchantReference" => $referenceKey,
            "MobileNumber" => request()->mobileNumber,
            "MerchantId" => env("MEEZA_Merchant_ID"),
            "TerminalId" => env("MEEZA_Terminal_ID"),
            "BillNumber" => $order->id,
            "SecureHash" => $this->generateHash($date),
            "DateTimeLocalTrxn" => $date,
        ];

        $data = json_encode($requestBody);

        $client = new Client([
            'headers' => [
                'Content-Type' => 'application/json',
                'Accept' => '*/*',
                'Accept-Encoding' => 'gzip, deflate',
            ]
        ]);

        $endPoint = env("MEEZA_WALLET_URL") . "/RequestToPay";

        $response = $client->post($endPoint,
            ['body' => $data]
        );

        $providerResponse = json_decode($response->getBody(), true);
        dd($providerResponse);
    }

    /*=================================================================*/
    public function generateHash($date)
    {
        $key = env('MEEZA_Secure_Key');
        $MEEZA_Merchant_ID = env('MEEZA_Merchant_ID');
        $MEEZA_Terminal_ID = env('MEEZA_Terminal_ID');
        $secret = hex2bin($key);
        $string = "DateTimeLocalTrxn=$date&MerchantId={$MEEZA_Merchant_ID}&TerminalId={$MEEZA_Terminal_ID}";
        return hash_hmac('sha256', $string, $secret);
    }
    /*=================================================================*/
}
