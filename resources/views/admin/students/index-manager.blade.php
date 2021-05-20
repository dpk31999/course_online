@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div>Học viên đang học 123</div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Tên</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Số lớp học</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                <tr>
                    <td>{{ $user->fullname }}</td>
                    <td>{{ $user->email}}</td>
                    <td>{{ $user->phone }}</td>
                    <td>{{ $user->classes->count() }}</td>
                    <td>
                        <a type="submit" class="btn btn-primary" href="{{ route('admin.student.show',$user->id) }}">Chi tiết</a>
                        <a type="submit" class="btn btn-danger" href="{{ route('admin.student.destroy',$user->id) }}">Xóa tài khoản</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div>Học viên đăng ký</div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Tên</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($userRegisters as $user)
                <tr>
                    <td>{{ $user->fullname }}</td>
                    <td>{{ $user->email}}</td>
                    <td>{{ $user->phone }}</td>
                    <td>
                        <a type="submit" class="btn btn-primary" href="{{ route('admin.student.allow',$user->id) }}">Duyệt</a>
                        <a type="submit" class="btn btn-danger" href="{{ route('admin.student.refuse',$user->id) }}">Từ chối</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection