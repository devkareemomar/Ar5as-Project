<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class ShippingCompany extends Model
{


    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'ShippingCompany';
    protected $table = 'shipping_companies';

     public $timestamps = false;
}
