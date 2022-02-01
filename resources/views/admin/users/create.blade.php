@extends('layouts.back.app')

@section('content')
	<div class="mt-4 container" id="cntr3">
		<div class="row justify-content-center">
			<div class="col">
				<h3 class="text-center">Tambah User</h3>
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

				<form action="{{ route('admin.users.store')}}" method="POST">
					@csrf
					<div class="mb-3 form-group">
						<label for="name" class="form-label fw-bold">Nama Pengguna</label><br>
						<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nama User">


					</div>
					<div class="mb-3 form-group">
						<label for="email" class="form-label fw-bold">Alamat Email</label><br>
						<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Email">


					</div>
					<div class="mb-3 form-group">
						<label for="password" class="form-label fw-bold">Password</label><br>
						<input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Password">


					</div>
					<div class="form-group mb-4">
                    	<label for="password-confirm" class="form-label fw-bold">Konfirmasi Password</label>
                    	<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Konfirmasi Password">
                	</div>
					<a href="{{ route('admin.users.index') }}" class="btn btn-secondary bi bi-arrow-left-square"> Kembali</a>
					<button type="submit" class="btn btn-dark bi bi-send"> Kirim</button>
				</form>
			</div>
		</div>
	</div>
@endsection