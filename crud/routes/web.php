<?php

use App\Http\Controllers\PostController;
use Illuminate\Http\Request;
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
    return view('Crud.home');
})->name('home');

Route::get('view', function () {
    return view('Crud.view');
})->name('view');

Route::get('findall',[PostController::class, 'show']);


Route::post('post/', [PostController::class, 'getDataFromPost'])->name('post');


