@extends('layouts.app')

@section('content')
<div class="form-container">
    <div class="form-heading">
        <a href="#" class="title-link">
            <i class="fas fa-user-plus"></i>
            <h3 class="title">Đăng ký khóa học</h3>
        </a>
    </div>
    <form method="POST" action="{{ route('register-course-member.store',$course->id) }}">
        @csrf
        <div class="form-group">
            <label for="course">Chọn khóa học:</label>

            <select name="course" id="course" style="margin: auto" class="form-control">
                <option value="{{ $course->id }}" selected>{{ $course->name }}</option>
            </select>
        </div>
        <div class="form-group">
            <label for="class">Chọn thời gian học và lịch học:</label>

            <select name="class" id="class" style="margin: auto" class="form-control">
                @foreach ($course->classes as $class)
                    <option value="{{ $class->id }}">{{ $class->start }} {{ $class->schedule }}</option>
                @endforeach
            </select>
        </div>

        @if(Session::has('message'))
            <div>
                <strong class="text-primary">{{ Session::get('message') }}</strong>
            </div>
        @endif

        <button type="submit" class="btn__default btn--success" style="margin-top: 20px;">Đăng ký</button>
    </form>
</div>
@endsection