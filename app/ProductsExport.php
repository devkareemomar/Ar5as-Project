<?php

namespace App;

use App\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Spatie\Activitylog\Traits\LogsActivity;

class ProductsExport implements FromCollection, WithMapping, WithHeadings
{
    use LogsActivity;
    protected static $logAttributes = ['*'];
    protected static $logName = 'ProductsExport';
    public function collection()
    {
        return Product::all();
    }

    public function headings(): array
    {
        return [
            'name',
            'added_by',
            'user_id',
            'category_id',
            'brand_id',
            'unit_price',
            'unit',
            'current_stock',
            'meta_title',
            'meta_description',
        ];
    }

    /**
    * @var Product $product
    */
    public function map($product): array
    {
        return [
            $product->name,
            $product->added_by,
            $product->user_id,
            $product->category_id,
            $product->brand_id,
            $product->unit_price,
            $product->unit,
            $product->current_stock,
        ];
    }
}
