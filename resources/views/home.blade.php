@extends('layouts.app')

@section('content')

<div class="product-section">
    <div class="section-heading title--separate">
        <i class="fab fa-vuejs"></i>
        Khoá học
    </div>
    <div class="product-list">

        @foreach ($courses as $course)
        <div class="product-item">
            <a href="{{ route('course.show',$course->id) }}"><img src="/storage/{{$course->url_image}}" alt="" class="product-img-style"></a>
            <div class="product-item-body">
                <h3 class="product-heading">
                    <a href="{{ route('course.show',$course->id) }}" class="product-heading-link">
                        {{ $course->name }}
                    </a>
                </h3>
                <p class="product-price">{{ number_format($course->price, 2) }} $</p>
                <p class="product-desc">
                    <i class="fas fa-caret-right"></i>
                    Thời gian: <span class="product-time">{{ $course->total_time }} Tháng</span>
                </p>
                <div class="product-desc">
                    <div class="product-descrip">
                        {{ $course->description }}
                    </div>
                </div>
                <div class="product-btn">
                    <a href="@auth {{ route('register-course-member',$course->id) }} @else {{ route('register-course',$course->id) }} @endauth"><button class="btn-default btn--success">Đăng ký</button></a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
{{-- <div class="new-section">
    <div class="section-heading title--separate ">
        <i class="fab fa-vuejs"></i>
        Tin Tức
    </div>
    <div class="product-list">
        <div class="product-item">
            <img src="/images/spring.jpeg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">Lập trình java và spring framework</h3>
               <p class="product-price">6000000</p>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
        <div class="product-item">
            <img src="/images/php.jpeg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">lập trình php và laravel framework</h3>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
        <div class="product-item">
            <img src="/images/python.jpg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">Lập trình python và django</h3>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
    </div>
</div>
<div class="job-section">
    <div class="section-heading title--separate ">
        <i class="fab fa-vuejs"></i>
        Việc làm
    </div>
    <div class="product-list">
        <div class="product-item">
            <img src="/images/spring.jpeg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">Lập trình java và spring framework</h3>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
        <div class="product-item">
            <img src="/images/php.jpeg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">lập trình php và laravel framework</h3>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
        <div class="product-item">
            <img src="/images/python.jpg" alt="" class="product-img-style">
            <div class="product-item-body">
                <h3 class="product-heading">Lập trình python và django</h3>
                <p class="product-desc">Khai giang: <span class="product-time">12-12-2021</span></p>
                <p class="product-desc">Lich hoc: <span>T2-T4-T6</span></p>
            </div>
        </div>
    </div>
</div> --}}
@endsection