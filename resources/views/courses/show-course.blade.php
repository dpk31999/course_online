@extends('layouts.app')

@section('content')
<div class="note-section">
    <div class="title-section">
        <div class="title-heading ">
            <a href="{{ route('home') }}" class="title-heading-a text-white">
                <i class="fas fa-home icon-padding"></i>
            </a>
        </div>
        
        <div class="title-heading ">
            <a href="@auth {{ route('register-course-member',$course->id) }} @else {{ route('register-course',$course->id) }} @endauth" class="title-heading-a " >
                <i class="fas fa-book-open m-right fa-sm fa-fw mr-2 text-gray-400"></i> Đăng ký ngay</a>
        </div>

        <div class="title-heading ">
            <a href="#" type="button" class="title-heading-a">
                <i class="fas fa-phone m-right fa-sm fa-fw mr-2 text-gray-400"></i>
                Gọi điện</a>
        </div>

        <div class="title-heading ">
            <a href="" class="title-heading-a">
                <i class="fab fa-vuejs"></i>
                Học Phí : {{ $course->price }}
            </a>
        </div>
    </div>
 
    <div class="notification-success text-align">
        <div class="alert-noti">
            <h3>
                <a href="#" class="alert-title">
                    {{ $course->name }}
                </a>
            </h3>
        </div>
    </div>
    <div class="intro-course">
        <div class="desc-main">
            <p>{{ $course->description }}</p>
            <div class="img-paner">
                <img src="/storage/{{ $course->url_image }}" alt="" class="img-paner-item">
                <p class="text-align">Java: Ngôn ngữ lập trình phổ biến nhất hiện nay</p>
            </div>
            <div class="title-intro">
                <div class="intro-item">
                    <p class="head head--color"><i>NẾU BẠN LÀ:</i></p>
                    <p>
                        - Sinh viên ngành CNTT, ĐTVT và đang lơ ngơ về những dòng code<br>
                        - Bạn đã học rất nhiều ngôn ngữ lập trình nhưng vẫn chưa làm được dự án hoàn chỉnh nào
                        thực tế<br>
                        - Bạn đã học giỏi, điểm cao nhưng nhìn code lại cảm thấy hoa mắt, không code được<br>
                        - Bạn lập trình được rồi nhưng lại muốn học thật bài bản, nâng cao bằng những dự án có
                        độ khó cao, phức tạp<br> </p>
                </div>
                <div class="intro-item">
                    <p class="head head--color"><i>NẾU BẠN ĐANG:</i></p>
                    <p>
                        - Là sinh viên năm 1,2,3,4 và đang tìm một trung tâm đào tạo lập trình uy tín, chất
                        lượng để theo học<br>
                        - Là tester, hoặc đang muốn chuyển nghề sang ngành IT<br>
                        - Học tại nhiều trung tâm rồi mà không hiệu quả<br></p>
                </div>
                <div class="intro-item text-align">
                    <p class="head head--note">THÌ ĐÂY LÀ KHÓA HỌC DÀNH CHO BẠN !!!</p>
                </div>
            </div>
        </div>

    </div>



    <div class="row">

    </div>



</div>

<div class="note-section">
    <div class="section-heading title--separate--md">
        <i class="fab fa-vuejs"></i>
        Học Phí & Ưu đãi
    </div>
    <div class="row">
        <div class="col-sm-6">
            <h3 class="note-title m-left color-red">
                <i class="fas fa-search-dollar"></i>
                Học phí & Ưu đãi
            </h3>
            <ul class="note-list">
                <li class="note-item"><strong>Khai giảng:</strong> Thứ 4, ngày 12/5/2021</li>
                <li class="note-item"><strong>Lịch học:</strong> Tối thứ 4, tối chủ nhật từ 19h-21h30</li>
                <li class="note-item"><strong>Thời lượng:</strong> 6 tháng</li>
                <li class="note-item"><strong>Học phí:</strong> 8.200.000 VNĐ (có thể đóng 4 đợt)</li>
                <li class="note-item"><strong>Đóng 1 đợt:</strong> Giảm Đóng 1 đợt giảm 400.000 VNĐ</li>
                <li class="note-item"><strong>Ưu đãi nhóm:</strong> Đăng ký nhóm 2 người giảm 500.000 VNĐ mỗi
                    người</li>
                <li class="note-item"><strong>Học phí đợt đầu:</strong> 2.200.000 VNĐ</li>
            </ul>
        </div>
        <div class="col-sm-5 ">
            <h3 class="note-title m-left color-red">
                <i class="fas fa-coins"></i>
                Cách đóng học phí
            </h3>
            <ul class="note-list">
                <li class="note-item"><strong>Trực tiếp:</strong> Văn phòng tại 154 Phạm Như Xương</li>
                <li class="note-item"><strong>Chuyển khoản Vietcombank Stk:</strong> 004 1000 82 53</li>
                <li class="note-item">Chủ khoản: Tran Van Son</li>
                <li class="note-item"><strong>Nội dung ck:</strong> ho ten-phone-javaspring</li>

            </ul>
        </div>
    </div>
 
</div>
@endsection