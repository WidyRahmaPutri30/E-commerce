@extends('layouts.back.app')

@section('content')
<div class="mt-4 container" id="cntr3">
    <div class="row justify-content-center">
        <div class="col">
            <h3 class="text-center">Edit User</h3>

            <form method="POST" action="{{ route('admin.users.update', $users->id) }}" enctype="multipart/form-data">
                @csrf
                {{ method_field('PUT') }}
                <div class="mb-3 form-group">
                    <input type="hidden" name="id" value="{{ $users->id }}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Nama User</label><br>
                    <input type="text" name="name" class="form-control" value="{{$users->name}}">
                </div>
                <div class="mb-3 form-group">
                    <label class="form-label fw-bold">Email</label><br>
                    <input type="text" name="email" class="form-control" value="{{$users->email}}">
                </div>
                <a href="{{ route('admin.users.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
                <button type="submit" class="btn btn-dark bi bi-send">Kirim</button>
            </form>
        </div>
    </div>
</div>
@endsection