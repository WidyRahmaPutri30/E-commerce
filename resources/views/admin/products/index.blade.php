@extends('layouts.back.app')

@section('content')
<div class="mt-4 container">
  <div class="row justify-content-center">
	    <div class="col">
			<h3 class="text-center mt-4" >Data Produk</h3>
			<br/>
			<div class="table-responsive">
				<table class="table table-secondary table-bordered table-hover">
					<thead>
					    <tr class="text-center">
					    	<th>No</th>
						    <th>Name</th>
						    <th>Price</th>
						    <th>Created at</th>
						    <th colspan="3">Opsi</th>
					    </tr>
					</thead>
					<tbody>
						@foreach($products as $product)
					    <tr>
					      	<td class="text-center">{{ $product['id'] }}</td>
					      	<td>{{ $product['name'] }}</td>
							<td>Rp. {{ $product['price'] }}</td>
							<td>{{ $product['created_at'] }}</td>
							<td class="text-center">
								<a class="btn btn-secondary bi bi-arrow-up-left-square" href="{{ route('admin.products.show', $product->id) }}"></a>
							</td>
							<td class="text-center">
								<a class="btn btn-secondary bi bi-pencil-square" href="{{ route('admin.products.edit', $product->id) }}"></a>
							</td>
							<td class="text-center">
								<form action="{{ route('admin.products.destroy', $product->id) }}" method="post">
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
					<a class="btn btn-dark bi bi-clipboard-plus mb-5" href="{{ route('admin.products.create')}}"> Tambah Produk</a>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection