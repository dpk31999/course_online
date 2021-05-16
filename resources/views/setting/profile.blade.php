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
        <form method="POST" action="{{ route('setting.update-profile') }}" enctype="multipart/form-data">
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
                <input type="file" name="url_avatar" class="form-control @error('url_avatar') is-invalid @enderror" id="imgAva" required>
                <img class="pt-3" id="blahAva" src="{{ Auth::guard('web')->user()->url_avatar }}" width="100px" height="100px" />
    
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

            <button type="submit" class="btn__default btn--success" style="margin-top: 20px;">Cập nhật</button>
        </form>
      </div>
</div>
</div>
@endsection