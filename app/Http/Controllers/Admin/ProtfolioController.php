<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Protfolio;
use Brian2694\Toastr\Facades\Toastr;

class ProtfolioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $protfolios = Protfolio::latest()->get();
        return view('admin.protfolio.index',compact('protfolios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.protfolio.create');
        
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
            'title' => 'required|unique:protfolios',
            'sub_title' => 'required|unique:protfolios',
            'body' => 'required'
        ]);

        $protfolio = new Protfolio();
        $protfolio->title = $request->title;
        $protfolio->slug = str_slug($request->title);
        $protfolio->sub_title = $request->sub_title;
        $protfolio->body = $request->body;
        $protfolio->save();
        Toastr::success('Protfolio Successfully Saved','Success');
        return redirect()->route('admin.service.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $protfolio = Protfolio::findOrFail($id);
        return view('admin.protfolio.edit',compact('protfolio'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $protfolio = Protfolio::findOrFail($id);
        return view('admin.protfolio.edit',compact('protfolio'));
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
        $this->validate($request,[
            'title' => 'required|unique:protfolios',
            'sub_title' => 'required|unique:protfolios',
            'body' => 'required'
        ]);

        $protfolio = Protfolio::findOrFail($id);
        $protfolio->title = $request->title;
        $protfolio->slug = str_slug($request->title);
        $protfolio->sub_title = $request->sub_title;
        $protfolio->body = $request->body;
        $protfolio->save();
        Toastr::success('Service Successfully Updated','Success');
        return redirect()->route('admin.service.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Protfolio::findOrFail($id)->delete();
        Toastr::success('Service Successfully Deleted','Success');
        return redirect()->back();
    }
}
