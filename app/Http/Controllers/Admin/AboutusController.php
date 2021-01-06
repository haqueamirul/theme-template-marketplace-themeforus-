<?php

namespace App\Http\Controllers\Admin;

use App\Aboutus;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class AboutusController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $logo = Logo::latest()->take(1);
        $abouts = Aboutus::latest()->get();
        return view('admin.about.index', compact('abouts','logo'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.about.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'image' => 'mimes:jpeg,jpg,bmp,png',
            'body' => 'required',

        ]);

        $image = $request->file('image');
        $slug = str_slug($request->title);
        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imagename = $slug . '-' . $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();
            $image_resize = Image::make($image->getRealPath());
            $image_resize->resize(1600, 1066);
            if (!file_exists('storage/uploads/review')) {
                mkdir('storage/uploads/review', 0777, true);
            }
            //$image->move('storage/uploads/review',$imagename);
            $image_resize->save('storage/uploads/review/' . $imagename);
        } else {
            $imagename = "default.png";
        }

        $about = new Aboutus();
        $about->title = $request->title;
        $about->image = $imagename;
        $about->body = $request->body;
        $about->save();
        Toastr::success('review Successfully Save:)', 'Success');
        return redirect()->route('admin.about.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $about = Aboutus::findOrFail($id);
        return view('admin.about.show', compact('about'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $about = Aboutus::findOrFail($id);
        return view('admin.about.edit', compact('about'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        {
            $this->validate($request, [
                'title' => 'required',
                'body' => 'required',

            ]);
        $about= Aboutus::findOrFail($id);
        $image = $request->file('image');
        $slug = str_slug($request->title);
        if (isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imagename = $slug.'-'.$currentDate.'-'. uniqid() .'.'. $image->getClientOriginalExtension();
            $image_resize = Image::make($image->getRealPath());
            $image_resize->resize(1600,1066);
            if (!file_exists('storage/uploads/review'))
            {
                mkdir('storage/uploads/review',0777,true);
            }
            unlink('storage/uploads/review/'.$about->image);
            $image_resize->save('storage/uploads/review/'.$imagename);
            }else{
                $imagename = $about->image;
            }

            $about= Aboutus::findOrFail($id);
            $about->title = $request->title;
            $about->image = $imagename;
            $about->body = $request->body;
            $about->save();
            Toastr::success('review Successfully Update:)', 'Success');
            return redirect()->route('admin.about.index');
        }
    }

        /**
         * Remove the specified resource from storage.
         *
         * @param  int $id
         * @return \Illuminate\Http\Response
         */
        public function destroy($id)
        {
        $about = Aboutus::findOrFail($id);

             if(Storage::disk('public')->exists('storage/uploads/review/'.$about->image))
               {
                   Storage::disk('public')->delete('storage/uploads/review/'.$about->image);
               }

        $about->delete();
        Toastr::success('review Successfully Deleted :)','Success');
        return redirect()->back();
        }
    }
