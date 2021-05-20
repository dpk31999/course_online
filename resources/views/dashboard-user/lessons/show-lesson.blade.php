@extends('layouts.board')

@section('content')
<div class="course-container">
    <div class="learn-btn">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-sm-6 btn-center mt-30">
                    <a href="{{ route('student.lesson.show',$lesson->course->id) }}" class="btn btn-primary ">
                        <i class="fas fa-backward"></i>
                        Quay lại
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead style="background-color: #4268D6; color: #fff;">
                <tr>
                    <th>Môn học</th>
                    <th>Bài học</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $lesson->course->name }}</td>
                    <td>{{ $lesson->title }}</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="info-table-course">
        {!! $lesson->link_video !!}
    </div>
    <div class="learn-desc">

    </div>

</div>
@endsection