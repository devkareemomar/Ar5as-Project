<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App;
use Spatie\Activitylog\Traits\LogsActivity;

class PickupPoint extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'PickupPoint';
    public function getTranslation($field = '', $lang = false){
        $lang = $lang == false ? App::getLocale() : $lang;
        $pickup_point_translation = $this->hasMany(PickupPointTranslation::class)->where('lang', $lang)->first();
        return $pickup_point_translation != null ? $pickup_point_translation->$field : $this->$field;
    }

    public function pickup_point_translations(){
      return $this->hasMany(PickupPointTranslation::class);
    }

    public function staff(){
    	return $this->belongsTo(Staff::class);
    }
}
