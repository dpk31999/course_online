@extends('layouts.board')

@section('content')
<div class="course-heading">
    <a href="#" class="info-title" style=" font-size: 20px;">
        <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
        <h5 class="title">Xin Chào: {{ Auth::guard('web')->user()->fullname }}</h5>
    </a>
    <a href="#" class="info-title" style=" font-size: 20px;">
        <h5 class="title">Khóa học: {{ $class->course->name }}</h5>
    </a>
</div>
<div class="info-table-course">
    <table class="table table-st">
        <thead style="background-color: #4268D6; color: #fff;">
            <tr>
                <th>Loại kiểm tra</th>
                <th>Điểm</th>
                <th>Vắng</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($class->course->exams as $exam)
            <tr>
                <td>{{ $exam->name }}</td>
                @php
                    $score = 0;
                    foreach($exam->scores as $score)
                    {
                        if($score->id == Auth::guard('web')->user()->id)
                        {
                            $score = $score->pivot->score;
                        }
                    }
                @endphp
                <td>{{ $score }}</td>
                <td>0</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>  
@endsection