@extends('layouts.back.app')

@section('content')
<div class="mt-4 container col-md-8">
  <div class="row justify-content-center">
	    <div class="col">
			<h3 class="text-center">Data Pengguna</h3>
			<br/>
			<div class="table-responsive">
				<table class="table table-secondary table-bordered table-hover">
					<thead>
					    <tr class="text-center">
					    	<th>No</th>
						    <th>Name</th>
						    <th>Email</th>
						    <th>Created at</th>
						    <th>Update at</th>
						    <th colspan="2">Opsi</th>
					    </tr>
					</thead>
					<tbody>
						@foreach($users as $user)
					    <tr>
					      	<td class="text-center">{{ $user->id }}</td>
					      	<td>{{ $user->name }}</td>
							<td>{{ $user->email }}</td>
							<td>{{ $user->created_at }}</td>
							<td>{{ $user->updated_at }}</td>
							<td class="text-center">
								<a class="btn btn-secondary bi bi-pencil-square" href="{{ route('admin.users.edit', $user->id) }}"></a>
							</td>
							<td class="text-center">
								<form action="{{ route('admin.users.destroy', $user->id) }}" method="post">
									@csrf
									<input type="hidden" name="_method" value="DELETE">
									<button class="btn btn-secondary bi bi-trash" type="submit"></button>
								</form>
							</td>
					    </tr>
					    @endforeach
					</tbody>	
				</table>
				<div align="right">
					<a class="btn btn-dark bi bi-clipboard-plus mb-5" href="{{ route('admin.users.create')}}"> Tambah Pengguna</a>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection