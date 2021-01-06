<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Review;
use Brian2694\Toastr\Facades\Toastr;

class ReviewController extends Controller
{
    public function index()
    {
        $reviews = Review::latest()->get();
        return view('admin.reviews.index',compact('reviews'));
    }

    public function destroy($id)
    {
        Review::findOrFail($id)->delete();
        Toastr::success('Review Successfully Deleted','Success');
        return redirect()->back();
    }
}
