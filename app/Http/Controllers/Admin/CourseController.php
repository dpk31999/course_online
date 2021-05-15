<?php

namespace App\Http\Controllers\Admin;

use App\Course;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CourseController extends Controller
{
    public function index()
    {
        return view('admin.courses.index');
    }

    public function show(Course $course)
    {
        return view('admin.courses.show',compact($course));
    }

    public function create()
    {
        return view('admin.courses.add');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|unique:courses',
            'total_time' => 'required',
            'schudule' => 'required',
            'url_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg,jfif|max:2048',
            'start' => 'required',
            'price' => 'required',
            'description' => 'required',
        ]);

        $image = $request->file('url_image');
        $image_path = 'uploads/image_course/' . time() . '.' . $image->getClientOriginalExtension();
        $path = public_path('/storage/uploads/image_course');

        $image->move($path ,$image_path);

        $course = Course::create([
            'admin_id' => Auth::guard('admin')->user()->id,
            'name' => $data['name'],
            'total_time' => $data['total_time'],
            'schudule' => $data['schudule'],
            'url_image' => $image_path,
            'start' => $data['start'],
            'price' => $data['price'],
            'description' => $data['description'],
        ]);

        return view('admin.course.index');
    }

    public function edit()
    {
        return view('admin.courses.edit');
    }

    public function update(Request $request,Course $course)
    {
        $data = $request->validate([
            'name' => 'required',
            'total_time' => 'required',
            'schudule' => 'required',
            'start' => 'required',
            'price' => 'required',
            'description' => 'required',
        ]);

        if(isset($request->url_image))
        {
            // DELETE IMAGE EXIST
            if(File::exists(public_path('storage/' . $course->url_image))){

                File::delete(public_path('storage/' . $course->url_image));
            }

            // UPLOAD NEW IMAGE
            $image = $request->file('url_image');
            $image_path = 'uploads/image_course/' . time() . '.' . $image->getClientOriginalExtension();
            $path = public_path('/storage/uploads/image_course');

            $image->move($path ,$image_path);
        }
        else
        {
            $image_path = $course->url_image;
        }

        $course->name = $data['name'];
        $course->total_time = $data['total_time'];
        $course->schudule = $data['schudule'];
        $course->url_image = $image_path;
        $course->start = $data['start'];
        $course->price = $data['price'];
        $course->description = $data['description'];
        $course->save();

        return view('admin.courses.index');
    }

    public function destroy(Request $request,Course $course)
    {
        if(File::exists(public_path('storage/' . $course->url_image))){

            File::delete(public_path('storage/' . $course->url_image));
        }

        $course->delete();

        return view('admin.course.index');
    }
}
