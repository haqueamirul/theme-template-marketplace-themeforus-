<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Download;
use App\Http\Controllers\Controller;

class DownLoadController extends Controller
{
    public function index()
    {
        $downloads = Download::latest()->get();
        return view('admin.download.index',compact('downloads'));
    }

    // public function destroy($id)
    // {
    //     Download::find($id)->delete();
    //     Toastr::success('Download Successfully Deleted','Success');
    //     return redirect()->back();
    // }


    public function downloadproject($id) {

        $book_cover = Post::where('id', $id)->firstOrFail();
        $path = public_path(). '/storage/uploads/zip/'. $book_cover->zip;
        return response()->download($path, $book_cover
            ->original_filename, ['Content-Type' => $book_cover->mime]);
        
        
        
    }
}
