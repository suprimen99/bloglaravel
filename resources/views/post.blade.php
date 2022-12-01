@extends('layouts.main')

@section('container')
<h2>{{ $post->title }}</h2>
<p><a href="" class="text-decoration-none">{{ $post->users->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class='text-decoration-none'>{{ $post->category->name }}</a> </p>
{!! $post->body !!}
<br>
<a href="/posts" class="d-block mt-3">Back to post</a>
@endsection

{{-- Post::create([
    'title' => 'Judul ketiga',
    'category_id' => '3',
    'slug' => 'Judul-ketiga',
    'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. In tempore vitae, aliquid inventore voluptatum quia possimus eum error dolore maiores culpa nulla et impedit.',
    'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. In tempore vitae, aliquid inventore voluptatum quia possimus eum error dolore maiores culpa nulla et impedit.Iusto, hic eligendi tenetur tempora sequi, animi dignissimos nulla a illo magnam fugit deleniti suscipit quibusdam ut! Incidunt, dolor? Dignissimos voluptates recusandae error expedita corporis dolor, ab ea vel labore earum unde quae amet nihil, incidunt sed maxime delectus aut aperiam, quisquam accusamus. At quos reprehenderit autem quaerat architecto exercitationem vero blanditiis maiores cumque aut, sunt provident ex quo necessitatibus ratione. Ut officiis natus vel nobis quis, nesciunt veritatis fugiat nemo itaque iste commodi aspernatur, eveniet, unde distinctio doloribus ipsam nostrum provident? Error,harum consectetur sequi, aliquam assumenda velit enim fuga veniam sunt accusamus vitae ducimus recusandae odio cum? Esse iure distinctio possimus, eligendi veniam deleniti nostrum? Dolore dicta quasi obcaecati suscipit libero illum eaque dignissimos laudantium vitae consectetur aspernatur voluptatem, beatae officia saepe. In, culpa!'
]) --}}
