@extends('layouts.board')

@section('content')
<div class="course-heading">
    <a href="#" class="info-title" style=" font-size: 20px;">
        <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
        <h5 class="title">Xin Chào: {{ Auth::guard('web')->user()->fullname }}</h5>
    </a>
</div>
<div>Môn thi: {{ $exam->course->name }}</div>
<div>Loại kiểm tra: {{ $exam->name }}</div>
<div>Điểm của bạn: {{ $countCorrectAnswer }}</div>
@endsection