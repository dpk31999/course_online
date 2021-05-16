<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Mail\SendPasswordReset;
use App\Http\Controllers\Controller;
use App\Mail\SendRequestRegisCourse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class StudentController extends Controller
{
    public function index()
    {
        $users = User::where('status','Active')->get();

        return view('admin.students.index-manager',compact('users'));
    }

    public function show(User $user)
    {
        return view('admin.students.show-detail',compact('user'));
    }

    public function indexRegister()
    {
        $users = User::where('status','Waiting')->get();

        return view('admin.students.index-admin',compact('users'));
    }

    public function allow(User $user)
    {
        $user->status = 'Active';
        $passwordRand = Str::random(8);
        $user->password = Hash::make($passwordRand);
        
        Mail::to($user->email)->send(new SendRequestRegisCourse([
            'passwordSend' => $passwordRand,
            'user' => $user,
            'status' => 'allow'
        ]));

        $user->save();

        return redirect()->route('admin.student.index.admin');
    }

    public function refuse(User $user)
    {
        Mail::to($user->email)->send(new SendRequestRegisCourse([
            'status' => 'refuse'
        ]));

        $user->classes()->detach($user->classes->first()->id);

        $user->delete();

        return redirect()->route('admin.student.index.admin');
    }

    public function indexResetPassword()
    {
        $users = User::where('status','Reset')->get();

        return view('admin.students.index-reset-pass',compact('users'));
    }

    public function resetAllow(User $user)
    {
        $user->status = 'Active';
        $passwordRand = str_random(8);
        $user->password = Hash::make($passwordRand);
        $user->save();

        Mail::to($user->email)->send(new SendPasswordReset([
            'passwordSend' => $passwordRand,
            'user' => $user,
        ]));

        return redirect()->route('admin.student.index.admin');
    }

}
