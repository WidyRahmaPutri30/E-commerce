@extends('layouts.back.app')

@section('content')
<div class="mt-4 container" id="cntr3">
    <div class="row justify-content-center">
        <div class="col">
            <h3>Detail Produk</h3>
                @csrf
                {{ method_field('PUT') }}
                <div class="card-body">
                    <h5 class="card-title mb-4">{{ $product->name }}</h5>
                    <div class="col-md-3" id="zoom-in">
                        <figure>
                            <img src="{{ url('storage/images/'.$product->image_url) }}" class="img-thumbnail">
                        </figure>
                    </div>
                    <p class="card-text fw-bold">Deskripsi: </p>
                    <p class="mb-2">{!! $product->description !!}</p>
                    <p class="card-text fw-bold">Harga: </p>
                    <p class="mb-2">Rp. {{ $product->price }}</p>
                </div>
                <div class="card-body">
                    <a href="{{ route('admin.products.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
                    <a href="{{ route('admin.products.edit', $product->id) }}" class="btn btn-dark bi bi-pencil-square"> Edit Produk</a>
                </div>
        </div>
    </div>
</div>
@endsection