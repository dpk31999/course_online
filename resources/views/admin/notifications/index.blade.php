@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading mb-5">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div class="row justify-content-between">
        <div class="col-md-4">
            <a href="{{ route('admin.notification.general.add') }}"><button class="btn btn-primary">Tạo thông báo chung</button></a>
        </div>
        <div class="col-md-4">
            <a href="{{ route('admin.notification.private.add') }}"><button class="btn btn-primary">Tạo thông báo riêng</button></a>
        </div>
    </div>
    <div class="info-table-course">
        <div class="text-primary">Thông báo chung</div>
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Người tạo</th>
                    <th>Lớp</th>
                    <th>Tiêu đề</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($note_generals as $note)
                <tr>
                    <td>{{ $note->admin->fullname }}</td>
                    <td>{{ $note->class->schedule }} {{ $note->class->start }}</td>
                    <td>{{ $note->title }}</td>
                    <td>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.notification.general.update', $note->id) }}">Chỉnh
                            Sửa</a>
                        <a type="submit" href="{{ route('admin.notification.general.delete', $note->id) }}" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <div class="info-table-course mt-5">
        <div class="text-primary">Thông báo riêng</div>
        <table class="table table-st">
            <thead class="color__theme">
                <tr>
                    <th>Người tạo</th>
                    <th>Email người nhận</th>
                    <th>Tiêu đề</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($note_privates as $note)
                <tr>
                    <td>{{ $note->admin->fullname }}</td>
                    <td>{{ $note->user->email }}</td>
                    <td>{{ $note->title }}</td>
                    <td>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.notification.private.edit', $note->id) }}">Chỉnh
                            Sửa</a>
                        <a type="submit" href="{{ route('admin.notification.private.delete', $note->id) }}" class="btn btn-danger">Xóa</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection