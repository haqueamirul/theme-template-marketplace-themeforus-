<?php

namespace App\Http\Controllers;

use App\Review;
use App\Post;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function review(Request $request, $id)
    {
        if(Auth::check() )
        {
            $this->validate($request,[
                'stars' => 'required',
                'comment' => 'required'
            ]);

           $post = Post::findOrFail($id);

            $review             = new Review();
            $review->post_id  =$id;
            $review->user_id    = Auth::id();
            $review->stars      = $request->stars;
            $review->comment    = $request->comment;
            $review->save();
            Toastr::success('Your Review Successfully submited','Success');
            return redirect()->back();
        }else{
            return redirect()->route('login');
        }
    }

}
