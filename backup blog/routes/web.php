<?php

use App\Http\Controllers\BlogPostCategoryController;
use App\Http\Controllers\BlogPostCommentController;
use App\Http\Controllers\blogPostController;
use App\Http\Controllers\CategoryTypeController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Auth::routes();

//Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/index', [App\Http\Controllers\HomeController::class, 'index'])->name('index');
Route::get('/', [blogPostController::class, 'show'])->name('blog.welcome');

Route::get('about', function () {
    return view('others.about');
})->name('others.about');

Route::group(['prefix' => 'admin'], function () {
    Route::get('category', [CategoryTypeController::class, 'showInCategoryPage'])->name('admin.category');
    Route::get('blog-post', [CategoryTypeController::class, 'show'])->name('admin.blog-post');
    Route::post('store', [blogPostController::class, 'store'])->name('create');
    Route::post('store/category', [CategoryTypeController::class, 'store'])->name('create-category');
    Route::post('update/category', [CategoryTypeController::class, 'update'])->name('update-category');
    Route::get('update/category/{id}/{name}', function ($id, $name) {
        return view('admin.category-update', ['id' => $id, 'name' => $name]);
    })->name('update-category-page');
    Route::post('Delete', [CategoryTypeController::class, 'delete'])->name('delete');
});

Route::post('create-comment', [BlogPostCommentController::class, 'store'])->name('create-comment');

Route::get('signup', function () {
    return view('blog.signup');
})->name('signUp');

Route::post('create-user', [UserController::class, 'store'])->name('create-user');

Route::get('contact', function () {
    return view('others.contact');
})->name('others.contact');

Route::get('article/{id}', [blogPostController::class, 'showById'],)->name('blog.article');



Route::get('category/{id}', [BlogPostCategoryController::class, 'sortBlogPostByCategory'])->name('category');

Route::post('search', [blogPostController::class, 'show'])->name('search');


Route::get('login', function () {
    return view('auth.login');
})->name('login');
Route::get('register', function () {
    return view('auth.register');
})->name('register');







Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
