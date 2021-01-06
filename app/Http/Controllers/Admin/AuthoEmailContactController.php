<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Authoremail;
use Brian2694\Toastr\Facades\Toastr;

class AuthoEmailContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $allinformation = Authoremail::latest()->get();
        return view('admin.email.index',compact('allinformation'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.email.create');
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
            'email' => ['required', 'string', 'email', 'max:255', 'unique:authoremails'],
            'number' => 'required', 
            'address' => 'required'
        ]);

        $email = new Authoremail();
        $email->email = $request->email;
        $email->number = $request->number;
        $email->address = $request->address;
        $email->save();
        Toastr::success('Email and Contact Successfully Saved','Success');
        return redirect()->route('admin.email.index');
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
        $email = Authoremail::findOrFail($id);
        return view('admin.email.edit',compact('email'));
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
            'email' => ['required', 'string', 'email', 'max:255', 'unique:authoremails'],
            'number' => 'required', 
            'address' => 'required'
        ]);

        $email =  Authoremail::find($id);
        $email->email = $request->email;
        $email->number = $request->number;
        $email->address = $request->address;
        $email->save();
        Toastr::success('Email and Contact Successfully Saved','Success');
        return redirect()->route('admin.email.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Authoremail::findOrFail($id)->delete();
        Toastr::success('Email and Contact Successfully Deleted','Success');
        return redirect()->back();
    }
}
