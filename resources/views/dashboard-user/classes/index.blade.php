@extends('layouts.board')

@section('content')
<div class="course-heading">
    <a href="#" class="info-title" style=" font-size: 20px;">
        <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
        <h5 class="title">Xin Chào: {{ Auth::guard('web')->user()->fullname }}</h5>
    </a>
</div>
<div class="info-table-course">
    <table class="table table-st">
        <thead style="background-color: #4268D6; color: #fff;">
            <tr>
                <th>Khóa học</th>
                <th>Lịch học</th>
                <th>Thời gian bắt đầu</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            @foreach (Auth::guard('web')->user()->classes as $class)
            <tr>
                <td>{{ $class->course->name }}</td>
                <td>{{ $class->schedule }}</td>
                <td>{{ $class->start }}</td>
                <td>
                    <a type="submit" class="btn btn-primary" href="{{ route('student.lesson.show',$class->course->id) }}">Xem Bài Học</a>
                    <a type="submit" class="btn btn-primary" href="{{ route('student.class.show',$class->id) }}">Xem Điểm</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection