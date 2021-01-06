<?php

namespace App\Http\Controllers\Author;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function index()
    {
        $posts  = Auth::user()->favorite_posts;
        if($posts->count() > 0){
        return view('admin.favorite.index',compact('posts'));
      }else{
        Toastr::error('Your have not any Favorite post!!!!','Error');
        return redirect()->back();
      }
    }
}
