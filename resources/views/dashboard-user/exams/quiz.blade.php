@extends('layouts.board')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('web')->user()->fullname }}</h5>
        </a>
    </div>
    <div class="info-table-course">
        <div id="minute" style="display: none">{{ $exam->total_time }}</div>
        <table class="table table-st">
            <thead style="background-color: #4268D6; color: #fff;">
                <tr>
                    <th>Môn học</th>
                    <th>Loại kiểm tra</th>
                    <th>Thời gian</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $exam->course->name }}</td>
                    <td>{{ $exam->name }}</td>
                    <th id="time">{{ $exam->total_time }} Phút</th>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="star-quiz-btn">
    <button class="btn btn-primary" id="btn-start" data-id="{{ $exam->id }}" onclick="startQuiz()">Start</button>
    <form id="formQuiz" method="POST" action="{{ route('student.exam.quiz.check',$exam->id) }}">
        @csrf
        <div id="questions" class="multiple-container">
            
        </div>
    </form>
    </div>
   
</div>
@endsection