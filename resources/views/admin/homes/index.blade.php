@extends('layouts.back.app')

@section('content')
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.welcome{
			display: block;
			margin-left: auto;
			margin-right: auto;
			padding-top: 200px;
		}
    </style>
</head>
<body>
    <section class="banner">
    	
	    <div class="banner-carve">
	        <img class="welcome" src="{{ asset('storage/images/Welcome.png') }}" width="600">
	    </div>
	</section>
</body>
</html>
@endsection