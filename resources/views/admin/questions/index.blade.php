@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div class="icon_sub">
        <a href="{{ route('admin.question.add') }}">
            <i class="fas fa-plus-circle fa-lg fa-fw mr-2 color__admin "></i>
        </a>

    </div>
    @foreach ($courses as $course)
    <div><p class="text-primary">{{$course->name}}</p></div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Loại bài kiểm tra</th>
                    <th>Số câu hỏi dễ</th>
                    <th>Số câu hỏi trung bình</th>
                    <th>Số câu hỏi khó</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($course->exams as $exam)
                <tr>
                    <td>{{ $exam->name }}</td>
                    <td>{{ $exam->questions()->where('level','Easy')->get()->count() }}</td>
                    <td>{{ $exam->questions()->where('level','Medium')->get()->count() }}</td>
                    <td>{{ $exam->questions()->where('level','Hard')->get()->count() }}</td>
                    <td>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.question.show.exam',$exam->id) }}">Xem chi tiết</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    @endforeach
</div>
@endsection