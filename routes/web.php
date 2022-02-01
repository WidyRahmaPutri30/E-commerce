<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\ProductController as Productuser;
use App\Http\Controllers\CartController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\ProductReviewController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\Admin;
use App\Http\Controllers\Admin\Auth\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::prefix('admin')->group(function(){
    Route::get('/', [Admin\Auth\LoginController::class, 'loginForm']);
    Route::get('/login', [Admin\Auth\LoginController::class, 'loginForm'])->name('admin.login');
    Route::post('/login', [Admin\Auth\LoginController::class, 'login'])->name('admin.login');
    Route::get('/logout', [Admin\Auth\LoginController::class, 'logout'])->name('admin.logout');
});
Auth::routes();

Route::name('admin.')->group(function(){
    Route::group(['prefix' => 'admin'], function(){
        Route::resource('products', ProductController::class);
        Route::resource('orders', OrderController::class);
        Route::resource('users', UserController::class);
        Route::resource('homes', HomeController::class);
    });
});

Route::get('/products', [Productuser::class, 'index'])->name('products.index');
Route::get('/products/{id}', [Productuser::class, 'show'])->name('products.show');
Route::get('/products/image/{imageName}', [Productuser::class, 'image'])->name('products.image');

Route::get('/carts', [CartController::class, 'index'])->name('carts.index');
Route::get('/carts/add/{id}', [CartController::class, 'add'])->name('carts.add');
Route::patch('/carts/update', [CartController::class, 'update'])->name('carts.update');
Route::delete('/carts/remove', [CartController::class, 'remove'])->name('carts.remove');

Route::get('getKota/{id}', function ($id) {
    $kota = App\Models\Kota::where('provinsi_id',$id)->get();
    return response()->json($kota);
});

Route::get('getKecamatan/{id}', function ($id) {
    $kecamatan = App\Models\Kecamatan::where('kota_id',$id)->get();
    return response()->json($kecamatan);
});

Route::get('getKelurahan/{id}', function ($id) {
    $kelurahan = App\Models\Kelurahan::where('kecamatan_id',$id)->get();
    return response()->json($kelurahan);
});

Route::post('products/{id}', [ProductReviewController::class,'store'])->name('products.store');