<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AuthorController extends Controller
{
    public function index()
    {
        $logo = Logo::latest()->take(1);
        $authors = User::authors()
            ->withCount('posts')
            ->withCount('favorite_posts')
            ->get();
        return view('admin.author.index',compact('authors','logo'));
   }

    public function destroy($id)
    {
        $author = User::findOrFail($id)->delete();
        Toastr::success('author successfully deleted','Success');
        return redirect()->back();
   }

}
