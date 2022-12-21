@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 p-2 mb-2 border-bottom">
        <h1 class="h2"> Create New Post</h1>
    </div>

<div class="row">
    <div class="col-md-8">
        <form method="POST" action="/dashboard/posts">
            @csrf
       <div class="mb-3">
         <label for="title" class="form-label">Title</label>
         <input type="text" class="form-control" id="title" name="title">
       </div>
       <div class="mb-3">
         <label for="slug" class="form-label">Slug</label>
         <input type="text" class="form-control" id="slug" name="slug">
       </div>
       <div class="mb-3">
         <label for="category" class="form-label">Category</label>
         <select class="form-select"  name="category_id">
            @foreach ($categories as $category )

            <option value="{{ $category->id }}">{{ $category->name }}</option>
            @endforeach
        </select>
       </div>
       <button type="submit" class="btn btn-primary">Create Post</button>
     </form>

    </div>
</div>

<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');


    title.addEventListener('change', function(){
    fetch('/dashboard/posts/checkSlug?title=' + title.value)
    .then(response => response.json())
    .then(data => slug.value = data.slug)
});
</script>
@endsection
