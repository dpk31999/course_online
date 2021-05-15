@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: Admin</h5>
        </a>
    </div>
    <div class="icon_sub">
        <a href="{{ route('admin.course.add') }}">
            <i class="fas fa-plus-circle fa-lg fa-fw mr-2 color__admin "></i>
        </a>

    </div>
    <div class="info-table-course">
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Tên</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Quyền hạn</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($admins as $admin)
                <tr>
                    <td>{{ $admin->fullname }}</td>
                    <td>{{ $admin->phone }}</td>
                    <td>{{ $admin->email }}</td>
                    <td>{{ $admin->role }}</td>
                    @if ($admin->role != 'Admin')
                    <td>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.manager.edit', $admin->id) }}">chỉnh
                            Sửa</a>
                        <a type="submit" class="btn btn-danger">Xóa</a>
                    </td>
                    @endif
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection