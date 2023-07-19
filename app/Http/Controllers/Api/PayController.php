<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Stripe\Webhook;
use Stripe\Customer;
use Stripe\Price;
use Stripe\Stripe;
use Stripe\Checkout\Session;
use Stripe\Exception\UnexpectedValueException;
use Stripe\Exception\SignatureVerificationException;
use Illuminate\Support\Carbon;
use App\Models\Course;
use App\Models\Order;

class PayController extends Controller
{
    public function checkout(Request $request)
    {
        try{
            $user = $request->user();
            $token = $user->token;
            $courseId = $request->id;

            /*
        Stripe api key

            */
            Stripe::setApiKey('sk_test_51NVZDJCcgYR1TR2JPq2txDsyF7VIsn73ZJ4tu9NwLgA7IfcG950Ge1mabqUH0IdeMbeHrP7pUENdPuuPDo3im8Pu00nOt7x2xf');

     $courseResult = Course::where('id','=', $courseId)->first();

     if(empty( $courseResult)){
        return response()->json([
            'code'=>400,
            'msg'=>'Course does not exist',
            'data'=> ''
            ], 400);
     }

$orderMap = [];
$orderMap['course_id'] = $courseId;
$orderMapp['user_token'] = $token;
$orderMap['status'] = 1;

/*
check the order exist already. So we need order model
*/

$orderRes = Order::where($orderMap)->first();

// invalid request

if(!empty($orderRes)){
    return response()->json([
        'code'=> 200,
        'msg'=>'You alreday bought this Course',
        'data'=>$orderRes
        ], 200);
}

// new order for the user and lets submit

$YOUR_DOMAIN = env('APP_URL');
$map = [];
$map['user_token'] = $token;
$map['course_id'] = $courseId;
$map['total_amount'] = $courseResult->price;
$map['status'] = 0; // change to 1 when done
$map['created_at'] = Carbon::now();


$orderNum = Order::insertGetId($map);

//dd($orderNum);
// return response()->json([
//     'msg'=>'here is the message',
//     'code'=>$orderNum
// ]);

// create payment session
$checkOutSession = Session::create(
    [
        'line_items'=>[[
            'price_data'=>[
                'currency'=>'USD',
                'product_data'=>[
                    'name'=>$courseResult->name,
                    'description'=>$courseResult->description,
                ],
                'unit_amount'=>intval(($courseResult->price)*100),
            ],
            'quantity'=>1,
        ]],

        'payment_intent_data'=>[
            'metadata'=>[
                 'order_num'=>$orderNum, 'user_token'=>$token

            ],
        ],
        'metadata' => [
            'order_num' => $orderNum, 'user_token' => $token,
    ],
        'mode'=>'payment',
        'success_url'=> $YOUR_DOMAIN . 'success',
        'cancel_url'=> $YOUR_DOMAIN . 'cancel'
    ]
);

        return response()->json([
            'code'=> 200,
            'msg'=>'Success',
            'data'=>$checkOutSession->url
            ], 200);
}catch(\Throwable $th){

    $user = $request->user();
    return response()->json([
               'error'=> $th->getMessage(),
        ], 500);
        }

    }
}



