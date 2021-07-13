<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'HomeController@index')
    ->name('home');

Route::get('/detail/{slug}', 'DetailController@index')
    ->name('detail');

    //mengirim data untuk memproses data dari checkout, saat user melakukan join now, akan ke checkoutprocess
Route::post('/checkout/{id}', 'CheckoutController@process')
    ->name('checkout_process')
    ->middleware(['auth','verified']);

    //
Route::get('/checkout/{id}', 'CheckoutController@index')
    ->name('checkout')
    ->middleware(['auth','verified']);

    //menambahkan kalo misal kita membutuhkan orang tambahan dalam satu travel butuh 5 orang jadi kita bisa menginvite orng yg pernah join, menambah orng yg g masuk selain kita
Route::post('/checkout/create/{detail_id}', 'CheckoutController@create')
    ->name('checkout-create')
    ->middleware(['auth','verified']);

    //menghapus orang 
Route::get('/checkout/remove/{detail_id}', 'CheckoutController@remove')
    ->name('checkout-remove')
    ->middleware(['auth','verified']);

    //misal user udah yakin dengan data yg dimasukan dia akan mengganti status menjadi success
Route::get('/checkout/confirm/{id}', 'CheckoutController@success')
    ->name('checkout-success')
    ->middleware(['auth','verified']);

// Route::get('/checkout', 'CheckoutController@index')
//     ->name('checkout');

// Route::get('/checkout/success', 'CheckoutController@success')
//     ->name('checkout-success');

//prefix bisa lebih rapih untuk routesnya
//jadi karna prefix admin saat orang ngunjungin url jadi admin/
Route::prefix('admin')
    ->namespace('Admin')
    ->middleware(['auth', 'admin'])
    ->group(function() {
        Route::get('/', 'DashboardController@index')
            ->name('dashboard');
        Route::resource('travel-package', 'TravelPackageController');
        Route::resource('gallery', 'GalleryController');
        Route::resource('transaction', 'TransactionController');

    });
Auth::routes(['verify' => true]);

