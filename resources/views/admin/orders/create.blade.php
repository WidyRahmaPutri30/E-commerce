@extends('layouts.app')

@section('content')
<div class="container" id="cntr1">
  <div class="row justify-content-center">
    <div class="col mt-4">
      <h3 style="color: #48292E; font-family: Tahoma;">Menambahkan Alamat</h3>

      <br />
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
      <br />
    
      <form action="{{ route('admin.orders.store') }}" method="POST">
        @csrf
        <table class="table table-hover">
          <div class="container2">
            <tr>
              <td for="provinsi">Provinsi</td>
              <td><select class="form-control" name="" id="provinsi">
              <option hidden>Pilih Provinsi</option>
              @foreach ($provinsi as $item)
              <option value="{{ $item->id }}">{{ $item->name }}</option>
              @endforeach
              </select></td>
            </tr>

            <tr>
              <td for="kota">Kota</td>
              <td><select class="form-control" name="kota" id="kota"></select></td>
            </tr>

            <tr>
              <td for="kecamatan">Kecamatan</td>
              <td><select class="form-control" name="kecamatan" id="kecamatan"></select></td>
            </tr>

            <tr>
              <td for="kelurahan">Kelurahan</td>
              <td><select class="form-control" name="kelurahan" id="kelurahan"></select></td>
            </tr>

            <tr>
              <td>Kode Pos</td>
              <td><input type="number" name="zip_code" class="form-control" placeholder="Kode Pos"></td>
            </tr>
          </div>
        </table> 
        <div class="form-group mb-3">
          <label class="mb-2">Alamat Pengiriman</label>
          <textarea name="shipping_address" class="form-control" rows="3" placeholder="Alamat Pengiriman"></textarea>
        </div>
        <br><hr>
        <h3 style="color: #48292E; font-family: Tahoma;" class="mb-4">Checkout</h3>
        <label class="form-label">Opsi Pengiriman</label>
            <select class="form-control">
               <option value="pil1">JNE</option>
               <option value="pil2">J&T</option>
               <option value="pil3">POST</option>
            </select>
          </div>
          <div class="form-group">
            <label class="form-label">Metode Pembayaran</label>
            <select class="form-control">
               <option value="pil1">COD</option>
               <option value="pil2">Transfer Bank</option>
               <option value="pil3">Alfamart</option>
               <option value="pil4">Indomart</option>
            </select>
        <button type="submit" class="btn btn-secondary mt-3">Buat Pesanan</button>
      </form>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function() {
    $('#provinsi').on('change', function() {
      var provinsiID = $(this).val();
      if(provinsiID) {
        $.ajax({
          url: '/getKota/'+provinsiID,
          type: "GET",
          data : {"_token":"{{ csrf_token() }}"},
          dataType: "json",
          success:function(data)
          {
            if(data) {
              $('#kota').empty();
              $('#kota').append('<option hidden>Pilih Kota</option>'); 
              $.each(data, function(key, kota) {
                $('select[name="kota"]').append('<option value="'+ kota.id +'">' + kota.name+ '</option>');
              });
            }else{
              $('#kota').empty();
            }
          }
        });
      }else{
        $('#kota').empty();
      }
    });

    $('#kota').on('change', function() {
      var kotaID = $(this).val();
      console.log(kotaID)
      if(kotaID) {
        $.ajax({
          url: '/getKecamatan/'+kotaID,
          type: "GET",
          data : {"_token":"{{ csrf_token() }}"},
          dataType: "json",
          success:function(data)
          {
            if(data){
              $("#kecamatan").empty();
              $('#kecamatan').append('<option hidden>Pilih Kecamatan</option>'); 
              $.each(data, function(key, kecamatan){
                $('select[name="kecamatan"]').append('<option value="'+ kecamatan.id +'">' + kecamatan.name+ '</option>');
              });
            }else{
              $('#kecamatan').empty();
            }
          }
        });
      }else{
        $('#kecamatan').empty();
      }
    });
    
    $('#kecamatan').on('change', function() {
      var kecamatanID = $(this).val();
      console.log(kecamatanID)
      if(kecamatanID) {
        $.ajax({
          url: '/getKelurahan/'+kecamatanID,
          type: "GET",
          data : {"_token":"{{ csrf_token() }}"},
          dataType: "json",
          success:function(data)
          {
            if(data){
              $("#kelurahan").empty();
              $('#kelurahan').append('<option hidden>Pilih Kelurahan</option>');  
              $.each(data, function(key, kelurahan){
                $('select[name="kelurahan"]').append('<option value="'+ kelurahan.id +'">' + kelurahan.name+ '</option>');
              });
            }else{
              $('#kelurahan').empty();
            }
          }
        });
      }else{
        $('#kelurahan').empty();
      }
    });
    });
  </script>
</div>
@endsection