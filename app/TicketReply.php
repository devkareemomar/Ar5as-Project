<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class TicketReply extends Model
{

    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'TicketReply';
    public function ticket(){
    	return $this->belongsTo(Ticket::class);
    }
    public function user(){
    	return $this->belongsTo(User::class);
    }
}
