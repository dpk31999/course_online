@extends('admin.layouts.app')

@section('content')
<div class="info-container">
    <div class="info-heading">
        <a href="#" class="info-title">
            <h5 class="title">Thêm thông báo riêng</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #4268D6;">
    <form method="POST" action="{{ route('admin.notification.private.store') }}" style="font-size: 16px;margin-top: 20px;">
        @csrf
        <div class="form-group">
            <label for="user">Chọn học viên: </label>
            <select name="user" id="user" style="margin: auto" class="form-control">
                @foreach ($users as $user)
                    <option value="{{ $user->id }}">{{ $user->email }} {{ $user->fullname }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="title">Tiêu đề</label>
            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" id="title"  value="{{ old('title') }}" required autocomplete="title" autofocus>

            @error('title')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="content">Nội dung:</label>
            <textarea class="form-control @error('content') is-invalid @enderror" rows="6" id="content" name="content" value="{{ old('content') }}" required autocomplete="content" autofocus required>
            </textarea>

            @error('content')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Thêm</button>
    </form>
</div>
@endsection