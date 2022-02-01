@extends('layouts.back.app')

@section('content')
	<div class="mt-4 container" id="cntr3">
		<div class="row justify-content-center">
			<div class="col">
				<h3 class="text-center">Tambah Produk</h3>
				<br/>
				@if(count($errors))
				<div class="form-group">
					<div class="alert alert-danger">
						<ul>
							@foreach($errors->all() as $error)
							<li>{{$error}}</li>
							@endforeach
						</ul>
					</div>
				</div>
				@endif
				<br/>

				<form action="{{ route('admin.products.store')}}" method="post">
					@csrf
					<div class="mb-3 form-group">
						<label class="form-label fw-bold">Nama Produk</label><br>
						<input type="text" name="name" required="required" class="form-control" placeholder="Nama Produk">
					</div>
					<div class="mb-3 form-group">
						<label class="form-label fw-bold">Harga</label><br>
						<input type="number" name="price" required="required" class="form-control" placeholder="Harga">
					</div>
					<div class="mb-3 form-group">
						<label class="form-label fw-bold">Upload Gambar</label><br>
						<input type="file" name="image_url" class="form-control">
					</div>
					<div class="mb-3 form-group">
						<label class="form-label fw-bold">Deskripsi</label><br>
						<textarea id="ckview" name="description" placeholder="Deskripsi"></textarea> 
					</div>
					<a href="{{ route('admin.products.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
					<button type="submit" class="btn btn-dark bi bi-send"> Kirim</button>
				</form>
			</div>
		</div>
	</div>
@endsection