<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    public function gov(){
         return $this->belongsTo(Governorate::class, 'country');
    }
    public function city(){
        return $this->belongsTo(City::class, 'city');
    }
}

