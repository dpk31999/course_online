@extends('layouts.app')

@section('content')
<div class="form-container">
    <div class="form-heading">
        <a href="#" class="title-link">
            <i class="fas fa-user-plus"></i>
            <h3 class="title">Đăng ký khóa học</h3>
        </a>
    </div>
    <form action="/action_page.php">
        <div class="form-group">
            <label for="email">Chọn khóa học:</label>

            <select name="course" id="course" style="margin: auto" class="form-control">
                <option value="Java và Spring framework">Java và Spring framework</option>
                <option value="Php và laravel framework">Php và laravel framework</option>
            </select>
        </div>
        <div class="form-group">
            <label for="email">Họ và tên:</label>
            <input type="email" class="form-control" placeholder="Nhập họ và tên" id="email">
        </div>
        <div class="form-group">
            <label for="email">Ngày tháng năm sinh:</label>
            <input type="email" class="form-control" placeholder="Nhập ngày tháng năm sinh" id="email">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" placeholder="Nhập email" id="email">
        </div>
        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input type="phone" class="form-control" placeholder="Nhập số điện thoại" id="phone">
        </div>
        <div class="form-check">
            <label class="form-check-label" id="icon-custom"></label>
            <input class="form-check-input" type="checkbox"> Tôi đã đọc và đồng ý đăng ký
        </div>

        <button type="submit" class="btn btn--success " style="margin-top: 20px;">Đăng ký</button>
    </form>
</div>
@endsection