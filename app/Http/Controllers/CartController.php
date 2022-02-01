<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Image;
use Auth;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('carts.index');
    }

    public function add($id)
    {
        $product = Product::find($id);
        if(!$product) {
            abort(404);
        }

        $cart = session()->get('cart');

        //if cart is empty then this the first product
        if(!$cart) {

            $cart = [
                    $id => [
                        "name" => $product->name,
                        "quantity" => 1,
                        "price" => $product->price,
                        "image_url" => $product->image_url
                    ]
            ];

            session()->put('cart',$cart);

            return redirect('/carts')->with('success','Product added to cart successfully!');
        }

        //if cart no empty then check if this product exixt then increament qunatity
        if(isset($cart[$id])) {

            $cart[$id] ['quantity']++;

            session()->put('cart, $cart');

            return redirect('/carts')->with('success','Product added to cart successfully!');

        }

        //if item not exist in cart then add to cart with quantity = 1

        $cart[$id] = [
            "name" => $product->name,
            "quantity" => 1,
            "price" => $product->price,
            "image_url" => $product->image_url
        ];

        session()->put('cart', $cart);

        return redirect('/carts')->with('success','Product added to cart successfully!');
    }

    public function update(Request $request)
    {
        if($request->id and $request->quantity)
        {
            $cart = session()->get('cart');

            $cart[$request->id] ["quantity"] = $request->quantity;

            session()->put('cart', $cart);

            session()->flash('success', 'Cart updated successfully');   
        }
    }

    public function remove(Request $request)
    {
        if($request->id) {

            $cart = session()->get('cart');

            if(isset($cart[$request->id])) {

                unset($cart[$request->id]);

                session()->put('cart', $cart);
            }

            session()->flash('success', 'Product removed successfully');
        }
    }

    public function checkout()
    {
        return view('carts.checkout');
    }
}
