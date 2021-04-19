<?php

namespace App\Http\Controllers;

use App\Models\Vacation;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request as HttpRequest;
use Illuminate\Routing\Controller as BaseController;

class UserController extends Controller
{

    function dashboard()
    {
        $user = auth()->user();
        if ($user->id == 1) $vacations = Vacation::orderBy('id', 'desc')->get();
        else $vacations = Vacation::where("user_id", $user->id)->orderBy('id', 'desc')->get();
        // dd($vacations->user);
        return view("dashboard", ["vacations" => $vacations]);
    }

    function apply_vacation()
    {
        return view("vacations");
    }

    function submit_vacation(HttpRequest $request)
    {
        $user = auth()->user();
        $data = $request->all();
        $dates = explode(" - ", $data["vacation_dates"]);
        $start_date = strtotime($dates[0]);
        $end_date = strtotime($dates[1]);
        // dd($data, $start_date, $end_date);
        Vacation::create([
            "reason" => $data["reason"],
            "more_info" => $data["more_info"],
            "start_date" => date('Y-m-d H:i:s', $start_date),
            "end_date" => date('Y-m-d H:i:s', $end_date),
            "user_id" => $user->id
        ]);
        return redirect('dashboard')->with('msg', "Vacation Submitted Successfully");
    }

    function take_action($id, $action)
    {
        $vacation = Vacation::find($id);
        if ($action == "approve") $vacation->approved = 1;
        elseif ($action == "reject") $vacation->approved = 0;

        $vacation->save();
        return redirect('dashboard')->with('msg', "Action Taken Successfully");
    }

    function export()
    {
        $vacations = Vacation::all();
        return $vacations;
    }
}
