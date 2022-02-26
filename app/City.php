<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App;
use Spatie\Activitylog\Traits\LogsActivity;
class City extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'City';
    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function getTranslation($field = '', $lang = false){
        $lang = $lang == false ? App::getLocale() : $lang;
        $city_translation = $this->hasMany(CityTranslation::class)->where('lang', $lang)->first();
        return $city_translation != null ? $city_translation->$field : $this->$field;
    }

    public function city_translations(){
      return $this->hasMany(CityTranslation::class);
    }
}
