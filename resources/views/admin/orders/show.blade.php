@extends('layouts.app')

@section('content')	
<div class="container" id="cntr2">
	<div class="row justify-content-center">
		<div class="mb-3">
			<h5 class="mb-2 fw-bold" style="color: #48292E; font-family: Tahoma;">Alamat Pengiriman</h5>
	        <p class="fs-6">
				{{ $order->shipping_address }}
			</p>
        </div>
        <div class="mb-3">
			<h5 class="mb-2 fw-bold" style="color: #48292E; font-family: Tahoma;">Kode Pos</h5>
	        <p class="fs-6">
				{{ $order->zip_code }}
			</p>
        </div>
        <div>
			<h5 class="mb-2 fw-bold" style="color: #48292E; font-family: Tahoma;">Harga Total</h5>
	        <p class="fs-6">
				Rp. {{ $order->total_price }}
			</p>
        </div>
	</div>
</div>
<br><br>
<div  class="container">
	<div class="row justify-content-center">
		<div class="col">
			<table id="cart" class="table table-hover table-condensed table-striped">
				<thead>
					<tr>
						<th style="width: 50%">Nama Produk</th>
						<th style="width: 10%">Harga</th>
						<th style="width: 8%">Jumlah</th>
						<th style="width: 22%" class="text-center">Subtotal</th>
					</tr>
				</thead>
				<tbody>

					@foreach($order->orderItems as $orderItem)
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-3 hidden-xs">
									<img src="{{ url('storage/images/'.$orderItem->product['image_url']) }}" width="100" height="100" class="img-responsive">
								</div>
								<div class="col-sm-9">
									<a href="{{ route('products.show', ['id' => $orderItem->product->id]) }}" style="text-decoration: none; color: #48292E;">
										<h6 class="nomargin">{{ $orderItem->product->name }}</h6>
									</a>
								</div>
							</div>
						</td>
						<td data-th="Price" style="color: #D2B48C;" class="fs-6 fw-bold">
							Rp. {{ $orderItem->price }}
						</td>
						<td data-th="Quantity" class="text-center">
							{{ $orderItem->quantity }}
						</td>
						<td data-th="Subtotal" class="text-center fs-6 fw-bold" style="color: #D2B48C;">
							Rp. {{ $orderItem->price * $orderItem->quantity }}
						</td>
					</tr>
					@endforeach

				</tbody>
			</table>
		</div>
	</div>
</div>
@endsection