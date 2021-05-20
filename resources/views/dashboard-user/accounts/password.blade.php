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
       <div class="reset-container" >
        <form method="POST" action="{{ route('student.account.update-password') }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="password">Mật khẩu mới</label>
                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="password" autofocus>
                
                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <div class="form-group">
                <label for="password_confirmation">Nhập lại mật khẩu mới:</label>
                <input id="password_confirmation" type="password" class="form-control @error('password_confirmation') is-invalid @enderror" name="password_confirmation" required autocomplete="password_confirmation" autofocus>
                
                @error('password_confirmation')
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


            <a type="submit" class="btn__default bg-gradient-primary center__btn" style="margin-top: 20px;">Cập nhật</a>
        </form>
      </div>
</div>
@endsection