@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>

    </div>
    @foreach ($courses as $course)
    <div><p class="text-primary">{{$course->name}}</p></div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Loại bài kiểm tra</th>
                    <th>Trạng thái</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($course->exams as $exam)
                <tr>
                    <td>{{ $exam->name }}</td>
                    <td>{{ $exam->status }}</td>
                    <td>
                        <a type="button" class="btn btn-primary" href="{{ route('admin.exam.update',$exam->id) }}">Chỉnh sửa</a>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.exam.update.status',$exam->id) }}">@if($exam->status == 'UnLock') Khóa @else Mở khóa @endif</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    @endforeach
</div>
@endsection