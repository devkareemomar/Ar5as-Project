<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
class ClubPointDetail extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'ClubPointDetail';
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function club_point()
    {
        return $this->belongsTo(ClubPoint::class);
    }
}
