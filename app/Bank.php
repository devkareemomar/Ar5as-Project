<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
class Bank extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'Bank';
     protected $table = 'banks';

     public $timestamps = false;

     public function seller(){

          return $this->hasMany(Seller::class, 'bank_name', 'id');

     }
}
