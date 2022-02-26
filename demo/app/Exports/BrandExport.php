<?php

namespace App\Exports;
use App\Brand;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;

use Maatwebsite\Excel\Concerns\WithHeadings;


class BrandExport implements FromCollection , WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {

          $brands = DB::table('brands')->select('id','name')->get();
           
           
        return $brands ;
    }

    public function headings(): array
    {
        return ['ID ', 'Name'];
    }
}
 