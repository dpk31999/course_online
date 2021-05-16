<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class SettingController extends Controller
{
    public function showFormUpdateProfile()
    {
        return view('setting.profile');
    }

    public function updateProfile(Request $request)
    {
        $data = $request->validate([
            'fullname' => 'required|max:255',
            'birthday' => 'required',
            'phone' => 'required',
        ]);

        if(isset($request->url_avatar))
        {
            // DELETE IMAGE EXIST
            if(File::exists(public_path(Auth::guard('web')->user()->url_avatar))){

                File::delete(public_path(Auth::guard('web')->user()->url_avatar));
            }

            // UPLOAD NEW IMAGE
            $image = $request->file('url_avatar');
            $image_path = '/storage/uploads/image_course/' . time() . '.' . $image->getClientOriginalExtension();
            $path = public_path('/storage/uploads/image_course');

            $image->move($path ,$image_path);
        }
        else
        {
            $image_path = Auth::guard('web')->user()->url_avatar;
        }

        Auth::guard('web')->user()->fullname = $data['fullname'];
        Auth::guard('web')->user()->birthday = $data['birthday'];
        Auth::guard('web')->user()->phone = $data['phone'];
        Auth::guard('web')->user()->url_avatar = $image_path;
        Auth::guard('web')->user()->save();

        $request->session()->flash('message', 'Thay đổi thông tin thành công!');

        return redirect()->route('setting.edit-profile');
    }

    public function showFormUpdatePassword()
    {
        return view('setting.password');
    }

    public function updatePassword(Request $request)
    {
        $data = $request->validate([
            'password' => 'required|confirmed',
        ]);

        $request->session()->flash('message', 'Đổi mật khẩu thành công!');

        Auth::guard('web')->user()->password = Hash::make($data['password']);
        Auth::guard('web')->user()->save();

        return redirect()->route('setting.edit-password');
    }
}
