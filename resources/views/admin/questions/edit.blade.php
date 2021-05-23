@extends('admin.layouts.app')

@section('content')
<div class="info-container">
    <div class="info-heading">
        <a href="#" class="info-title">
            <h5 class="title">Sửa câu hỏi</h5>
        </a>
    </div>
    <hr class="sidebar-divider my-0" style="background-color: #4268D6;">
    <form method="POST" action="{{ route('admin.question.update',$question->id) }}" style="font-size: 16px;margin-top: 20px;">
        @csrf
        <div class="form-group">
            <label for="name">Câu hỏi: </label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name"  value="{{ $question->name }}" required autocomplete="name" required autofocus>

            @error('name')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="answer_1">Câu trả lời 1: </label>
            <input type="text" name="answer_1" class="form-control @error('answer_1') is-invalid @enderror" id="answer_1"  value="{{ $question->answer_1 }}" required autocomplete="answer_1" required autofocus>

            @error('answer_1')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="answer_2">Câu trả lời 2: </label>
            <input type="text" name="answer_2" class="form-control @error('answer_2') is-invalid @enderror" id="answer_2"  value="{{ $question->answer_2 }}" required autocomplete="answer_2" required autofocus>

            @error('answer_2')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="answer_3">Câu trả lời 3: </label>
            <input type="text" name="answer_3" class="form-control @error('answer_3') is-invalid @enderror" id="answer_3"  value="{{ $question->answer_3 }}" required autocomplete="answer_3" required autofocus>

            @error('answer_3')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="answer_4">Câu trả lời 4: </label>
            <input type="text" name="answer_4" class="form-control @error('answer_4') is-invalid @enderror" id="answer_4"  value="{{ $question->answer_4 }}" required autocomplete="answer_4" required autofocus>

            @error('answer_4')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label for="answer_right">Câu trả lời đúng: </label>
            <select name="answer_right" id="answer_right" style="margin: auto" class="form-control">
                <option value="answer_1" {{ $question->answer_right == $question->answer_1 ? 'selected' : '' }}>Câu trả lời 1</option>
                <option value="answer_2" {{ $question->answer_right == $question->answer_2 ? 'selected' : '' }}>Câu trả lời 2</option>
                <option value="answer_3" {{ $question->answer_right == $question->answer_3 ? 'selected' : '' }}>Câu trả lời 3</option>
                <option value="answer_4" {{ $question->answer_right == $question->answer_4 ? 'selected' : '' }}>Câu trả lời 4</option>
            </select>
        </div>
        <div class="form-group">
            <label for="course">Chọn khóa học: </label>
            <select name="course" id="course" style="margin: auto" class="form-control">
                @foreach ($courses as $course)
                    <option value="{{ $course->id }}" {{ $question->exam->course->id == $course->id ? 'selected' : '' }}>{{ $course->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="exam">Chọn loại bài tập: </label>
            <select name="exam" id="exam" style="margin: auto" class="form-control">
                <option value="Kiểm tra giữa khóa" {{ $question->exam->name == 'Kiểm tra giữa khóa' ? 'selected' : '' }}>Kiểm tra giữa khóa</option>
                <option value="Kiểm tra cuối khóa" {{ $question->exam->name == 'Kiểm tra cuối khóa' ? 'selected' : '' }}>Kiểm tra cuối khóa</option>
            </select>
        </div>
        <div class="form-group">
            <label for="level">Loại câu hỏi: </label>
            <select name="level" id="level" style="margin: auto" class="form-control">
                <option value="Easy" {{ $question->level == 'Easy' ? 'selected' : '' }}>Dễ</option>
                <option value="Medium" {{ $question->level == 'Medium' ? 'selected' : '' }}>Trung bình</option>
                <option value="Hard" {{ $question->level == 'Hard' ? 'selected' : '' }}>Khó</option>
            </select>
        </div>
        <button type="submit" class="btn__default btn--add center__btn">Sửa</button>
    </form>
</div>
@endsection