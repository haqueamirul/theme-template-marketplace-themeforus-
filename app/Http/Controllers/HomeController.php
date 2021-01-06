<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Tag;
use App\Protfolio;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       $categories = Category::latest()->get();
       $protfolios = Protfolio::all();
        $allposts = Post::where('price', 0)->approved()->publish()->take(6)->get();
        $posts = Post::latest()->where('price', '>=', 0)->approved()->publish()->take(6)->get();
        $latestposts = Post::latest()->approved()->publish()->take(6)->get();
        return view('welcome',compact('posts','categories','allposts','latestposts','protfolios'));
    }

    public function HTMLfreeTemplate()
    {
      //  $posts = Post::latest()->where()
    }

    public function categoryPost()
    {
        $categories = Category::latest()->get();
        $tags = Tag::lest()->get();
        return view('frontend.partial.header',compact('categories','tags'));
    }

}
