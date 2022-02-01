@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        .banner{
            margin-bottom: 120px;
            position: relative;
            width: 100%;
            height: 100vh;
            background: url(storage/images/Background.png);
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }
        .banner-carve:before{
            content: '';
            position: absolute;
            height: 100vh;
            width: 100%;
            left: 0;
            bottom: 0;
            background: url(storage/images/wave-d.png) 100% 100% no-repeat;
            background-size: contain;
        }
    </style> 
</head>
<body>
    <section class="banner">
        <div class="banner-carve">
            <div class="overlay">
                <img class="welcome" src="{{ asset('storage/images/Welcome.png') }}" width="600">
            </div>
        </div>
    </section>
    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/21.jpg" alt="">
            </figure>
        </div>
    </div>
    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/19.jpg" alt="">
            </figure>
        </div>
    </div>
    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/22.jpg" alt="">
            </figure>
        </div>
    </div>

    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/2.jpg" alt="">
            </figure>
        </div>
    </div>
    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/20.jpg" alt="">
            </figure>
        </div>
    </div>
    <div id="image">
        <div id="zoom-in">
            <figure>
                <img src="storage/images/3.jpg" alt="">
            </figure>
        </div>
    </div>
    <div class="overlay2 text-center d-grid gap-2 col-2 mx-auto">
        <a href="{{ route('products.index') }}" class="btn btn-lg fs-6 fw-bold text-light">Lihat Semua Produk</a>
    </div>
    <section class="content">
        <img class="reward" src="{{ asset('storage/images/Reward.png') }}">
    </section>
    
</body>
</html>
@endsection
