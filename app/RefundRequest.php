<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class RefundRequest extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'RefundRequest';
    public function orderDetail()
    {
        return $this->belongsTo(OrderDetail::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function seller()
    {
        return $this->belongsTo(User::class, 'seller_id');
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function bank(){
  	return $this->belongsTo(Bank::class, 'bank_id');
  }
}
