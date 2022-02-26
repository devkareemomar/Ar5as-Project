<?php

namespace App\Console;

use App\Models\Seller;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Auth;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // dd(\Carbon\Carbon::parse()->format('l'));

        $sellers = Seller::where('verification_status',1)->get();
        foreach( $sellers as $row){

            $seller = Seller::find($row->id);
            $date =  \Carbon\Carbon::parse($seller->created_at);
            $now  =  \Carbon\Carbon::now();
            $diff = $date->diffInMonths($now);
            if($seller->admin_to_pay >= 2500){
                $seller->available_balance = $seller->available_balance +$seller->admin_to_pay;
                $seller->admin_to_pay = 0;
            }else{
                if($diff >= 1){
                    if(\Carbon\Carbon::parse()->format('l') =='Saturday'){
                        $seller->available_balance = $seller->available_balance +$seller->admin_to_pay;
                        $seller->admin_to_pay = 0;

                    }
                }
            }
            $seller->save();

        }

        // dd($sellers);

    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
