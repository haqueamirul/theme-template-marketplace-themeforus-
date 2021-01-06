<?php

namespace App\Http\Controllers;

use App\Category;
use App\Review;
use App\Post;
use App\Tag;
use App\Download;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PostController extends Controller
{
    public function PostDetails($slug)
    {
        $allreviews = Review::latest()->get();
        $downloads = Download::all();
        $tags = Tag::latest()->get();
        $post = Post::where('slug',$slug)->first();
        $blogKey = 'blog_' . $post->id;
        if (!Session::has($blogKey)) {
            $post->increment('view_count');
            Session::put($blogKey,1);
        }
        $randompost = Post::approved()->publish()->take(3)->InRandomOrder()->get();
        return view('FrontPage.single_post',compact('post','randompost','tags','allreviews','downloads'));
    }

    public function allPost()
    {
        $categories = Category::latest()->get();
        $tags = Tag::latest()->get();
       $posts = Post::latest()->approved()->publish()->paginate(6);
       return view ('FrontPage.posts',compact('posts','categories','tags'));
    }

    public function categoryByPost($slug)
    {
        $tags = Tag::latest()->get();
       $category = Category::where('slug',$slug)->first();
       $posts = $category->posts()->approved()->publish()->paginate(3);
       return view('FrontPage.categorybypost',compact('posts','tags','category'));
    }

    public function tagByPost($slug)
    {
        $categories = Category::latest()->get();
        $tag = Tag::where('slug',$slug)->first();
        $posts = $tag->posts()->approved()->publish()->paginate(6);
        return view('FrontPage.tagbypost',compact('posts','categories','tag'));
    }


    public function downloadproject($id) {


        if(Auth::check()) {
            $download  = new Download();
            $download->post_id  =$id;
            $download->user_id    = Auth::id();
            $download->download_count = 1;
            $download->save();
//        $post= Post::findOrFail('$id');
//        //$file = '../storage/uploads/zip/$post->zip';
//        $zipfile = 'storage/uploads/post/$post->zip';
//        $name = basename($zipfile);
//        return response()->download($zipfile, $name);

        $book_cover = Post::where('id', $id)->firstOrFail();
        $path = public_path(). '/storage/uploads/zip/'. $book_cover->zip;
        return response()->download($path, $book_cover
            ->original_filename, ['Content-Type' => $book_cover->mime]);
        }else{
            Toastr::info('Post Successfully Updated:)','Info');

        }
    }



}
