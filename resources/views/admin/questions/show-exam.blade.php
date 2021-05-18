@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div>{{ $exam->name }} | {{ $exam->course->name }}</div>

    <hr>

    <span>Mức độ dễ</span>
    @foreach ($exam->questions()->where('level','Easy')->get() as $question)
        <div class="row">
            <div class="col-8">
                Câu hỏi: {{ $question->name }}
            </div>
            <div class="col-4">
                <a href="{{ route('admin.question.edit',$question->id) }}"><button class="btn btn-primary">Sửa</button></a>
                <a href="{{ route('admin.question.delete',$question->id) }}"><button class="btn btn-danger">Xóa</button></a>
            </div>
        </div>
        <div class="row">
            <div class="col-8">
                <div class="row">
                    <div class="col-6">A: {{ $question->answer_1 }}</div>
                    <div class="col-6">B: {{ $question->answer_2 }}</div>
                </div>
                <div class="row">
                    <div class="col-6">C: {{ $question->answer_3 }}</div>
                    <div class="col-6">D: {{ $question->answer_4 }}</div>
                </div>
            </div>
            <div class="col-4">
                Câu trả lời đúng: {{ $question->answer_right }}
            </div>
        </div>
    @endforeach

    <hr>

    <span>Mức độ trung bình</span>
    @foreach ($exam->questions()->where('level','Medium')->get() as $question)
        <div class="row">
            <div class="col-8">
                Câu hỏi: {{ $question->name }}
            </div>
            <div class="col-4">
                <a href="{{ route('admin.question.edit',$question->id) }}"><button class="btn btn-primary">Sửa</button></a>
                <a href="{{ route('admin.question.delete',$question->id) }}"><button class="btn btn-danger">Xóa</button></a>
            </div>
        </div>
        <div class="row">
            <div class="col-8">
                <div class="row">
                    <div class="col-6">A: {{ $question->answer_1 }}</div>
                    <div class="col-6">B: {{ $question->answer_2 }}</div>
                </div>
                <div class="row">
                    <div class="col-6">A: {{ $question->answer_3 }}</div>
                    <div class="col-6">B: {{ $question->answer_4 }}</div>
                </div>
            </div>
            <div class="col-4">
                Câu trả lời đúng: {{ $question->answer_right }}
            </div>
        </div>
    @endforeach

    <hr>

    <span>Mức độ khó</span>
    @foreach ($exam->questions()->where('level','Hard')->get() as $question)
        <div class="row">
            <div class="col-8">
                Câu hỏi: {{ $question->name }}
            </div>
            <div class="col-4">
                <a href="{{ route('admin.question.edit',$question->id) }}"><button class="btn btn-primary">Sửa</button></a>
                <a href="{{ route('admin.question.delete',$question->id) }}"><button class="btn btn-danger">Xóa</button></a>
            </div>
        </div>
        <div class="row">
            <div class="col-8">
                <div class="row">
                    <div class="col-6">A: {{ $question->answer_1 }}</div>
                    <div class="col-6">B: {{ $question->answer_2 }}</div>
                </div>
                <div class="row">
                    <div class="col-6">A: {{ $question->answer_3 }}</div>
                    <div class="col-6">B: {{ $question->answer_4 }}</div>
                </div>
            </div>
            <div class="col-4">
                Câu trả lời đúng: {{ $question->answer_right }}
            </div>
        </div>
    @endforeach
</div>
@endsection