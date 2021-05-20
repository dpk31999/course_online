@extends('admin.layouts.app')

@section('content')
<div class="form-container" style="margin-top: -10px;">
    <div class="form-heading">
        <a href="#" class="form-title-link">
            <i class="fas fa-user-circle" id="icon-custom"></i>
            <h3 class="title">Đăng nhập vào hệ thống</h3>
        </a>
    </div>
    <form method="POST" action="{{ route('admin.excute.login') }}">
        @csrf
        <div class="form-group">
            <label for="email">Tên đăng nhập:</label>
            <div class="form-input">
                <i class="fas fa-user" id="icon-custom"></i>
                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
            
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form-group">
            <label for="pwd">Mật khẩu:</label>
            <div class="form-input">
                <i class="fas fa-lock" id="icon-custom"></i>
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
                
            </div>
        </div>
        @if(isset($error))
            <span>
                <strong>{{ $error }}</strong>
            </span>
        @endif
        <div class="form-button">
            <button type="submit" class="btn_default btn-add center_btn">Đăng nhập</button>
        </div>
    </form>
</div>
@endsection