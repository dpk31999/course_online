@extends('admin.layouts.app')

@section('content')
<div class="info-container ">
    <div class="info-heading">
        <a href="#" class="info-title" style="color: #ffb702;">
            <h5 class="title">Sửa Lớp</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #ffb702;">
    <form method="POST" action="{{ route('admin.class.update', $class->id) }}" style="font-size: 16px;margin-top: 20px;">
        @csrf
        <div class="form-group">
            <label for="schedule">Lịch học</label>
            <select name="schedule" id="schedule" style="margin: auto" class="form-control">
                <option value="Tối 2-4-6" {{ $class->schedule == 'Tối 2-4-6' ? 'selected' : '' }}>Tối 2-4-6</option>
                <option value="Tối 3-5-7" {{ $class->schedule == 'Tối 3-5-7' ? 'selected' : '' }}>Tối 3-5-7</option>
            </select>
        </div>
        <div class="form-group">
            <label for="start">Thời gian bắt đầu:</label>
            <input type="date" name="start" class="form-control @error('start') is-invalid @enderror" id="start"  value="{{ $class->start }}" required autocomplete="start" autofocus>

            @error('start')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="course">Chọn khóa học: </label>
            <select name="course" id="course" style="margin: auto" class="form-control">
                @foreach ($courses as $course)
                    <option value="{{ $course->id }}" {{ $class->course->id == $course->id ? 'selected' : '' }}>{{ $course->name }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Sửa</button>
    </form>
</div>
@endsection