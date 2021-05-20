@extends('layouts.board')

@section('content')
<div class="info-container">
    <div class="info-heading">
        <a href="#" class="info-title">
            <i class="fas fa-user-circle" id="icon-padding"></i>
            <h5 class="title">Thông tin cá nhân</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #4268D6;">
    <form method="POST" action="{{ route('student.account.update-profile') }}" enctype="multipart/form-data">
        @csrf

        <div class="form-group">
            <label for="fullname">Họ và tên:</label>
            <input id="fullname" type="text" class="form-control @error('fullname') is-invalid @enderror" name="fullname" value="{{ Auth::guard('web')->user()->fullname }}" required autocomplete="fullname" autofocus>
            
            @error('fullname')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="birthday">Ngày tháng năm sinh:</label>
            <input id="birthday" type="date" class="form-control @error('birthday') is-invalid @enderror" name="birthday" value="{{ Auth::guard('web')->user()->birthday }}" required autocomplete="birthday" autofocus>
            
            @error('birthday')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input id="phone" type="tel" placeholder="0123456789" pattern="0[0-9]{9}" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ Auth::guard('web')->user()->phone }}" required autocomplete="phone" autofocus>
            
            @error('phone')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="url_avatar">Hình ảnh:</label>
            <input type="file" name="url_avatar" class="form-control @error('url_avatar') is-invalid @enderror" id="imgInp" required>
            <img class="pt-3" id="blah" width="100px" height="100px" src="{{ Auth::guard('web')->user()->url_avatar }}" />

            @error('url_avatar')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        @if(Session::has('message'))
            <span>
                <strong class="text-primary">{{ Session::get('message') }}</strong>
            </span>
        @endif

        <button type="submit" class="btn__default btn--warn " style="margin-top: 20px;">Chỉnh
            sửa</button>
    </form>
</div>

@endsection