<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-5">
                <h1>Vacations:</h1>

                <div class="accordion accordion-flush" id="accordionFlushExample">

                    @foreach($vacations as $vacation)
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingOne{{$vacation->id}}">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne{{$vacation->id}}" aria-expanded="false" aria-controls="flush-collapseOne{{$vacation->id}}">
                        
                        @if(is_null($vacation->approved))
                        @elseif($vacation->approved==1)
                            <span class="badge bg-success">Approved</span>
                        @elseif($vacation->approved==0)
                            <span class="badge bg-danger">Rejected</span>
                        @endif
&nbsp;
                            <span class='text-capitalize'><span class="h6">{{$vacation->user->name}}</span> - {{$vacation->reason}}</span>
                        
                        </button>
                      </h2>
                      <div id="flush-collapseOne{{$vacation->id}}" class="accordion-collapse collapse" aria-labelledby="flush-headingOne{{$vacation->id}}" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            
                            <table class="table ">
                                <tr>
                                    <td>Vacation Reason: </td>
                                    <td class="text-capitalize">{{ $vacation->reason   }}</td>
                                </tr>
                                <tr>
                                    <td>From: </td>
                                    <td>{{ date('d M - Y', strtotime($vacation->start_date))   }}</td>
                                </tr>
                                <tr>
                                    <td>To: </td>
                                    <td>{{ date('d M - Y', strtotime($vacation->end_date))   }}</td>
                                </tr>
                                <tr>
                                    <td>How Many Days: </td>
                                    <td>{{$vacation->end_date->diffInDays($vacation->start_date)==0 ? 1 : $vacation->end_date->diffInDays($vacation->start_date)}} Days</td>
                                </tr>
                                <tr>
                                    <td>Application Submitted: </td>
                                    <td>{{$vacation->created_at->diffForHumans(new \Carbon\Carbon())}}</td>
                                </tr>
                            </table>
                        
                            <pre class="pre shadow-xl sm:rounded-lg mt-2 p-4">More Info: {{$vacation->more_info}}</pre>
                            
                            @if(is_null($vacation->approved))
                            @if(auth()->user()->id==1)
                            <div class="btn-group col-12 mb-5">
                                <a class="btn btn-dark col" href="{{url("take-action/$vacation->id/approve")}}">Approve</a>
                                <a class="btn btn-warning col" href="{{url("take-action/$vacation->id/reject")}}">Reject</a>
                            </div>
                            @else
                                <button class="btn-warning btn-lg">Pending</button>
                            @endif
                            @elseif($vacation->approved==1)
                                <button class="btn-success btn-lg">Approved</button>
                            @elseif($vacation->approved==0)
                                <button class="btn-danger btn-lg">Rejected</button>
                            @endif

                            @if(auth()->user()->id==1 && !is_null($vacation->approved))
                            <div class="border-5 m-1 p-2 mb-5">
                                <h4 class='mt-3'>Change Your Decision</h4>
                            <div class="btn-group col-12">
                                <a class="btn btn-dark col" href="{{url("take-action/$vacation->id/approve")}}">Approve</a>
                                <a class="btn btn-warning col" href="{{url("take-action/$vacation->id/reject")}}">Reject</a>
                            </div>
                            </div>
                            @endif

                        </div>
                      </div>
                    </div>
                    @endforeach


                <hr />
                <a class="btn btn-lg btn-dark col-12" href="{{url('apply-vacation')}}">Apply For A Vacation</a>
            </div>
        </div>
    </div>
</x-app-layout>
