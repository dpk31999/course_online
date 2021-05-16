@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-md-3">
    <div class="card settings-card">
        <div class="card-header">
            Chỉnh sửa
        </div>
        <ul class="nav flex-column nav-pills">
            <li class="nav-item active">
            <a href="{{ route('setting.edit-profile') }}">
                <i></i>
                Profile
            </a>
            </li>
            <li class="nav-item">
            <a href="{{ route('setting.edit-password') }}">
                <i></i>
                Password
            </a>
            </li>
        </ul>
    </div>
</div>

<div class="col-md-9">
    <div class="card">
        <div class="card-header">
            Thông tin của bạn
        </div>
        <form method="POST" action="{{ route('setting.update-password') }}" enctype="multipart/form-data">
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


            <button type="submit" class="btn__default btn--success" style="margin-top: 20px;">Cập nhật</button>
        </form>
      </div>
</div>
</div>
@endsection