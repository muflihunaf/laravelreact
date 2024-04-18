<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\HomeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/barang', [BarangController::class, 'getBarang']);
Route::get('/generateId', [BarangController::class, 'generateId']);
Route::get('/kategori-barang', [BarangController::class, 'getKategoriBarang']);
Route::get('/satuan-barang', [BarangController::class, 'getSatuanBarang']);
Route::get('/user', [HomeController::class, 'index']);
Route::get('/user/store', [HomeController::class, 'store']);
Route::get('/user/profesi', [HomeController::class, 'data']);
Route::post('/barang/simpan', [BarangController::class, 'simpanBarang']);

