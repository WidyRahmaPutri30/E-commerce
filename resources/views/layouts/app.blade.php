<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Grahita</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{url('plugins/tinymce/jquery.tinymce.min.js')}}"></script>
    <script src="{{url('plugins/tinymce/tinymce.min.js')}}"></script>
    <script>tinymce.init({ selector:'#ckview' });</script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styleproducts.css') }}"> 
    <link rel="stylesheet" type="text/css" href="{{ asset('css/stylehome.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styleshowproducts.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/stylecheckout.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styleshowcheckout.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"> 

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

     <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <style type="text/css">
        html,body{
            height: 100%;
        }
        .nav-link {
            color: #48292E;
        }
        .nav-link:hover {
            color: #D2B48C;
        }
        #app{
            position: relative;
            min-height: 320%;
        }
        footer{
            width: 100%;
            padding-left: 10px;
            background-color: #D2B48C;
            position: absolute;
            bottom: 0px;
        }
    </style>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img src="{{ asset('storage/images/Logo.png') }}" width="105">
                </a>

                <a href="{{ route('home') }}" class="fw-bold nav-link">
                    {{ __('Beranda') }}
                </a>

                <a href="{{ route('products.index') }}" class="fw-bold nav-link">
                    {{ __('Produk') }}
                </a>

                <a href="{{ route('carts.index') }}" class="fw-bold nav-link">
                    <i class="bi bi-cart3 " aria-hidden="true"></i> Cart <span class="badge bg-secondary rounded-pill">{{ @count(session('cart')) }}</span>
                </a>
               
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">


                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="fw-bold nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>

        <footer>
      <div class="container pt-2">
        <div class="row mt-5">
          <div class="col-md text-justify">
            <h5 class="text-light" >Alamat</h5>
          </div>
          <div class="col-md text-justify">
            <h5 class="text-light">Kontak</h5>
          </div>
          <div class="col-md text-justify"></div>
          <div class="col-md text-justify">
            <h5 class="text-light">Newsletter</h5>
          </div>
        </div>
        <div class="row mt-2">
          <div class="col-md text-justify">
            <p class="text-light">Jl. Karya Bakti No.41 Cimahi Utara</p>
          </div>
          <div class="col-md text-justify">
            <h6 class="text-light">Telephone</h6>
          </div>
          <div class="col-md text-justify">
            <h6 class="text-light">Email</h6>
          </div>
          <div class="col-md text-justify">
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Alamat Email Anda">
          </div>  
        </div>
        <div class="row mt-2">
          <div class="col-md text-justify"></div>
          <div class="col-md text-justify">
            <p class="text-light">+62 8976-5432-109</p>
          </div>
          <div class="col-md text-justify">
            <p class="text-light">Grahita@gmail.com</p>
          </div>
          <div class="col-md text-justify">
             <button type="submit" class="btn btn-outline-secondary" id="btn1">Kirim</button>
          </div>  
        </div>
        <div class="row mt-2">
          <div class="col-md text-justify"></div>
          <div class="col-md text-justify"></div>
          <div class="col-md text-justify"></div>
          <div class="col-md text-justify">
           <p class="text-light">© 2022 Grahita Strap Mask</p>
          </div>  
        </div>
      </div>   
    </footer>
    </div>
</body>
</html>
