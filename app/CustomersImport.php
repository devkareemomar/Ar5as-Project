<?php

namespace App;

use App\Customer;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Facades\Hash;
use Spatie\Activitylog\Traits\LogsActivity;
class CustomersImport implements ToModel, WithHeadingRow
{

    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'CustomersImport';
    public function model(array $row)
    {
        return new Customer([
           'user_id'     => $row['user_id'],
        ]);
    }
}
