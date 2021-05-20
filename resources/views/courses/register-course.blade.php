@extends('layouts.app')

@section('content')
<div class="form-container">
    <div class="form-heading">
        <a href="#" class="title-link">
            <i class="fas fa-user-plus"></i>
            <h3 class="title">Đăng ký khóa học</h3>
        </a>
    </div>
    <form method="POST" action="{{ route('register-course.store',$course->id) }}">
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
        <div class="form-group">
            <label for="fullname">Họ và tên:</label>
            <input id="fullname" type="text" class="form-control @error('fullname') is-invalid @enderror" name="fullname" value="{{ old('fullname') }}" required autocomplete="fullname" autofocus>
            
            @error('fullname')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="birthday">Ngày tháng năm sinh:</label>
            <input id="birthday" type="date" class="form-control @error('birthday') is-invalid @enderror" name="birthday" value="{{ old('birthday') }}" required autocomplete="birthday" autofocus>
            
            @error('birthday')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
            
            @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input id="phone" type="tel" placeholder="0123456789" pattern="0[0-9]{9}" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" required autocomplete="phone" autofocus>
            
            @error('phone')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
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