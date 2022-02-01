@extends('layouts.back.app')

@section('content')
<div class="mt-4 container" id="cntr3">
    <div class="row justify-content-center">
        <div class="col">
            <h3 class="text-center">Edit Produk</h3>

            <form method="POST" action="{{ route('admin.products.update', $products->id) }}" enctype="multipart/form-data">
                @csrf
                {{ method_field('PUT') }}
                <div class="mb-3 form-group">
                    <input type="hidden" name="id" value="{{ $products->id }}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Nama Produk</label><br>
                    <input type="text" name="name" class="form-control" value="{{$products->name}}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Harga</label><br>
                    <input type="number" name="price" class="form-control" value="{{$products->price}}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Upload Gambar</label><br>
                    <input type="file" name="image_url" class="form-control" value="{{$products->image_url}}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Deskripsi</label><br>
                    <textarea id="ckview" name="description" value="{{$products->description}}"></textarea>
                </div>
                <a href="{{ route('admin.products.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
                <button type="submit" class="btn btn-dark bi bi-send"> Kirim</button>
            </form>
        </div>
    </div>
</div>
@endsection