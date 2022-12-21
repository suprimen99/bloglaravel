@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 p-2 mb-2 border-bottom">
        <h1 class="h2"> welcome Back, {{ auth()->user()->name }}</h1>
    </div>
@endsection
