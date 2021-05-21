@extends('layouts.board')

@section('content')

<div class="course-heading">
    <a href="#" class="info-title" style=" font-size: 20px;">
        <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
        <h5 class="title">Xin Chào: {{ Auth::guard('web')->user()->fullname }}</h5>
    </a>
</div>
@foreach (Auth::guard('web')->user()->classes as $class)
    <div>{{ $class->course->name }}</div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead style="background-color: #4268D6; color: #fff;">
                <tr>
                    <th>Lịch học</th>
                    <th>Điểm</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($class->course->exams as $exam)
                <tr>
                    <td>{{ $exam->name }}</td>  
                    <td>{{$exam->scores->where('id',Auth::guard('web')->user()->id)->first()->pivot->score ?? 'Chưa có'}}</td>
                    <td>
                        @if (!isset($exam->scores->where('id',Auth::guard('web')->user()->id)->first()->pivot->score) && $exam->status == 'UnLock')
                        <a type="submit" class="btn btn-primary" href="{{ route('student.exam.quiz',$exam->id) }}">Làm bài thi</a>
                        @endif
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

@endsection