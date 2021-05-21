@extends('layouts.app')

@section('content')
<div class="form-container">
    <div class="form-heading">
        <a class="title-link">
            <i class="fas fa-angle-double-down"></i>
            <h3 class="title">Đăng nhập vào hệ thống</h3>
        </a>
    </div>
    <form method="POST" action="{{ route('login') }}">
        @csrf
        <div class="form--group">
            <label for="email" class="form__label">Tên đăng nhập:</label>
            <div class="form-input">
                <i class="fas fa-user" id="icon-custom"></i>
                <input id="email" type="email" class="form__input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
            
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        <div class="form--group">
            <label for="pwd">Mật khẩu:</label>
            <div class="form-input">
                <i class="fas fa-lock" id="icon-custom"></i>
                <input id="password" type="password" class="form__input @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>
        @if(isset($error))
            <span>
                <strong class="text-danger">{{ $error }}</strong>
            </span>
        @endif
        <div class="form-button">
            <button  class="btn-default btn--success">Đăng nhập</button>
            
            @if (Route::has('password.request'))
             <button href="{{ route('password.request') }}" class="btn-default btn--success ml-3">
                {{ __('Forgot Your Password?') }}
             </button>
            @endif
        </div>
        

    </form>
   
</div>
@endsection
