<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Logo;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class LogoController extends Controller
{
    public function index()
    {
        $logos = Logo::latest()->take(1)->get();
        return view('admin.logo.index',compact('logos'));
    }

    public function edit($id)
    {
        $logo = Logo::findOrFail($id);
        return view('admin.logo.edit',compact('logo'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title' => 'required',
            'logo' => 'required'
        ]);
        $getlogo = Logo::findOrFail($id);
        $logo = $request->file('logo');
        $slug = str_slug($request->title);
        if (isset($logo))
        {
            $currentDate = Carbon::now()->toDateString();
            $logoname = $slug.'-'.$currentDate.'-'. uniqid() .'.'. $logo->getClientOriginalExtension();
            $logo_resize = Image::make($logo->getRealPath());   
            $logo_resize->resize(200,200);
            if (!file_exists('storage/uploads/logo'))
            {
                mkdir('storage/uploads/logo',0777,true);
            }
            unlink('storage/uploads/logo/'.$getlogo->logo);
            $logo_resize->save('storage/uploads/logo/'.$logoname);
        }else{
            $logoname = $getlogo->logo;
        }
        
        $getlogo->title = $request->title;
        $getlogo->logo = $logoname;
        $getlogo->save();
        Toastr::success('logo Successfully Updated :)','Success');
        return redirect()->back();
    }

    public function logoimage()
    {
        $logo = Logo::latest()->take(1);
        return view('admin.app',compact('logo'));
    }

    

    
}
