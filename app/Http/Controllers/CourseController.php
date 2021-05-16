<?php

namespace App\Http\Controllers;

use App\User;
use App\Course;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function create(Request $request,Course $course)
    {
        $data = $request->validate([
            'course' => 'required',
            'class' => 'required',
            'fullname' => 'required|max:255',
            'birthday' => 'required',
            'phone' => 'required',
            'email' => 'required|email|max:255|unique:users',
        ]);

        $user = User::create([
            'fullname' => $data['fullname'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'birthday' => $data['birthday'],
            'url_avatar' => 'https://ui-avatars.com/api/?name=' . $data['fullname'],
            'password' => '',
            'status' => 'Waiting'
        ]);

        $user->classes()->attach($data['class']);

        $request->session()->flash('message', 'Đăng ký thành công, tài khoản sẽ được duyệt bởi quản trị viên!');

        return redirect()->route('register-course',$course->id);
    }

    public function showFormRegisterCourse(Course $course)
    {
        return view('registercourse',compact('course'));
    }
}
