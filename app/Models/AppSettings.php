<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class AppSettings extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'AppSettings';
    public function currency()
    {
        return $this->belongsTo(Currency::class);
    }
}
