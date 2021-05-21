@extends('admin.layouts.app')

@section('content')
<div class="info-container">
    <div class="info-heading">
        <a href="#" class="info-title">
            <h5 class="title">Thêm Lớp</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #4268D6;">
    <form method="POST" action="{{ route('admin.class.store') }}" style="font-size: 16px;margin-top: 20px;">
        @csrf
        <div class="form-group">
            <label for="schedule">Lịch học</label>
            <select name="schedule" id="schedule" style="margin: auto" class="form-control">
                <option value="Tối 2-4-6">Tối 2-4-6</option>
                <option value="Tối 3-5-7" selected="selected">Tối 3-5-7</option>
                <option value="Sáng 2-4-6">Sáng 2-4-6</option>
                <option value="Sáng 3-5-7">Sáng 3-5-7</option>
                <option value="Chiều 2-4-6">Chiều 2-4-6</option>
                <option value="Chiều 3-5-7">Chiều 3-5-7</option>
            </select>
        </div>
        <div class="form-group">
            <label for="start">Thời gian bắt đầu:</label>
            <input type="date" name="start" class="form-control @error('start') is-invalid @enderror" id="start"  value="{{ old('start') }}" required autocomplete="start" autofocus>

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
                    <option value="{{ $course->id }}">{{ $course->name }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Thêm</button>
    </form>
</div>
@endsection