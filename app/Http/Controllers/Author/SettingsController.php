<?php

namespace App\Http\Controllers\Author;

use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Carbon;

class SettingsController extends Controller
{
    public function index()
    {
        if (Auth::check() && Auth::user()->role->id == 2) {
            return view('author.setting.settings');
        } else {
            Toastr::info('you are not authorized to access', 'Info');
            return redirect()->route('login');
        }
    }


    public function Updateprofile(Request $request)
    {
        if (Auth::check() && Auth::user()->role->id == 2) {

            $this->validate($request, [
                'name' => 'required',
                'email' => 'required|email'
            ]);

            // $user = User::findOrFail(Auth::id());
            // $profile = $request->file('image');
            // $slug = str_slug($request->name);
            // if (isset($profile))
            // {
            //     $currentDate = Carbon::now()->toDateString();
            //     $profilepic = $slug.'-'.$currentDate.'-'. uniqid() .'.'. $profile->getClientOriginalExtension();
            //     $logo_resize = Image::make($profile->getRealPath());   
            //     $logo_resize->resize(200,200);
            //     if (!file_exists('storage/uploads/profile'))
            //     {
            //         mkdir('storage/uploads/profile',0777,true);
            //     }
            //     unlink('storage/uploads/profile/'.$user->image);
            //     $logo_resize->save('storage/uploads/profile/'.$profilepic);
            // }else{
            //     $profilepic = $user->image;
            // }

            
            $image = $request->file('image');
            $slug = str_slug($request->name);
            if (isset($image))
            {
                $currentDate = Carbon::now()->toDateString();
                $imagename = $slug.'-'.$currentDate.'-'. uniqid() .'.'. $image->getClientOriginalExtension();
                $image_resize = Image::make($image->getRealPath());
                $image_resize->resize(1600,1066);
                if (!file_exists('storage/uploads/profile'))
                {
                    mkdir('storage/uploads/profile',0777,true);
                }
                unlink('storage/uploads/profile/'.Auth::user()->image);
                $image_resize->save('storage/uploads/profile/'.$imagename);
            }else{
                $imagename = Auth::user()->image;
            }
            $user = User::find(Auth::id());
            $user->name = $request->name;

            if(isset($request->buyer)){
            $user->buyer = $request->buyer;
            }else{
                $user->buyer = 2;
            }
            if(isset($request->seller)){
                $user->seller = $request->seller;
                }else{
                    $user->seller = 2;
                }
            $user->email = $request->email;
            $user->image = $imagename;
            $user->save();
            Toastr::success('Profile Successfully Updated :)', 'Success');
            return redirect()->back();
        }

    }


    public function Updatepassword(Request $request)
    {
        if (Auth::check() && Auth::user()->role->id == 2) {
            $this->validate($request, [
                'old_password' => 'required',
                'password' => 'required|confirmed',
            ]);
            $hashedPassword = Auth::user()->password;
            if (Hash::check($request->old_password, $hashedPassword)) {
                if (!Hash::check($request->password, $hashedPassword)) {
                    $user = User::find(Auth::id());
                    $user->password = Hash::make($request->password);
                    $user->save();
                    Toastr::success('Password Successfully Changed', 'Success');
                    Auth::logout();
                    return redirect()->back();
                } else {
                    Toastr::error('New password cannot be the same as old password.', 'Error');
                    return redirect()->back();
                }
            } else {
                Toastr::error('Current password not match.', 'Error');
                return redirect()->back();
            }
        }
    }
}
