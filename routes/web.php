<?php

use App\Http\Controllers\DashboardPostController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

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
    return view('home', [
        "title" => "HOME",
        "active" => 'home'
    ]);
});


Route::get('/about', function () {
    return view('about', [
         "title" => "ABOUT",
         "active" => 'about',
        "name" => "Muhamad Supriyanto",
        "email" => "Suprianto@gmail.com",
        "image" => "image.PNG "
    ]);
});


Route::get('/posts', [PostController::class, 'index']);


// halaman single post
Route::get('posts/{post:slug}', [PostController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
    "title" => 'Post Categories',
    "active"=>'Categories',
    "categories" => Category::all()
    ]);
});


Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::Post('/login', [LoginController::class, 'authenticate']);
Route::Post('/logout', [LoginController::class, 'logout']);


Route::get('/register', [RegisterController::class,'index'])->middleware('guest');
Route::post('/register', [RegisterController::class,'store']);


Route::get('/dashboard',function(){
 return view('dashboard.index');
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');