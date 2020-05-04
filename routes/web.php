<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/penduduk','penduduks@openPenduduk')->name('show.penduduk');
Route::post('/penduduk','penduduks@insertPenduduk')->name('add.penduduk');
Route::post('/penduduk/update','penduduks@updatePenduduk')->name('update.penduduk');
Route::get('/penduduk/delete/{id}','penduduks@deletePenduduk')->name('delete.penduduk');
