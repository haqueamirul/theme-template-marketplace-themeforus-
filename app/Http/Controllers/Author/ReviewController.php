<?php

namespace App\Http\Controllers\Author;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Review;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function index()
    {
        $posts = Auth::user()->posts;
        return view('author.reviews.index',compact('posts'));
    }

    public function destroy($id)
    {
       $review = Review::findOrFail($id);
       if($review->post->user->id == Auth::id())
       {
        $review->delete();
        Toastr::success('Review Successfully Deleted','Success');
       }else{
        Toastr::error('you are no authorized its review','Access Denied!!');
       }
        
        return redirect()->back();
    }
}
