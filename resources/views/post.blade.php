@extends('layouts.main')

@section('container')
<div class="container">
<div class="row justify-content-center">
    <div class="col-md-8">
        <h1 class="mb-3">{{ $post->title }}</h1>
        <p>by. <a href="/posts?author={{$post->user->username}}" class="text-decoration-none">{{ $post->user->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class='text-decoration-none'>{{ $post->category->name }}</a> </p>
<img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mb-3">
        <article my-3 fs-4>
{!! $post->body !!}
        </article>

<br>
<a href="/posts" class="d-block mt-3">Back to post</a>
    </div>
</div>
</div>


@endsection


