@extends('backend.layouts.app')

@section('content')

<div class="card">
    <div class="card-header">
        <h5 class="mb-0 h6">{{translate('Alert Quantity')}}</h5>
        <div class="pull-right clearfix">
           
        </div>
    </div>
    <div class="card-body">
        <table class="table aiz-table mb-0" id="sampleTable">
            <thead>
            <tr>
                
                <th>{{translate('Name')}}</th>
                <th>{{translate('Attribute')}}</th>
                <th>{{translate('Quantity')}}</th>
                <th>{{translate('Alert Quantity')}}</th>
                <th width="10%">{{translate('Options')}}</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($alertQty2 as  $qty2)
                <tr>
                    
                    <td>{{$qty2->product->getTranslation('name')}}</td>
                    <td>{{ $qty2->variant }}</td>
                    <td>{{ $qty2->qty }}</td>
                    <td>{{ $qty2->alert_qty }}</td>
                    <td>
                        <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('products.admin.edit', ['id'=>$qty2->product->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                            <i class="las la-edit"></i>
                        </a>
                    </td>
                </tr>
                @endforeach
                @foreach ($alertQty1 as $qty1)
                <tr>
                    
                    <td>{{$qty1->getTranslation('name')}}</td>
                    <td>{{translate('Without Attribute')}}</td>
                    <td>{{ $qty1->current_stock }}</td>
                    <td>{{ $qty1->alert_qty }}</td>
                    <td>
                            <a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="{{route('products.admin.edit', ['id'=>$qty1->id, 'lang'=>env('DEFAULT_LANGUAGE')] )}}" title="{{ translate('Edit') }}">
                            <i class="las la-edit"></i>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection

