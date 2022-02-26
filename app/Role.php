<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App;
use Spatie\Activitylog\Traits\LogsActivity;

class Role extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'Role';
    public function getTranslation($field = '', $lang = false){
        $lang = $lang == false ? App::getLocale() : $lang;
        $role_translation = $this->hasMany(RoleTranslation::class)->where('lang', $lang)->first();
        return $role_translation != null ? $role_translation->$field : $this->$field;
    }

    public function role_translations(){
      return $this->hasMany(RoleTranslation::class);
    }
}
