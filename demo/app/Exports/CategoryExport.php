<?php

namespace App\Exports;
use App\Category;
use DB;
use Maatwebsite\Excel\Concerns\FromCollection;

use Maatwebsite\Excel\Concerns\WithHeadings;


class CategoryExport implements FromCollection , WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
// SELECT    C LEFT JOIN categories S ON C.id = S.parent_id && S.LEVEL = 1 LEFT JOIN categories B ON S.id = B.parent_id && B.LEVEL = 2
          $categories = DB::table('categories AS C')
            ->leftJoin('categories AS S', function ($join) {
                $join->on('C.id', '=', 'S.parent_id')
                    ->where('S.level', '=', 1);
            })
            //->leftJoin('categories AS S', 'C.id', '=', 'S.parent_id' and 'S.level' , '=' ,'1')
            ->leftJoin('categories AS B', function ($join) {
                $join->on('S.id', '=', 'B.parent_id')
                    ->where('B.level', '=', 2);
            })
            //->leftJoin('categories AS B', 'S.id', '=', 'B.parent_id'  and 'B.level' , '=' ,'2')
            ->where([['C.published', '=', 1],['C.parent_id', '=', 0]])
            ->select('C.id' ,'C.name', 'S.id AS SubCateID' , 'S.name AS SubCatName' , 'B.id AS SubSubCateID', 'B.name AS SubSubCatName')
            ->get();
        return $categories ;
    }

    public function headings(): array
    {
        return ['Main Category ID ', 'Main Category Name ', 'Sub Category Id ', 'Sub Category Name' , 'Sub Sub Category Id', 'Sub Sub Category Name'];
    }
}
 