<?php

namespace App\Http\Controllers;

use App\Aboutus;
use App\Vedio;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AboutController extends Controller
{
    public function index()
    {
        $allreview = Aboutus::latest()->take(4)->get();
        $abouts = Aboutus::latest()->take(1)->get();
        $vedios = Vedio::latest()->take(1)->get();
        return view('FrontPage.abouts', compact('abouts', 'allreview','vedios'));


    }
}
