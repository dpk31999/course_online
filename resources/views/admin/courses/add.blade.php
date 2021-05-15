@extends('admin.layouts.app')

@section('content')
<div class="info-container">
    <div class="info-heading">
        <a href="#" class="info-title">
            <h5 class="title">Thêm khóa học</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #4268D6;">
    <form action="#" style="font-size: 16px;margin-top: 20px;">

        <div class="form-group">
            <label for="email">Tên Khóa học</label>
            <input type="email" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="email">Giá:</label>
            <input type="email" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="email">Lịch Khai giảng:</label>
            <input type="datetime" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="email">Lịch học:</label>
            <input type="email" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="choose">Hình ảnh:</label>
            <input type="file" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="email">Mô tả:</label>
            <textarea class="form-control" rows="6" id="comment" name="mô tả"></textarea>
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Thêm</button>
    </form>
</div>
@endsection