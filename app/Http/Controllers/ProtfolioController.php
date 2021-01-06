<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Protfolio;

class ProtfolioController extends Controller
{
    public function index()
    {
        $protfolios = Protfolio::latest()->get();
        return view('welcome',compact('protfolios'));
    }
}
