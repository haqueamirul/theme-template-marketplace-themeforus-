<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Vedio;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Carbon;


class VedioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vedios = Vedio::latest()->get();
        return view('admin.vedio.index',compact('vedios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.vedio.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request,[
          'vedio' =>'required'

      ]);
      $image = $request->file('vedio');
        if (isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imagename =$currentDate .'-'. uniqid() .'.'. $image->getClientOriginalExtension();
            if (!file_exists('storage/uploads/vedio'))
            {
                mkdir('storage/uploads/vedio', 0777 , true);
            }
            $image->move('storage/uploads/vedio',$imagename);
        }else {
            $imagename = 'dafault.mp4';
        }
          $vedio = new Vedio();
          $vedio->vedio = $imagename;
          $vedio->save();
          Toastr::success('Vedio Successfully Save:)','Success');
          return redirect()->route('admin.vedio.index');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $vedio = Vedio::findOrFail($id);
        return view('admin.vedio.edit',compact('vedio'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $vedio = Vedio::find($id);
        $image = $request->file('vedio');
          if (isset($image))
          {
              $currentDate = Carbon::now()->toDateString();
              $imagename =$currentDate .'-'. uniqid() .'.'. $image->getClientOriginalExtension();
              if (!file_exists('storage/uploads/vedio'))
              {
                  mkdir('storage/uploads/vedio', 0777 , true);
              }
              unlink('storage/uploads/vedio/'.$vedio->vedio);
              $image->move('storage/uploads/vedio',$imagename);
          }else {
              $imagename = $vedio->vedio;
          }

            $vedio->vedio = $imagename;
            $vedio->save();
            Toastr::success('Vedio Successfully Updated:)','Success');
            return redirect()->route('admin.vedio.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $vedio = Vedio::findOrFail($id);

        if(Storage::disk('public')->exists('uploads/vedio/'.$vedio->vedio))
        {
            Storage::disk('public')->delete('uploads/vedio/'.$vedio->vedio);
        }
        $vedio->delete();
        Toastr::success('Vedio Successfully Deleted','Success');
        return redirect()->back();
    }
}
