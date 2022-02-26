<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
class CustomerPackagePayment extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'CustomerPackagePayment';
    public function user(){
    	return $this->belongsTo(User::class);
    }

    public function customer_package(){
    	return $this->belongsTo(CustomerPackage::class);
    }
}
