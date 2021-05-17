<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
        integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <link rel="stylesheet" href="/css/style.css">
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        .row {

            margin: 40px 0 40px 40px;
            font-size: 16px;
        }

        th {
            padding: 0 10px;
        }

        .title--separate--md::after {
            content: "";
            position: absolute;
            display: block;
            border-bottom: 3px solid #008657;
            width: 20rem;
            bottom: -4px;
            border-radius: 3px;
        }

        th:nth-child(2) {
            color: rgba(0, 0, 0, 0.6);
            cursor: pointer;
        }

        .m-left {
            margin-left: 50px !important;
            margin-bottom: 10px;
        }

        .color-red {
            color: #d33;
        }

        .note-item::marker {
            color: #d33;
        }

        strong {
            font-weight: 500;
        }

        .btn--red {
            padding: 4px 20px;
            color: #d33;
            background-color: white;
            text-decoration: none;
            border: 1px solid #d33;
            border-radius: 4px;
        }

        .btn--red:hover {
            text-decoration: none;
            background-color: #d33;
            color: #fff;
        }

        .m-right {
            margin-right: 5px;
        }
    </style>
</head>

<body>
    <div id="app">
        <!-- Header -->
        <header class="headers">
            <nav class="header__nav">
                <ul class="navbar-list">
                    <div class="logo-brand">
                        <a href=""><img src="/images/logo.png" alt="" class="logo-img"></a>
                    </div>
                </ul>
                <ul class="navbar-list">
                    <a href="{{route('home')}}" class="navbar-item-link">
                        <li class="navbar-item navbar-item--separate">
                            Trang chủ
                        </li>
                    </a>
                    <a href="" class="navbar-item-link">
                        <li class="navbar-item navbar-item--separate">
                            Giới thiệu
                        </li>
                    </a>
                    <a href="" class="navbar-item-link">
                        <li class="navbar-item navbar-item--separate">
                            Khóa học
                        </li>
                    </a>
                    <a href="" class="navbar-item-link">
                        <li class="navbar-item navbar-item--separate">
                            Tin tức
                        </li>
                    </a>
                    <a href="" class="navbar-item-link">
                        <li class="navbar-item">
                            Việc làm
                        </li>
                    </a>

                </ul>
                <ul class="navbar-list">
                    @guest
                    <li class="navbar-item">
                        <i class="fas fa-user"></i>
                        <a href="{{route('login')}}" class="navbar-item-link "> Đăng nhập</a>
                    </li>
                    @else
                    <li class="navbar-item dropdown">
                        <a class="nav-link dropdown-toggle text-dark" href="#" id="userDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="{{ Auth::guard('web')->user()->url_avatar }}" width="50px" height="50px"
                                class="rounded-circle profile-photo mr-1" />
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="userDropdown">

                            <a style="cursor: pointer" class="dropdown-item" href="{{ route('student.home') }}">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a style="cursor: pointer" class="dropdown-item"
                                onclick="event.preventDefault(); document.querySelector('#logout-form').submit();"
                                data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                            <form id="logout-form" action="{{route('logout')}}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                    @endguest
                    <li class="navbar-item">
                        <div class="search-btn">
                            <i class="fas fa-search search-icon"></i>
                        </div>
                    </li>
                </ul>
            </nav>
        </header>
        <!-- End Header -->

        <!-- Slider -->
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/images/slider/slider1.jpg" alt="">
                </div>
                <div class="carousel-item">
                    <img src="/images/slider/slider2.jpg" alt="">
                </div>
                <!-- <div class="carousel-item">
                    <img src="./img/slider/slider3.jpg" alt="New York">
                </div> -->
            </div>


        </div>

        <!-- End Slider -->

        <!-- Container -->

        <div class="container">
            @yield('content')
        </div>

        <!-- Footer -->

        <footer class="footer-section">
            <div class="footer-list">
                <div class="footer-item">
                    <img src="/images//logo.png" alt="" class="footer-img">
                    <ul class="footer-item-body">
                        <li class="footer-sub">Mã số thế: 04016231</li>
                        <li class="footer-sub">Trụ sở: 154 Phạm Như Xương, Đà Nẵng</li>
                        <li class="footer-sub">Cơ sở: 263 Tiểu La, Đà Nẵng</li>
                        <li class="footer-sub">Cơ sở: 52 Trần Phú, Huế</li>
                        <li class="footer-sub">Hotline: 0777710005</li>
                    </ul>
                </div>
                <div class="footer-item">
                    <div class="footer-item-title footer-title--separate">Khóa học</div>
                    <ul class="footer-item-body">

                        <li class="footer-sub-class">Java và spring framework</li>
                        <li class="footer-sub-class">PHP và laravel framwork</li>
                        <li class="footer-sub-class">C#</li>
                        <li class="footer-sub-class">Python</li>

                    </ul>
                </div>
                <div class="footer-item">
                    <div class="footer-item-title footer-title--separate">Liên hệ</div>
                    <ul class="footer-item-icon">
                        <li class="footer-sub-icon"><i class="fab fa-facebook"></i></li>
                        <li class="footer-sub-icon"><i class="fab fa-instagram"></i></li>
                        <li class="footer-sub-icon"><i class="far fa-envelope"></i></li>

                    </ul>
                </div>
            </div>
            <div class="text-center p-3" style="background-color: #008657; font-size: 1.5rem; color: #fff;">
                © 2021 Copyright:
                <a class="footer-link" href="#" style="color: #fff;">HDTC Team</a>
            </div>
        </footer>
        <!-- End Footer -->
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>