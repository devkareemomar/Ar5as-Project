<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AttributeTranslation extends Model
{


  public function attribute(){
    return $this->belongsTo(Attribute::class);
  }

}
