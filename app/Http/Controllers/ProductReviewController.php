<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductReview;
use Auth;

class ProductReviewController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store($id)
    {
    	$product = Product::find($id);
    	$attribute = request()->all();
    	$attribute['product_id'] = $product->id;
    	$attribute['user_id'] = Auth::user()->id;

    	ProductReview::create($attribute);

    	return back()->with('success', 'Review have been saved');
    }
}
