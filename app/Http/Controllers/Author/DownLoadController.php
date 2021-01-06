<?php

namespace App\Http\Controllers\Author;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Download;
use Illuminate\Support\Facades\Auth;

class DownLoadController extends Controller
{
    public function index()
    {
        if(Auth::user()->seller == 1){
        $downloads =  Auth::user()->posts()->latest()->get();
        return view('author.download.index',compact('downloads'));
      }else{
        Toastr::error('you are no authorized!!!!!','Access Denied!!');
        return redirect()->back();
      }
    }
}
