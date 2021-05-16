<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <h1>Hệ thống course-online xin chào bạn {{ $data['user']->fullname }}!</h1>
    @if ($data['status'] == 'allow')
    <h3>Cảm ơn bạn đã tin tưởng đăng ký khóa học của chúng tôi</h3>
    <h5>Khóa học bạn đăng ký là: {{$data['user']->classes->first()->course->name}}</h5>
    <h5>Lịch học bắt đầu vào {{ $data['user']->classes->first()->start }}, học vào buổi {{ $data['user']->classes->first()->schedule }}</h5>
    <h5>Mật khẩu đăng nhập của bạn là {{ $data['passwordSend'] }}, bạn có thể đổi lại trong hệ thống</h5>
    @else
    <h3>Cảm ơn bạn đã tin tưởng đăng ký khóa học của chúng tôi</h3>
    <h5>Chân thành xin lỗi bạn vì khóa học đã đủ chỗ bạn có thể đăng ký lại khóa học khác!</h5>
    @endif
    
</body>
</html>