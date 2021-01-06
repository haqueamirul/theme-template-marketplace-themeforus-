<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contact;
use Brian2694\Toastr\Facades\Toastr;

class ContactController extends Controller
{
    public function create()
    {
        return view('FrontPage.contact');
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'website' =>'required',
            'phone' => ['required', 'numeric'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'body' => 'required'
        ]);

        $contact = new Contact();
        $contact->name = $request->name;
        $contact->website = $request->website;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->body = $request->body;
        $contact->save();
        Toastr::success('Your Message Successfully Send','Success');
        return redirect()->back();
    }
}
