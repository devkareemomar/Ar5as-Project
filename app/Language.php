<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App;
use Spatie\Activitylog\Traits\LogsActivity;

class Language extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'Language';
  //
}
