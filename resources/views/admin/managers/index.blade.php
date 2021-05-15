@extends('admin.layouts.app')

@section('content')
<div class="course-container">
    <div class="course-heading">
        <a href="#" class="info-title" style=" font-size: 20px;">
            <i class="fas fa-graduation-cap fa-lg fa-fw mr-2 text-gray-400"></i>
            <h5 class="title">Xin Chào: {{ Auth::guard('admin')->user()->fullname }}</h5>
        </a>
    </div>
    <div class="icon_sub">
        <a href="{{ route('admin.manager.add') }}">
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
                <tr class="@if($admin->role == 'Admin') bg-danger @endif">
                    <td>{{ $admin->fullname }}</td>
                    <td>{{ $admin->phone }}</td>
                    <td>{{ $admin->email }}</td>
                    <td>{{ $admin->role }}</td>
                    @if ($admin->role != 'Admin')
                    <td>
                        <a type="button" class="btn btn-warning" href="{{ route('admin.manager.edit', $admin->id) }}">Chỉnh
                            Sửa</a>
                        <a type="submit" data-toggle="modal" data-target="#modalDelete" class="btn btn-danger">Xóa</a>
                    </td>
                    @else 
                    <td></td>
                    @endif
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Bạn có chắc chắn muốn xóa không ?</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <a href="{{ route('admin.manager.delete', $admin->id) }}"><button type="button" class="btn btn-primary">Delete</button></a>
        </div>
      </div>
    </div>
  </div>
@endsection