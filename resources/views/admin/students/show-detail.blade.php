@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div>Tên: {{ $user->fullname }}</div>
    <div>Email: {{ $user->email }}</div>
    <div>Số điện thoại: {{ $user->phone }}</div>

    <hr>

    <div>Các lớp học đã tham gia</div>  
    @foreach ($user->classes as $class)
        <h4><strong>Khóa học: {{ $class->course->name }}</strong></h4>
        <p>Lịch học: {{ $class->schedule }}</p>
        <p>Ngày bắt đầu: {{ $class->start }}</p>
    @endforeach
</div>
@endsection