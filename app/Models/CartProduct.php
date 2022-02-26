<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class CartProduct extends Model
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'CartProduct';
    protected $guarded = [];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
