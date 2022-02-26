<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
     protected $table = 'banks';

     public $timestamps = false; 

     public function seller(){

          return $this->hasMany(Seller::class, 'bank_name', 'id');
         
     }
}
