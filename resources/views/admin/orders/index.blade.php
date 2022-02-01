@extends('layouts.back.app')

@section('content')
<div class="mt-4 container">
	<div class="row justify-content-center">
		<div class="col">
			<h2 class="text-center">Data Pesanan</h2>
			<br />
			<div class="table-responsive">
				<table class="table table-secondary table-bordered table-hover">
					<thead>
						<tr class="text-center">
							<th>No</th>
							<th>Harga Total</th>
							<th>Status</th>
							<th>Kode Pos</th>
							<th>Alamat Pengiriman</th>
							<th colspan="3">Opsi</th>
						</tr>
					</thead>
					<tbody>
						@foreach($order as $o)
						<tr>
							<td class="text-center">{{ $o->id }}</td>
					      	<td>{{ $o->total_price }}</td>
					      	<td>{{ $o->status }}</td>
							<td>{{ $o->zip_code }}</td>
							<td>{{ $o->shipping_address }}</td>
							
							<td class="text-center">
								<a class="btn btn-secondary bi bi-pencil-square" href="{{ route('admin.orders.edit', $o->id) }}"></a>
							</td>
							<td class="text-center">
								<form action="{{ route('admin.orders.destroy', $o->id) }}" method="post">
									@csrf
									<input type="hidden" name="_method" value="DELETE">
									<button class="btn btn-secondary bi bi-trash" type="submit"></button>
								</form>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
@endsection
