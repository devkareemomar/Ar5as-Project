<?php

namespace App\Http\Controllers;

use App\ActivityLog;
use Illuminate\Http\Request;

class ActivityLogController extends Controller
{


    public function show(){
        $ActivityLog = ActivityLog::orderBy('created_at', 'desc')->paginate(10);
        $sort_by =null;

        return view('backend.reports.activity_log',compact('ActivityLog','sort_by'));

    }

    public function activity_report(Request $request)
    {
        $sort_by =null;
        $from = null ;
        $to   =  null ;
        $ActivityLog = ActivityLog::orderBy('created_at', 'desc');


        if ($request->date_range != ""){
            $date_var  = explode(" to ", $request->date_range);
            $from = $date_var[0] ;
            $to   =  $date_var[1] ;
            $ActivityLog = $ActivityLog->whereBetween('created_at', [$from, $to]);
        }

        if ($request->user_id != ""){
            $sort_by = $request->user_id;
            $ActivityLog = $ActivityLog->where('causer_id', $sort_by);
        }




        $ActivityLog = $ActivityLog->paginate(10);
        return view('backend.reports.activity_log', compact('ActivityLog','sort_by'));
    }
}
