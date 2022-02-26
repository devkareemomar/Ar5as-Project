<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
class Address extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'Address';
    public function gov(){
         return $this->belongsTo(Governorate::class, 'country');
    }
    public function city(){
        return $this->belongsTo(City::class, 'city');
    }
}

