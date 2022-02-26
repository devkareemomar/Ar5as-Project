<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Product ;
use App\ProductStock ;
use App\City;
use Auth;
class AppServiceProvider extends ServiceProvider
{
  /**
   * Bootstrap any application services.
   *
   * @return void
   */
  public function boot()
  {
    Schema::defaultStringLength(191);

    view()->share('alertQty1', Product::where('variant_product' , '=' , 0 )->where('alert_qty', '<' , 'current_stock')->get() );

    view()->share('alertQty2', ProductStock::where('alert_qty', '<' ,  'qty')->whereNotNull('variant')->with('product')->get() );

    

    view()->share('cities', City::get() );
  }

  /**added_by
   * Register any application services.
   *
   * @return void
   */
  public function register()
  {
    
  }
}
