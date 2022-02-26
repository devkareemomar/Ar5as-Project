 @extends('frontend.layouts.app')

@section('content')

    <section class="py-5">
        <div class="container-fluid">
            <div class="d-flex align-items-start">
                @include('frontend.inc.user_side_nav')
                <div class="aiz-user-panel">

                    <div class="card">
                        <div class="card-body p-3">
                                <table class="table aiz-table mb-0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th data-breakpoints="lg">{{ translate('Product Name ')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Quantaty')}}</th>
                                            <th data-breakpoints="lg">{{ translate('Alert Quantaty')}}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       @foreach($products as $key => $product)
                                                <tr>
                                                    <td>
                                                      {{$key + 1}}
                                                    </td>
                                                    <td> 
                                                        
                                                    @php 
                                                     $name =   App\Product::where('id', $product->product_id )->select('name')->get();

                                                    @endphp
                                                    @foreach ($name as $nam)
                                                         {{ $nam->name }}
                                                    @endforeach 
                                                    
                                                    </td>
                                                    <td>{{$product->qty}}</td>
                                                    <td>{{$product->alert_qty}}</td>
                                                  
                                                </tr>
                                         @endforeach
                                    </tbody>
                                </table>
                                <div class="aiz-pagination">
                                
                              	</div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection