@extends('backend.layouts.app')

@section('content')

    <div class="aiz-titlebar text-left mt-2 mb-3">
    	<div class=" align-items-center">
           <h1 class="h3">{{translate('Product Wish Report')}}</h1>
    	</div>
    </div>

    <div class="col-md-8 mx-auto">
        <div class="card">
            <div class="card-body">
                <form action="{{ route('activity_report') }}" method="GET">
                    <div class="form-group row offset-lg-2">
                        {{-- <label class="col-md-3 col-form-label">{{ translate('Sort by Date') }}:</label> --}}
                          <div class="col-md-4">
                            <input type="text" class="form-control aiz-date-range" name="date_range"
                                placeholder="{{translate('Select Date')}}" data-time-picker="true"
                                data-format="Y-MM-DD  HH:mm:ss" data-separator=" to " autocomplete="off">
                        </div>
                        <div class="col-md-5">
                            <select id="demo-ease" class="from-control aiz-selectpicker"  data-live-search="true" name="user_id"    >
                                <option value=""> {{translate('Select User')}}</option>
                                @foreach (\App\User::all() as $key => $user)
                                    <option value="{{ $user->id }}" @if($user->id == '$sort_by') selected @endif>{{ $user->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-3">
                            <button class="btn btn-light" type="submit">{{ translate('Filter') }}</button>
                        </div>
                    </div>
                </form>

                <table class="table table-bordered aiz-table mb-0">
                    <thead>
                        <tr>
                            {{-- <th>{{ translate('Subject Activity' ) }}</th> --}}

                            <th>{{ translate('Log Name') }}</th>
                            <th>{{ translate('Description') }}</th>
                            <th>{{ translate('User') }}</th>
                            <th>{{ translate('date') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ActivityLog as $key => $log)
                                <tr>
                                    {{-- @php

                                      $subject =  $log->subject_type::where('id',$log->subject_id)->first()
                                    @endphp
                                    <td>{{ (isset($subject->name))? $subject->name : ''}}</td> --}}
                                    <td>{{ $log->log_name }}</td>

                                    <td>{{ $log->description }}</td>
                                    <td>{{ \App\User::findOrFail($log->causer_id)->name }}</td>
                                    <td>{{ date('Y-m-d / h:i a' ,strtotime($log->created_at)) }}</td>
                                    {{-- ::findOrFail($log->subject_id)->name  --}}


                                </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="aiz-pagination mt-4">
                    {{ $ActivityLog->links() }}
                </div>
            </div>
        </div>
    </div>

@endsection
