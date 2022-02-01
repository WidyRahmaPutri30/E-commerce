@extends('layouts.app')

@section('content')
<div class="mt-4 container col-md-8">
	<h1 class="text-center" style="color: #48292E; font-family: Tahoma">  P r o d u k  </h1>
	<div class="row mt-4">
		<div class="col-md-4 offset-md-8">
			<div class="form-group">
				<select id="order_field" class="form-control">
					<option value="" disabled selected>Urutkan Berdasarkan</option>
					<option value="best_seller">Best Seller</option>
					<option value="terbaik">Terbaik (Berdasarkan Rating)</option>
					<option value="termurah">Termurah</option>
					<option value="termahal">Termahal</option>
					<option value="terbaru">Terbaru</option>
				</select>
			</div>
		</div>
	</div>

	<div id="product-list">
		@foreach($products as $idx => $product)

			@if ($idx == 0 || $idx % 3 == 0)
				<div class="row mt-4">
			@endif

			<div class="col" id="image">
				<div class="card" id="zoom-in">
					<figure>
						<img src="{{ url('storage/images/'.$product->image_url) }}" class="img-thumbnail">
					</figure>
					<div class="card-body text-center">
						<h5 class="card-title">
							<a href="{{ route('products.show', ['id' => $product->id]) }}" style="text-decoration: none; color: #48292E;">
								{{ $product->name }}
							</a>
						</h5>
						<p class="fs-5 fw-bold card-text" style="color: #D2B48C;">
							Rp. {{ $product->price }}
						</p>
						<div class="overlay3 text-center">
							<a href="{{ route('carts.add', ['id' => $product->id]) }}" class="mt-2 d-grid gap-2 btn fs-6 fw-bold text-light">Beli Sekarang</a>
						</div>
					</div>
				</div>
			</div>

			@if ($idx > 0 && $idx % 3 == 2)
				</div>
			@endif
		@endforeach
	</div>
</div>

<!-- Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
		$('#order_field').change(function(){
			// window.location.href = '/products?order_by=' + $(this).val();
			$.ajax({
				type: 'GET',
				url: '/products',
				data: {
					order_by: $(this).val(),
				},
				dataType:'json',
				success: function(data) {
					var products = '';
					$.each(data, function(idx, product) {
						if(idx == 0 || idx % 3 == 0) {
							products += '<div class="row mt-4">';
						}

						products +=
							'<div class="col" id="image">' +
								'<div class="card" id="zoom-in">' +
									'<figure>' +
										'<img src="/storage/images/' + product.image_url + '" class="img-thumbnail">' +
									'</figure>' +
								'<div class="card-body text-center">' +
									'<h5 class="card-title text-center">' +
								       '<a href="/products/' + product.id + '" style="text-decoration: none; color: #48292E;">' +
								         product.name +
								        '</a>' +
								     '</h5>' +
									'<p class="fs-5 fw-bold card-text" style="color: #D2B48C;">' +
										'Rp. ' + product.price +
									'</p>' +
								'<div class="overlay3 text-center">' +
									'<a href="{{ route('carts.add', ['id' => $product->id]) }}" class="mt-2 d-grid gap-2 btn fs-6 fw-bold text-light">Beli Sekarang</a>' +
								'</div>' +
							'</div>' +
						'</div>' +
					'</div>';
						if(idx > 0 && idx % 3 == 2) {
							products += '</div>';
						}
					});

					//update element
					$('#product-list').html(products);
				},
				error: function(data) {
					alert('Unable to handle request');
				}
			});
		});
	});
</script>
@endsection
