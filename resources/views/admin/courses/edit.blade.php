@extends('admin.layouts.app')

@section('content')
<div class="info-container ">
    <div class="info-heading">
        <a href="#" class="info-title" style="color: #ffb702;">
            <h5 class="title">Sửa khóa học</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #ffb702;">
    <form method="POST" action="{{ route('admin.course.update', $course->id) }}" enctype="multipart/form-data" style="font-size: 16px;margin-top: 20px;">
        @csrf
        <div class="form-group">
            <label for="name">Tên Khóa học</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name"  value="{{ $course->name }}" required autocomplete="name" required autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="total_time">Thời gian học:</label>
            <div class="row">
                <div class="col-3">
                    <input type="number" name="total_time" class="form-control @error('total_time') is-invalid @enderror" id="total_time"  value="{{ $course->total_time }}" required autocomplete="total_time" autofocus>
                </div>
                <div class="col-9">
                    <span><strong>Tháng</strong></span>
                </div>
            </div>

            @error('total_time')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="url_image">Hình ảnh:</label>
            <input type="file" name="url_image" class="form-control @error('url_image') is-invalid @enderror" id="imgInp">
            <img class="pt-3" id="blah" width="100px" height="100px" src="/storage/{{ $course->url_image }}" alt="your image"/>

            @error('url_image')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        
        <div class="form-group">
            <label for="price">Giá:</label>
            <input type="text" name="price" class="form-control @error('price') is-invalid @enderror" id="price"  value="{{ $course->price }}" required autocomplete="price" autofocus required>

            @error('price')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group">
            <label for="description">Mô tả:</label>
            <textarea class="form-control @error('description') is-invalid @enderror" rows="6" id="description" name="description" required autocomplete="description" autofocus required>{{ $course->description }}</textarea>

            @error('description')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Sửa</button>
    </form>
</div>
@endsection