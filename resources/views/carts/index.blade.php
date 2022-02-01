@extends('layouts.app')

@section('content')
<div class="mt-4 container col-md-8">
	<h2 class="mb-5 text-center" style="color: #48292E; font-family: Tahoma;">Keranjang Belanja</h2>
	<table id="cart" class="table table-hover table-condensed  table-striped">
	  <thead>
		    <tr style="color: #48292E;">
		    	<th style="width: 50%" scope="col">Nama Produk</th>
			    <th style="width: 10%" scope="col">Harga</th>
			    <th style="width: 8%" scope="col">Jumlah</th>
			    <th style="width: 22%" class="text-center" scope="col">Subtotal</th>
			    <th style="width: 10%" scope="col"></th>
		    </tr>
		</thead>
		<tbody>
			<?php $total = 0 ?>

			@if(session('cart'))
			@foreach(session('cart') as $id => $product)

			<?php $total += $product['price'] * $product['quantity'] ?>
		    <tr>
		      	<td data-th="Product">
		      		<div class="row">
		      			<div class="col-sm hidden-xs"><img 
		      				 src="{{ url('storage/images/'.$product['image_url']) }}" 
		      				 width="100" height="100" class="img-responsive"></div>
		      			<div class="col-sm-9">
							<h6 class="nomargin" style="color: #48292E;">{{ $product['name'] }}</h6>
						</div>
		      		</div>
		      	</td>
		      	<td data-th="Price" class="fs-6 fw-bold" style="color: #D2B48C;">Rp.{{ $product['price'] }}</td>
				<td data-th="Quantity">
					<input type="number" value="{{ $product['quantity'] }}" min="1" class="form-control quantity text-center" />
				</td>
				<td data-th="Subtotal" class="text-center fs-6 fw-bold" style="color: #D2B48C;">Rp.{{ $product['price'] * $product['quantity'] }}</td>
				<td class="actions" data-th="">
					<button class="text-light fs-6 btn btn-sm update-cart" data-id="{{ $id }}" style="background-color: #D2B48C">Perbarui</button>
					<button class="text-light fs-6 btn btn-sm mt-2 remove-from-cart" data-id="{{ $id }}" style="background-color: #48292E">Hapus</button>
				</td>
			</tr>
			@endforeach
			@endif
		</tbody>
		<tfoot>
			<tr class="visible-xs">
				<td class="text-center"></td>
			</tr>
			<tr>
				<td>
					<a href="{{ route('products.index') }}" class="btn btn-secondary"><i class="fa fa-angle-left"></i>Lanjutkan Belanja</a>
					<a href="{{ route('admin.orders.create') }}" class="btn btn-dark"><i class="fa fa-angle-left"></i>Lanjut Ke Pembayaran</a>
				</td>
				<td colspan="2" class="hidden-xs"></td>
				<td class="hidden-xs text-center"><strong style="color: #48292E;">Total Rp. {{ $total }}</strong></td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".update-cart").click(function (e) {
			e.preventDefault();
			console.log('aaa');
			var ele = $(this); 

			$.ajax({
				url: '{{ route('carts.update') }}',
				method: "patch",
				data: {_token: '{{ csrf_token() }}', id: ele.attr("data-id"), quantity: ele.parents("tr").find(".quantity").val()},
				success: function (response) {
					window.location.reload();
				}
			});
		});

		$(".remove-from-cart").click(function (e) {
			e.preventDefault();

			var ele = $(this);

			if(confirm("Are you sure")) {
				$.ajax({
					url: '{{ route('carts.remove') }}',
					method: "DELETE",
					data: {_token: '{{ csrf_token() }}', id: ele.attr("data-id")},
					success: function (response) {
					window.location.reload();
					}
				});
			}
		});
	});
</script>
@endsection