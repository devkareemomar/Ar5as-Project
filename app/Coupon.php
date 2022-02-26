<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
class Coupon extends Model
{

    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'Coupon';
    //
}
