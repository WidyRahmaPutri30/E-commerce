@extends('layouts.back.app')

@section('content')
<div class="mt-4 container" id="cntr3">
    <div class="row justify-content-center">
        <div class="col">
            <h3 class="text-center">Edit Order</h3>
            <form method="POST" action="{{ route('admin.orders.update', $orders->id) }}" enctype="multipart/form-data">
                @csrf
                {{ method_field('PUT') }}
                <div class="mb-3 form-group">
                    <input type="hidden" name="id" value="{{ $orders->id }}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Status</label><br>
                    <input type="text" name="status" class="form-control" value="{{$orders->status}}">
                </div>
                <a href="{{ route('admin.orders.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
                <button type="submit" class="btn btn-dark bi bi-send"> Kirim</button>
            </form>
        </div>
    </div>
</div>
@endsection