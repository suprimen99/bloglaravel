<?php

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;

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
        "title" => "HOME"
    ]);
});


Route::get('/about', function () {
    return view('about', [
         "title" => "ABOUT",
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
    'title' => 'Post Categories',
    'categories' => Category::all()
    ]);
});


Route::get('/categories/{category:slug}', function(Category $category){
 return view('category', [
    'title' => $category->name,
    'posts' => $category->Posts,
    'category' => $category->name
 ] );
});

Route::get('/authors/{user}', function(User $user){
 return view('posts', [
    'title' => "User Post",
    'posts' => $user->posts
 ] );
});